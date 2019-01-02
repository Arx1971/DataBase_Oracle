--1 Identify all Space Shuttle missions by the Falcon Heavy. Display the mission start date, end date, launch site, landing site and mission objectives.
SELECT mission_launch_date as START_DATE, mission_land_date as END_DATE, mission_site_name as LAUNCH_SITE, mission_landing_site_name as LANDING_SITE,mission_objective_name as OBJECTIVES
FROM mission_launch_info, mission_land_info, mission_site_info, mission_landing_site, mission_info,space_ship_info, mission_objective_info
WHERE space_ship_info.space_ship_name = 'Falcon Heavy' and mission_info.space_ship_id = space_ship_info.space_ship_id
AND mission_info.mission_objective_id = mission_objective_info.mission_objective_id
AND mission_info.mission_id = mission_launch_info.mission_id
AND mission_info.mission_id = mission_land_info.mission_id
AND mission_launch_info.mission_site_id = mission_site_info.mission_site_id
AND mission_land_info.mission_landing_site_id = mission_landing_site.mission_landing_site_id

-- 2 Identify missions by astronaut. Display three columns: Astronaut name, number of missions and total mileage. Display one row for each astronaut. Display names in alphabetical order.
SELECT astronaut_fname as first_name, astronaut_lname as last_name, COUNT(astronaut_fname) as number_of_mission, SUM(mission_distance) as total_mileage
FROM astronaut_info, mission_info, mission_details
WHERE astronaut_info.astronaut_id = mission_details.astronaut_id
AND mission_info.mission_id = mission_details.mission_id
GROUP BY(astronaut_fname, astronaut_lname)
ORDER BY astronaut_fname ASC

--3 Identify all missions to MOON launched from Centre Intermees in thelast 18 years Display the spaceship name, start and end date of mission and objectives. Order the output by date.
SELECT space_ship_name, mission_launch_date as start_date, mission_land_date as end_date, mission_objective_name as mission_objectives
FROM mission_launch_info, mission_land_info, mission_site_info, mission_landing_site, mission_info, space_ship_info, mission_objective_info
WHERE mission_destination = 'MOON' AND mission_site_name ='Centre Intermees'
AND mission_info.mission_objective_id = mission_objective_info.mission_objective_id
AND mission_info.mission_id = mission_launch_info.mission_id
AND mission_info.mission_id = mission_land_info.mission_id
AND mission_launch_info.mission_site_id = mission_site_info.mission_site_id
AND mission_land_info.mission_landing_site_id = mission_landing_site.mission_landing_site_id
AND mission_launch_date > '02-02-2000'
AND mission_info.space_ship_id = space_ship_info.space_ship_id
ORDER BY mission_launch_date;

--4 Identify the missions by launch site since 2003. Display four columns: Launchsite name, site country, site state and number of missions. Display one row for each launch site.
SELECT mission_site_name as LAUNCH_SITE_NAME, mission_site_state as LAUNCH_SITE_STATE, mission_site_country as LAUNCH_SITE_COUNTRY, count(mission_site_name) as NUMBER_OF_MISSION
FROM mission_site_info, mission_launch_info, mission_info 
WHERE mission_launch_info.mission_site_id = mission_site_info.mission_site_id
AND mission_launch_info.mission_id = mission_info.mission_id
AND mission_launch_date > '01-02-2003'
GROUP BY (mission_site_name, mission_site_state, mission_site_country)

--5 Reassign astronaut Viktor Adanasyev from Space Shuttle mission STS-13 to STS-107. Identify the SQL required to implement.
UPDATE mission_details
SET mission_id = (SELECT mission_id FROM mission_info WHERE mission_name = 'STS-107')
WHERE mission_details_id = (
SELECT mission_details_id
FROM mission_info, mission_details, astronaut_info
WHERE mission_info.mission_id =  mission_details.mission_id
AND mission_details.astronaut_id = astronaut_info.astronaut_id
AND astronaut_fname = 'Viktor'
AND astronaut_lname = 'Adanasyev' 
AND mission_name = 'STS-13') 

--6 Identify astronauts who have a physics degree. Use a nested select to answer this question.
SELECT astronaut_fname, astronaut_lname, astronaut_dob, astronaut_country, astronaut_gender
FROM astronaut_info
WHERE astronaut_id IN
(SELECT astronaut_id
FROM astronaut_education_info, degree_info
WHERE degree_name = 'Physics'
AND degree_info.degree_id = astronaut_education_info.degree_id)

--7 Cancel Space Shuttle mission STS-7. Identify the SQL to implement.



--8 Identify astronauts without missions in the last 14 years. Display the astronaut name and country. Use a nested select to answer this question.
SELECT astronaut_fname as FIRST_NAME, astronaut_lname as LAST_NAME, astronaut_country as COUNTRY
FROM mission_info, astronaut_info, mission_details
WHERE mission_info.mission_id NOT IN
(SELECT mission_info.mission_id
FROM mission_info, mission_launch_info
WHERE mission_info.mission_id = mission_launch_info.mission_id
AND mission_launch_date > '02-feb-2003'
)
AND mission_info.mission_id = mission_details.mission_id
AND astronaut_info.astronaut_id = mission_details.astronaut_id
GROUP BY(astronaut_fname, astronaut_lname, astronaut_country)


--14

CREATE OR REPLACE TRIGGER trigger_astronaut_info 
		BEFORE DELETE OR INSERT OR UPDATE ON ASTRONAUT_INFO
		FOR EACH ROW BEGIN raise_application_error(-20001,'Table cannot be 			modified') ;
		end;


--15
CREATE OR REPLACE TRIGGER trigger_mission_info 
	BEFORE DELETE OR UPDATE ON mission_info
	FOR EACH ROW BEGIN raise_application_error(-20001,'Table cannot be modified') ;
	end;

AND astronaut_info.astronaut_id = mission_details.astronaut_id
GROUP BY(astronaut_fname, astronaut_lname, astronaut_country)
