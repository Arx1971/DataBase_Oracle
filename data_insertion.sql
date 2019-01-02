--astronaut_info
insert into astronaut_info(astronaut_id, astronaut_fname,  astronaut_lname, astronaut_dob, astronaut_country, astronaut_gender)
values (counter.nextval, 'Joseph', 'Acaba', '12/12/1967', 'USA', 'M')
insert into astronaut_info(astronaut_id, astronaut_fname,  astronaut_lname, astronaut_dob, astronaut_country, astronaut_gender)
values (counter.nextval, 'Loren', 'Acton', '09/12/1936', 'USA', 'M')
insert into astronaut_info(astronaut_id, astronaut_fname,  astronaut_lname, astronaut_dob, astronaut_country, astronaut_gender)
values (counter.nextval, 'Mike', 'Adams', '09/10/1948', 'USA', 'M')
insert into astronaut_info(astronaut_id, astronaut_fname,  astronaut_lname, astronaut_dob, astronaut_country, astronaut_gender)
values (counter.nextval, 'Viktor', 'Adanasyev', '09/07/1951', 'RUSSIA', 'M')
insert into astronaut_info(astronaut_id, astronaut_fname,  astronaut_lname, astronaut_dob, astronaut_country, astronaut_gender)
values (counter.nextval, 'Aleksandr', 'Aleksandrov', '09/07/1952', 'BULGARIA', 'M')
insert into astronaut_info(astronaut_id, astronaut_fname,  astronaut_lname, astronaut_dob, astronaut_country, astronaut_gender)
values (counter.nextval, 'Sally', 'Ride', '12/12/1951', 'USA', 'F')
insert into astronaut_info(astronaut_id, astronaut_fname,  astronaut_lname, astronaut_dob, astronaut_country, astronaut_gender)
values (counter.nextval, 'Valentina', 'Tereshkova', '12/12/1951', 'Russia', 'F')
insert into astronaut_info(astronaut_id, astronaut_fname,  astronaut_lname, astronaut_dob, astronaut_country, astronaut_gender)
values (counter.nextval, 'Eileen', 'Collins', '12/12/1956', 'USA', 'F')
insert into astronaut_info(astronaut_id, astronaut_fname,  astronaut_lname, astronaut_dob, astronaut_country, astronaut_gender)
values (counter.nextval, 'Judith', 'Resnik', '12/12/1949', 'USA', 'F')
insert into astronaut_info(astronaut_id, astronaut_fname,  astronaut_lname, astronaut_dob, astronaut_country, astronaut_gender)
values (counter.nextval, 'Shannon', 'Lucid', '12/2/1943', 'USA', 'F')
insert into astronaut_info(astronaut_id, astronaut_fname,  astronaut_lname, astronaut_dob, astronaut_country, astronaut_gender)
VALUES (90, 'Shannon', 'Lucid', '12/2/1943', 'USA', 'F')

--astronaut_child_info
insert into ASTRONAUT_CHILD_INFO(astronaut_child_id, astronaut_child_name, astronaut_id)
values (counter.nextval, 'Joseph Bacaba', 1)
insert into ASTRONAUT_CHILD_INFO(astronaut_child_id, astronaut_child_name, astronaut_id)
values (2, 'Joseph Cacaba', 1)
insert into ASTRONAUT_CHILD_INFO(astronaut_child_id, astronaut_child_name, astronaut_id)
values (3, 'Loren Acton', 2)
insert into ASTRONAUT_CHILD_INFO(astronaut_child_id, astronaut_child_name, astronaut_id)
values (4, 'Aleksandr Bleeksandrov Jr',	5)
insert into ASTRONAUT_CHILD_INFO(astronaut_child_id, astronaut_child_name, astronaut_id)
values (5, 'Aleksandr Cleeksandrov Jr',	5)
insert into ASTRONAUT_CHILD_INFO(astronaut_child_id, astronaut_child_name, astronaut_id)
values (6, 'Valentina Pareshkova', 7)
insert into ASTRONAUT_CHILD_INFO(astronaut_child_id, astronaut_child_name, astronaut_id)
values (7, 'Eileen Farel', 9)

-- astronaut_spouse_id
insert into ASTRONAUT_SPOUSE_INFO(ASTRONAUT_SPOUSE_ID, ASTRONAUT_SPOUSE_NAME, astronaut_id)
values (1, 'Merry Copper', 3)
insert into ASTRONAUT_SPOUSE_INFO(ASTRONAUT_SPOUSE_ID, ASTRONAUT_SPOUSE_NAME, astronaut_id)
values (2, 'Johanna Smith', 4)
insert into ASTRONAUT_SPOUSE_INFO(ASTRONAUT_SPOUSE_ID, ASTRONAUT_SPOUSE_NAME, astronaut_id)
values (3, 'Alexendra Chevanov', 5)
insert into ASTRONAUT_SPOUSE_INFO(ASTRONAUT_SPOUSE_ID, ASTRONAUT_SPOUSE_NAME, astronaut_id)
values (4, 'Mila Kunis', 1)
insert into ASTRONAUT_SPOUSE_INFO(ASTRONAUT_SPOUSE_ID, ASTRONAUT_SPOUSE_NAME, astronaut_id)
values (5, 'Aston Kutcher', 10)
insert into ASTRONAUT_SPOUSE_INFO(ASTRONAUT_SPOUSE_ID, ASTRONAUT_SPOUSE_NAME, astronaut_id)
values (6, 'Tom Cruse', 8)
insert into ASTRONAUT_SPOUSE_INFO(ASTRONAUT_SPOUSE_ID, ASTRONAUT_SPOUSE_NAME, astronaut_id)
values (7, 'Bradly Coper', 6)

-- space ship info
insert into space_ship_info(space_ship_id, space_ship_name)
values (1, 'Orion')
insert into space_ship_info(space_ship_id, space_ship_name)
values (2, 'SpaceX Dragon')
insert into space_ship_info(space_ship_id, space_ship_name)
values (3, 'Falcon Heavy')
insert into space_ship_info(space_ship_id, space_ship_name)
values (4, 'Endeavour')
insert into space_ship_info(space_ship_id, space_ship_name)
values (5, 'Ranger - 1')

-- mission info
insert into MISSION_INFO(MISSION_ID, MISSION_NAME, MISSION_DESTINATION, MISSION_OBJECTIVE_ID, MISSION_DISTANCE, SPACE_SHIP_ID)
values (1, 'STS-41', 'PLATO', 2, 32423.98, 3);
insert into MISSION_INFO(MISSION_ID, MISSION_NAME, MISSION_DESTINATION, MISSION_OBJECTIVE_ID, MISSION_DISTANCE, SPACE_SHIP_ID)
values (2, 'STS-7', 'MOON', 3, 238900.324, 3);
insert into MISSION_INFO(MISSION_ID, MISSION_NAME, MISSION_DESTINATION, MISSION_OBJECTIVE_ID, MISSION_DISTANCE, SPACE_SHIP_ID)
values (5, 'STS-107', 'MOON', 3, 238900.324, 5);
insert into MISSION_INFO(MISSION_ID, MISSION_NAME, MISSION_DESTINATION, MISSION_OBJECTIVE_ID, MISSION_DISTANCE, SPACE_SHIP_ID)
values (4, 'STS-132', 'MOON', 3, 238900.324, 4);
insert into MISSION_INFO(MISSION_ID, MISSION_NAME, MISSION_DESTINATION, MISSION_OBJECTIVE_ID, MISSION_DISTANCE, SPACE_SHIP_ID)
values (6, 'STS-133', 'MOON', 3, 238900.324, 1);
insert into MISSION_INFO(MISSION_ID, MISSION_NAME, MISSION_DESTINATION, MISSION_OBJECTIVE_ID, MISSION_DISTANCE, SPACE_SHIP_ID)
values (7, 'STS-13', 'MOON', 3, 238900.324, 3);
insert into MISSION_INFO(MISSION_ID, MISSION_NAME, MISSION_DESTINATION, MISSION_OBJECTIVE_ID, MISSION_DISTANCE, SPACE_SHIP_ID)
values (3, 'STS-23', 'MARS', 1, 2382900.324, 3);
insert into MISSION_INFO(MISSION_ID, MISSION_NAME, MISSION_DESTINATION, MISSION_OBJECTIVE_ID, MISSION_DISTANCE, SPACE_SHIP_ID)
values (8, 'MEGATRON', 'CYBERTRON', 4, 3382900.324, 3);

-- mission site info
insert into mission_site_info(mission_site_id, mission_site_name, mission_site_city, mission_site_state, mission_site_country)
values (1,'Cape Canaveral Air Force Station', 'Vrevard County', 'Florida', 'USA')
insert into mission_site_info(mission_site_id, mission_site_name, mission_site_city, mission_site_state, mission_site_country)
values (2,'Vandenberg Air Force Base', 'Vanderberg', 'California', 'USA')
insert into mission_site_info(mission_site_id, mission_site_name, mission_site_city, mission_site_state, mission_site_country)
values (3,'Wallops Island Flight Facility', 'Wallops', 'Virginia', 'USA')
insert into mission_site_info(mission_site_id, mission_site_name, mission_site_city, mission_site_state, mission_site_country)
values (4,'OTRAG Lauch Center', 'Zaire', 'Zaire', 'Congo')
insert into mission_site_info(mission_site_id, mission_site_name, mission_site_city, mission_site_state, mission_site_country)
values (5,'Centre Intermees', 'Hammaguir', 'Hammaguir', 'Algeria')

-- mission land info
insert into mission_land_info(mission_land_id, mission_id, mission_land_date, mission_landing_site_id)
values (1,3,'12/3/2010', 1)
insert into mission_land_info(mission_land_id, mission_id, mission_land_date, mission_landing_site_id)
values (2,2,'2/3/2009', 2)
insert into mission_land_info(mission_land_id, mission_id, mission_land_date, mission_landing_site_id)
values (3,1,'2/3/2003', 1)
insert into mission_land_info(mission_land_id, mission_id, mission_land_date, mission_landing_site_id)
values (4,4,'2/3/2006', 2)
insert into mission_land_info(mission_land_id, mission_id, mission_land_date, mission_landing_site_id)
values (5,6,'2/3/2005', 4)
insert into mission_land_info(mission_land_id, mission_id, mission_land_date, mission_landing_site_id)
values (6,7,'2/3/2014', 5)
insert into mission_land_info(mission_land_id, mission_id, mission_land_date, mission_landing_site_id)
values (7,8,'2/3/2005', 2)
insert into mission_land_info(mission_land_id, mission_id, mission_land_date, mission_landing_site_id)
values (8,5,'2/3/2006', 3)
insert into mission_land_info(mission_land_id, mission_id, mission_land_date, mission_landing_site_id)
values (9,10,'2/3/2018', 4)
insert into mission_land_info(mission_land_id, mission_id, mission_land_date, mission_landing_site_id)
values (10,9,'2/3/2017', 2)

-- mission launch info
insert into MISSION_LAUNCH_INFO(MISSION_LAUNCH_ID, MISSION_ID, MISSION_LAUNCH_DATE, MISSION_SITE_ID)
values(1,3,'2-JAN-2009',2);
insert into MISSION_LAUNCH_INFO(MISSION_LAUNCH_ID, MISSION_ID, MISSION_LAUNCH_DATE, MISSION_SITE_ID)
values(2,2,'2-JAN-2007',1);
insert into MISSION_LAUNCH_INFO(MISSION_LAUNCH_ID, MISSION_ID, MISSION_LAUNCH_DATE, MISSION_SITE_ID)
values(3,1,'2-JAN-2000',3);
insert into MISSION_LAUNCH_INFO(MISSION_LAUNCH_ID, MISSION_ID, MISSION_LAUNCH_DATE, MISSION_SITE_ID)
values(4,4,'2-JAN-2003',3);
insert into MISSION_LAUNCH_INFO(MISSION_LAUNCH_ID, MISSION_ID, MISSION_LAUNCH_DATE, MISSION_SITE_ID)
values(5,6,'2-JAN-2004',5);
insert into MISSION_LAUNCH_INFO(MISSION_LAUNCH_ID, MISSION_ID, MISSION_LAUNCH_DATE, MISSION_SITE_ID)
values(6,7,'2-JAN-2013',1);
insert into MISSION_LAUNCH_INFO(MISSION_LAUNCH_ID, MISSION_ID, MISSION_LAUNCH_DATE, MISSION_SITE_ID)
values(7,8,'2-JAN-2004',3);
insert into MISSION_LAUNCH_INFO(MISSION_LAUNCH_ID, MISSION_ID, MISSION_LAUNCH_DATE, MISSION_SITE_ID)
values(8,5,'2-JAN-2005',2);
insert into MISSION_LAUNCH_INFO(MISSION_LAUNCH_ID, MISSION_ID, MISSION_LAUNCH_DATE, MISSION_SITE_ID)
values(9,8,'2-02-2005',2);

-- astronaut_education_info
insert into astronaut_education_info(astronaut_education_id, university_id, degree_id, astronaut_id)
values(1, 1, 1, 2);
insert into astronaut_education_info(astronaut_education_id, university_id, degree_id, astronaut_id)
values(2, 2, 2, 1);
insert into astronaut_education_info(astronaut_education_id, university_id, degree_id, astronaut_id)
values(3, 3, 1, 6);
insert into astronaut_education_info(astronaut_education_id, university_id, degree_id, astronaut_id)
values(4, 4, 1, 5);
insert into astronaut_education_info(astronaut_education_id, university_id, degree_id, astronaut_id)
values(5, 5, 3, 4);
insert into astronaut_education_info(astronaut_education_id, university_id, degree_id, astronaut_id)
values(6, 6, 4, 3);
insert into astronaut_education_info(astronaut_education_id, university_id, degree_id, astronaut_id)
values(7, 7, 2, 10);
insert into astronaut_education_info(astronaut_education_id, university_id, degree_id, astronaut_id)
values(8, 8, 2, 9);
insert into astronaut_education_info(astronaut_education_id, university_id, degree_id, astronaut_id)
values(9, 8, 2, 7);
insert into astronaut_education_info(astronaut_education_id, university_id, degree_id, astronaut_id)
values(10, 9, 2, 8);

-- mission_details_info
insert into mission_details(mission_details_id, mission_id, astronaut_id)
values(1,3,4)
insert into mission_details(mission_details_id, mission_id, astronaut_id)
values(2,3,6)
insert into mission_details(mission_details_id, mission_id, astronaut_id)
values(3,4,1)
insert into mission_details(mission_details_id, mission_id, astronaut_id)
values(4,5,3)
insert into mission_details(mission_details_id, mission_id, astronaut_id)
values(5,2,5)
insert into mission_details(mission_details_id, mission_id, astronaut_id)
values(6,5,2)
insert into mission_details(mission_details_id, mission_id, astronaut_id)
values(7,1,4)
insert into mission_details(mission_details_id, mission_id, astronaut_id)
values(8,2,7)
insert into mission_details(mission_details_id, mission_id, astronaut_id)
values(9,1,4)
insert into mission_details(mission_details_id, mission_id, astronaut_id)
values(10,3,7)

-- mission_landing_site
insert into mission_landing_site(mission_landing_site_id, mission_landing_site_name, MISSION_LANDING_SITE_CITY,MISSION_LANDING_SITE_STATE,MISSION_LANDING_SITE_COUNTRY)
values (1,'Cape Canaveral Air Force Station', 'Vrevard County', 'Florida', 'USA')
insert into mission_landing_site(mission_landing_site_id, mission_landing_site_name, MISSION_LANDING_SITE_CITY,MISSION_LANDING_SITE_STATE,MISSION_LANDING_SITE_COUNTRY)
values (2,'Vandenberg Air Force Base', 'Vanderberg', 'California', 'USA')
insert into mission_landing_site(mission_landing_site_id, mission_landing_site_name, MISSION_LANDING_SITE_CITY,MISSION_LANDING_SITE_STATE,MISSION_LANDING_SITE_COUNTRY)
values (3,'Wallops Island Flight Facility', 'Wallops', 'Virginia', 'USA')
insert into mission_landing_site(mission_landing_site_id, mission_landing_site_name, MISSION_LANDING_SITE_CITY,MISSION_LANDING_SITE_STATE,MISSION_LANDING_SITE_COUNTRY)
values (4,'OTRAG Lauch Center', 'Zaire', 'Zaire', 'Congo')
insert into mission_landing_site(mission_landing_site_id, mission_landing_site_name, MISSION_LANDING_SITE_CITY,MISSION_LANDING_SITE_STATE,MISSION_LANDING_SITE_COUNTRY)
values (5,'Centre Intermees', 'Hammaguir', 'Hammaguir', 'Algeria')

-- mission_objective_info
INSERT INTO mission_objective_info (mission_objective_id, mission_objective_name)
VALUES (1, 'DISCOVERY')
INSERT INTO mission_objective_info (mission_objective_id, mission_objective_name)
VALUES (2, 'RESEARCH');
INSERT INTO mission_objective_info (mission_objective_id, mission_objective_name)
VALUES (3, 'SATELLITE INSTALLATION');
INSERT INTO mission_objective_info (mission_objective_id, mission_objective_name)
VALUES (4, 'AIRBORNE');

-- Degree_info

INSERT INTO degree_info(degree_id, degree_name)
VALUES (1, 'Computer Science');
INSERT INTO degree_info(degree_id, degree_name)
VALUES (2, 'Physics');
INSERT INTO degree_info(degree_id, degree_name)
VALUES (3, 'Mathematics');
INSERT INTO degree_info(degree_id, degree_name)
VALUES (4, 'Chemical Engineering');

-- university info
INSERT INTO university_info(university_id, university_name)
VALUES (1, 'University of Arizona');
INSERT INTO university_info(university_id, university_name)
VALUES (2, 'Binghamton University');
INSERT INTO university_info(university_id, university_name)
VALUES (3, 'Harvard University');
INSERT INTO university_info(university_id, university_name)
VALUES (4, 'Princeton University');
INSERT INTO university_info(university_id, university_name)
VALUES (5, 'Rugers University');
INSERT INTO university_info(university_id, university_name)
VALUES (6, 'Stony Brook University');
INSERT INTO university_info(university_id, university_name)
VALUES (7, 'Fordam University');
INSERT INTO university_info(university_id, university_name)
VALUES (8, 'Wyoming University');
INSERT INTO university_info(university_id, university_name)
VALUES (9, 'Stanford University');


