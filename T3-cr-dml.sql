--*****PLEASE ENTER YOUR DETAILS BELOW*****
--T3-cr-dml.sql

-- ITO Assignment 2 Task 3

--Student ID: 36705691
--Student Name: Dylan Collaga

/* Comments for your marker:




*/

-- ENSURE that your SQL code is formatted and has a semicolon (;)
-- at the end of every statement. When marked this will be run as
-- a script.

DROP SEQUENCE comp_seq;
DROP SEQUENCE entry_seq;
DROP SEQUENCE team_seq;

DELETE FROM competitor
WHERE comp_no >= 100;

DELETE FROM entry
WHERE entry_id >= 100;

DELETE FROM team
WHERE team_id >= 100;

/*
(a)
*/

CREATE SEQUENCE comp_seq START WITH 100 INCREMENT BY 1;
CREATE SEQUENCE entry_seq START WITH 100 INCREMENT BY 1;
CREATE SEQUENCE team_seq START WITH 100 INCREMENT BY 1;

COMMIT;

/*
(b)
*/

INSERT INTO entry VALUES ( entry_seq.NEXTVAL,
                           NULL,
                           NULL,
                           (
	                           SELECT char_name
	                           FROM charity
	                           WHERE upper(char_name) = upper('Amnesty International')
                           ),
                           (
	                           SELECT comp_no
	                           FROM competitor
	                           WHERE upper(comp_fname
	                                          || ' ' || comp_lname) = upper('Brigid Radcliffe')
	                                 AND comp_phone = 1234567890
                           ),
                           (
	                           SELECT carn_date
	                           FROM carnival
	                           WHERE upper(carn_name) = upper('CR Summer Series Melbourne 2024')
                           ),
                           '21K',
                           NULL );

COMMIT;

/*
(c)
*/

INSERT INTO team VALUES ( team_seq.NEXTVAL,
                          'Kenya Speedstars',
                          (
	                          SELECT carn_date
	                          FROM carnival
	                          WHERE upper(carn_name) = upper('CR Summer Series Melbourne 2024')
                          ),
                          1,
                          'Beyond Blue',
                          (
	                          SELECT comp_no
	                          FROM competitor
	                          WHERE upper(comp_fname
	                                         || ' ' || comp_lname) = upper('Brigid Radcliffe')
	                                AND comp_phone = 1234567890
                          ) );
UPDATE entry
SET eventtype_code = '10K',
    team_id = (
		   SELECT team_id
		   FROM team
		   WHERE team_name = 'Kenya Speedstars'
	   )
WHERE comp_no = (
	   SELECT comp_no
	   FROM competitor
	   WHERE upper(comp_fname
	                  || ' ' || comp_lname) = upper('Brigid Radcliffe')
	         AND comp_phone = 1234567890
   )
      AND carn_date = (
	SELECT carn_date
	FROM carnival
	WHERE upper(carn_name) = upper('CR Summer Series Melbourne 2024')
);

COMMIT;

/*
(d) 
*/

DELETE FROM entry
WHERE comp_no = (
	   SELECT comp_no
	   FROM competitor
	   WHERE upper(comp_fname
	                  || ' ' || comp_lname) = upper('Brigid Radcliffe')
	         AND comp_phone = 1234567890
   )
      AND carn_date = (
	SELECT carn_date
	FROM carnival
	WHERE upper(carn_name) = upper('CR Summer Series Melbourne 2024')
)
      AND eventtype_code = '10K';

DELETE FROM team
WHERE upper(team_name) = upper('Kenya Speedstars')
      AND carn_date = (
	SELECT carn_date
	FROM carnival
	WHERE upper(carn_name) = upper('CR Summer Series Melbourne 2024')
);

COMMIT;