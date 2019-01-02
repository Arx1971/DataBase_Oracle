CREATE TABLE astronaut_info (
    astronaut_id        NUMBER PRIMARY KEY,
    astronaut_fname     VARCHAR2(20) NOT NULL,
    astronaut_lname     VARCHAR2(20) NOT NULL,
    astronaut_dob       DATE NOT NULL,
    astronaut_country   VARCHAR2(20) NOT NULL,
    astronaut_gender    CHAR(1)
)

CREATE TABLE astronaut_spouse_info (
    astronaut_spouse_id     NUMBER PRIMARY KEY,
    astronaut_spouse_name   VARCHAR(30) NOT NULL,
    astronaut_id            NUMBER,
    FOREIGN KEY ( astronaut_id )
        REFERENCES astronaut_info ( astronaut_id )
)

CREATE TABLE astronaut_child_info (
    astronaut_child_id     NUMBER PRIMARY KEY,
    astronaut_child_name   VARCHAR(30) NOT NULL,
    astronaut_id           NUMBER,
    FOREIGN KEY ( astronaut_id )
        REFERENCES astronaut_info ( astronaut_id )
)

CREATE TABLE space_ship_info (
    space_ship_id     NUMBER PRIMARY KEY,
    space_ship_name   VARCHAR(30)
)

CREATE TABLE mission_info (
    mission_id      NUMBER PRIMARY KEY,
    mission_name    VARCHAR(30) NOT NULL,
    mission_destination    VARCHAR2(30) not null,
    mission_objective_id NUMBER,
    mission_distance float not null,
    space_ship_id NUMBER,

    FOREIGN KEY ( space_ship_id )
        REFERENCES space_ship_info ( space_ship_id ),

    FOREIGN KEY ( mission_objective_id )
        REFERENCES mission_objective_info ( mission_objective_id )
     ON DELETE CASCADE
)

CREATE TABLE astronaut_education_info (
    astronaut_education_id      NUMBER PRIMARY KEY,
    university_id NUMBER,
    degree_id NUMBER,
    astronaut_id                NUMBER,
    FOREIGN KEY ( astronaut_id )
        REFERENCES astronaut_info ( astronaut_id ),
    FOREIGN KEY ( degree_id )
        REFERENCES degree_info ( degree_id )
        ON DELETE CASCADE,
    FOREIGN KEY ( university_id )
        REFERENCES university_info ( university_id )
        ON DELETE CASCADE
)

CREATE TABLE mission_objective_info (
    mission_objective_id     NUMBER PRIMARY KEY,
    mission_objective_name   VARCHAR(30) NOT NULL
)

CREATE TABLE mission_launch_info (
    mission_launch_id             NUMBER PRIMARY KEY,
    mission_id                    NUMBER,
    mission_launch_date           DATE NOT NULL,
    mission_site_id number	not null,
    FOREIGN KEY ( mission_site_id )
        REFERENCES mission_site_info ( mission_site_id ),
    FOREIGN KEY ( mission_id )
        REFERENCES mission_info ( mission_id )
            ON DELETE CASCADE
)

CREATE TABLE mission_land_info (
    mission_land_id             NUMBER PRIMARY KEY,
    mission_id                    NUMBER,
    mission_land_date           DATE NOT NULL,
    mission_landing_site_id number,
    FOREIGN KEY ( mission_landing_site_id )
        REFERENCES mission_landing_site( mission_landing_site_id ),
	FOREIGN KEY ( mission_id )
        REFERENCES mission_info ( mission_id )
            ON DELETE CASCADE
);

CREATE TABLE mission_details (
    mission_details_id   NUMBER PRIMARY KEY,
    mission_id           NUMBER,
    astronaut_id         NUMBER,
    FOREIGN KEY ( astronaut_id )
        REFERENCES astronaut_info ( astronaut_id ),
	FOREIGN KEY ( mission_id )
        REFERENCES mission_info ( mission_id )
            ON DELETE CASCADE
)

CREATE TABLE mission_site_info (
    mission_site_id        NUMBER PRIMARY KEY,
    mission_site_name      VARCHAR(40) NOT NULL,
    mission_site_city      VARCHAR(40) NOT NULL,
    mission_site_state     VARCHAR(10),
    mission_site_country   VARCHAR(20) NOT NULL
)

CREATE TABLE mission_landing_site (
    mission_landing_site_id        NUMBER PRIMARY KEY,
    mission_landing_site_name      VARCHAR2(50) NOT NULL,
    mission_landing_site_city      VARCHAR2(50) NOT NULL,
    mission_landing_site_state     VARCHAR2(50) NOT NULL,
    mission_landing_site_country   VARCHAR2(50) NOT NULL
)

-- Degree_info

CREATE TABLE degree_info(
    degree_id NUMBER PRIMARY KEY,
    degree_name VARCHAR2(30) NOT NULL
)
-- university_info

CREATE TABLE university_info(
    university_id NUMBER PRIMARY KEY,
    university_name VARCHAR2(30) NOT NULL
)

-- SEQUENCE
CREATE SEQUENCE counter 
    START WITH 1 
    INCREMENT BY 1 
    MAXVALUE 100 
    MINVALUE 1 
    CACHE 100 
    ORDER;



	
-- casecade
ALTER TABLE mission_launch_info
    ADD CONSTRAINT mission_id FOREIGN KEY ( mission_id )
        REFERENCES mission_info ( mission_id )
            ON DELETE CASCADE;

ALTER TABLE mission_land_info DROP CONSTRAINT mission_id_2;

ALTER TABLE mission_land_info
    ADD CONSTRAINT mission_id_fk FOREIGN KEY ( mission_id )
        REFERENCES mission_info ( mission_id )
            ON DELETE CASCADE;
			
ALTER TABLE mission_details
    ADD CONSTRAINT mission_id_5 FOREIGN KEY ( mission_id )
        REFERENCES mission_info ( mission_id )
            ON DELETE CASCADE

			
select mission_name, astronaut_fname, astronaut_lname
from mission_info, mission_details, astronaut_info
where astronaut_info.astronaut_id = mission_details.astronaut_id
and mission_info.mission_id = mission_details.mission_id