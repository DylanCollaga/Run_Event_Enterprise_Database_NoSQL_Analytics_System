--*****PLEASE ENTER YOUR DETAILS BELOW*****
--T2-cr-insert.sql

-- ITO Assignment 2 Task 2

--Student ID: 36705691
--Student Name: Dylan Collaga

/* Comments for your marker:

TEAM and ENTRY tables form a circular foreign key relationship.
Because each table depends on each other, ENTRY rows must be inserted with team_id set as NULL.
After TEAM rows are inserted, ENTRY values are updated with the correct team_id values.

*/


-- ENSURE that your SQL code is formatted and has a semicolon (;)
-- at the end of every statement. When marked this will be run as
-- a script.


-- Insert into ENTRY

INSERT INTO entry VALUES ( 1,
                           TO_DATE('19/09/2021 08:04:43','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('19/09/2021 08:32:12','dd/mm/yyyy hh24:mi:ss'),
                           'RSPCA',
                           1,
                           TO_DATE('19/09/2021 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '5K',
                           NULL );
INSERT INTO entry VALUES ( 2,
                           TO_DATE('19/09/2021 08:04:43','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('19/09/2021 08:31:32','dd/mm/yyyy hh24:mi:ss'),
                           'RSPCA',
                           3,
                           TO_DATE('19/09/2021 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '5K',
                           NULL );
INSERT INTO entry VALUES ( 3,
                           TO_DATE('19/09/2021 08:04:43','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('19/09/2021 08:28:12','dd/mm/yyyy hh24:mi:ss'),
                           'RSPCA',
                           4,
                           TO_DATE('19/09/2021 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '5K',
                           NULL );

INSERT INTO entry VALUES ( 4,
                           TO_DATE('19/09/2021 07:10:51','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('19/09/2021 08:03:03','dd/mm/yyyy hh24:mi:ss'),
                           'Beyond Blue',
                           6,
                           TO_DATE('19/09/2021 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '10K',
                           NULL );
INSERT INTO entry VALUES ( 5,
                           TO_DATE('19/09/2021 07:10:51','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('19/09/2021 08:10:30','dd/mm/yyyy hh24:mi:ss'),
                           'Beyond Blue',
                           8,
                           TO_DATE('19/09/2021 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '10K',
                           NULL );
INSERT INTO entry VALUES ( 6,
                           TO_DATE('19/09/2021 07:10:51','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('19/09/2021 08:01:12','dd/mm/yyyy hh24:mi:ss'),
                           'Beyond Blue',
                           9,
                           TO_DATE('19/09/2021 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '10K',
                           NULL );

INSERT INTO entry VALUES ( 7,
                           TO_DATE('01/02/2023 07:07:14','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('01/02/2023 09:36:31','dd/mm/yyyy hh24:mi:ss'),
                           'Salvation Army',
                           12,
                           TO_DATE('01/02/2023 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '21K',
                           NULL );
INSERT INTO entry VALUES ( 8,
                           TO_DATE('01/02/2023 07:07:14','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('01/02/2023 09:23:04','dd/mm/yyyy hh24:mi:ss'),
                           'Salvation Army',
                           7,
                           TO_DATE('01/02/2023 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '21K',
                           NULL );
INSERT INTO entry VALUES ( 9,
                           TO_DATE('01/02/2023 07:07:14','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('01/02/2023 09:51:03','dd/mm/yyyy hh24:mi:ss'),
                           'RSPCA',
                           2,
                           TO_DATE('01/02/2023 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '21K',
                           NULL );

INSERT INTO entry VALUES ( 10,
                           TO_DATE('01/02/2023 07:07:14','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('01/02/2023 09:36:31','dd/mm/yyyy hh24:mi:ss'),
                           'Salvation Army',
                           1,
                           TO_DATE('01/02/2023 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '21K',
                           NULL );
INSERT INTO entry VALUES ( 11,
                           TO_DATE('01/02/2023 10:10:32','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('01/02/2023 10:23:43','dd/mm/yyyy hh24:mi:ss'),
                           'Amnesty International',
                           11,
                           TO_DATE('01/02/2023 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '3K',
                           NULL );
INSERT INTO entry VALUES ( 12,
                           TO_DATE('01/02/2023 10:10:32','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('01/02/2023 10:22:12','dd/mm/yyyy hh24:mi:ss'),
                           'Amnesty International',
                           19,
                           TO_DATE('01/02/2023 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '3K',
                           NULL );
INSERT INTO entry VALUES ( 13,
                           TO_DATE('01/02/2023 10:10:32','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('01/02/2023 10:35:09','dd/mm/yyyy hh24:mi:ss'),
                           'Amnesty International',
                           5,
                           TO_DATE('01/02/2023 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '3K',
                           NULL );

INSERT INTO entry VALUES ( 14,
                           TO_DATE('06/04/2023 06:32:01','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('06/04/2023 10:58:12','dd/mm/yyyy hh24:mi:ss'),
                           'RSPCA',
                           12,
                           TO_DATE('06/04/2023 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '42K',
                           NULL );
INSERT INTO entry VALUES ( 15,
                           TO_DATE('06/04/2023 06:32:01','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('06/04/2023 10:58:13','dd/mm/yyyy hh24:mi:ss'),
                           'RSPCA',
                           7,
                           TO_DATE('06/04/2023 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '42K',
                           NULL );

INSERT INTO entry VALUES ( 16,
                           TO_DATE('06/04/2023 07:35:41','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('06/04/2023 10:13:05','dd/mm/yyyy hh24:mi:ss'),
                           'Beyond Blue',
                           9,
                           TO_DATE('06/04/2023 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '21K',
                           NULL );
INSERT INTO entry VALUES ( 17,
                           TO_DATE('06/04/2023 07:35:41','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('06/04/2023 10:15:56','dd/mm/yyyy hh24:mi:ss'),
                           'Beyond Blue',
                           10,
                           TO_DATE('06/04/2023 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '21K',
                           NULL );
INSERT INTO entry VALUES ( 18,
                           TO_DATE('06/04/2023 07:35:41','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('06/04/2023 10:12:23','dd/mm/yyyy hh24:mi:ss'),
                           'Salvation Army',
                           8,
                           TO_DATE('06/04/2023 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '21K',
                           NULL );

INSERT INTO entry VALUES ( 19,
                           TO_DATE('06/04/2023 08:42:32','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('06/04/2023 09:15:24','dd/mm/yyyy hh24:mi:ss'),
                           'Amnesty International',
                           13,
                           TO_DATE('06/04/2023 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '5K',
                           NULL );
INSERT INTO entry VALUES ( 20,
                           TO_DATE('06/04/2023 08:42:32','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('06/04/2023 09:13:37','dd/mm/yyyy hh24:mi:ss'),
                           'Amnesty International',
                           3,
                           TO_DATE('06/04/2023 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '5K',
                           NULL );

INSERT INTO entry VALUES ( 21,
                           TO_DATE('20/02/2024 08:42:32','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('20/02/2024 09:13:37','dd/mm/yyyy hh24:mi:ss'),
                           'Beyond Blue',
                           6,
                           TO_DATE('20/02/2024 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '5K',
                           NULL );
INSERT INTO entry VALUES ( 22,
                           TO_DATE('20/02/2024 08:42:32','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('20/02/2024 09:13:37','dd/mm/yyyy hh24:mi:ss'),
                           'Beyond Blue',
                           9,
                           TO_DATE('20/02/2024 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '5K',
                           NULL );
INSERT INTO entry VALUES ( 23,
                           TO_DATE('20/02/2024 08:42:32','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('20/02/2024 09:13:37','dd/mm/yyyy hh24:mi:ss'),
                           'Beyond Blue',
                           11,
                           TO_DATE('20/02/2024 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '5K',
                           NULL );

INSERT INTO entry VALUES ( 24,
                           TO_DATE('20/02/2024 08:42:32','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('20/02/2024 09:13:37','dd/mm/yyyy hh24:mi:ss'),
                           'RSPCA',
                           19,
                           TO_DATE('20/02/2024 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '10K',
                           NULL );
INSERT INTO entry VALUES ( 25,
                           TO_DATE('20/02/2024 08:42:32','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('20/02/2024 09:13:37','dd/mm/yyyy hh24:mi:ss'),
                           'RSPCA',
                           1,
                           TO_DATE('20/02/2024 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '10K',
                           NULL );
INSERT INTO entry VALUES ( 26,
                           TO_DATE('20/02/2024 08:42:32','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('20/02/2024 09:13:37','dd/mm/yyyy hh24:mi:ss'),
                           'RSPCA',
                           16,
                           TO_DATE('20/02/2024 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '10K',
                           NULL );

INSERT INTO entry VALUES ( 27,
                           TO_DATE('20/02/2024 08:42:32','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('20/02/2024 09:13:37','dd/mm/yyyy hh24:mi:ss'),
                           'Amnesty International',
                           9,
                           TO_DATE('20/02/2024 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '21K',
                           NULL );
INSERT INTO entry VALUES ( 28,
                           TO_DATE('20/02/2024 08:42:32','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('20/02/2024 09:13:37','dd/mm/yyyy hh24:mi:ss'),
                           'Amnesty International',
                           10,
                           TO_DATE('20/02/2024 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '21K',
                           NULL );
INSERT INTO entry VALUES ( 29,
                           TO_DATE('20/02/2024 08:42:32','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('20/02/2024 09:13:37','dd/mm/yyyy hh24:mi:ss'),
                           'Amnesty International',
                           13,
                           TO_DATE('20/02/2024 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '21K',
                           NULL );
INSERT INTO entry VALUES ( 30,
                           TO_DATE('20/02/2024 08:42:32','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('20/02/2024 09:13:37','dd/mm/yyyy hh24:mi:ss'),
                           'Amnesty International',
                           16,
                           TO_DATE('20/02/2024 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '21K',
                           NULL );

INSERT INTO entry VALUES ( 31,
                           TO_DATE('01/02/2023 08:42:32','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('01/02/2023 09:13:37','dd/mm/yyyy hh24:mi:ss'),
                           'Salvation Army',
                           1,
                           TO_DATE('01/02/2023 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '5K',
                           NULL );
INSERT INTO entry VALUES ( 32,
                           TO_DATE('01/02/2023 08:42:32','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('01/02/2023 09:13:37','dd/mm/yyyy hh24:mi:ss'),
                           'Salvation Army',
                           5,
                           TO_DATE('01/02/2023 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '5K',
                           NULL );
INSERT INTO entry VALUES ( 33,
                           TO_DATE('01/02/2023 08:42:32','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('01/02/2023 09:13:37','dd/mm/yyyy hh24:mi:ss'),
                           'Salvation Army',
                           8,
                           TO_DATE('01/02/2023 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '5K',
                           NULL );
INSERT INTO entry VALUES ( 34,
                           TO_DATE('01/02/2023 08:42:32','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('01/02/2023 09:13:37','dd/mm/yyyy hh24:mi:ss'),
                           'Salvation Army',
                           12,
                           TO_DATE('01/02/2023 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '5K',
                           NULL );
INSERT INTO entry VALUES ( 35,
                           TO_DATE('01/02/2023 08:42:32','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('01/02/2023 09:13:37','dd/mm/yyyy hh24:mi:ss'),
                           'Salvation Army',
                           15,
                           TO_DATE('01/02/2023 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '5K',
                           NULL );

INSERT INTO entry VALUES ( 36,
                           TO_DATE('08/09/2023 08:42:32','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('08/09/2023 09:13:37','dd/mm/yyyy hh24:mi:ss'),
                           'Beyond Blue',
                           7,
                           TO_DATE('08/09/2023 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '5K',
                           NULL );
INSERT INTO entry VALUES ( 37,
                           TO_DATE('08/09/2023 08:42:32','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('08/09/2023 09:13:37','dd/mm/yyyy hh24:mi:ss'),
                           'Beyond Blue',
                           11,
                           TO_DATE('08/09/2023 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '5K',
                           NULL );
INSERT INTO entry VALUES ( 38,
                           TO_DATE('08/09/2023 08:42:32','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('08/09/2023 09:13:37','dd/mm/yyyy hh24:mi:ss'),
                           'Beyond Blue',
                           12,
                           TO_DATE('08/09/2023 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '5K',
                           NULL );
INSERT INTO entry VALUES ( 39,
                           TO_DATE('08/09/2023 08:42:32','dd/mm/yyyy hh24:mi:ss'),
                           TO_DATE('08/09/2023 09:13:37','dd/mm/yyyy hh24:mi:ss'),
                           'Beyond Blue',
                           19,
                           TO_DATE('08/09/2023 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                           '5K',
                           NULL );

-- Insert into TEAM (5 teams)

INSERT INTO team VALUES ( 1,
                          'City Striders',
                          TO_DATE('19/09/2021 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                          1,
                          'RSPCA',
                          1 );
INSERT INTO team VALUES ( 2,
                          'Ridge Runners',
                          TO_DATE('19/09/2021 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                          1,
                          'Beyond Blue',
                          4 );
INSERT INTO team VALUES ( 3,
                          'Trail Blazers',
                          TO_DATE('01/02/2023 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                          1,
                          'Salvation Army',
                          7 );
INSERT INTO team VALUES ( 4,
                          'Peak Pacers',
                          TO_DATE('01/02/2023 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                          1,
                          'Amnesty International',
                          11 );
INSERT INTO team VALUES ( 5,
                          'Summit Sprinters',
                          TO_DATE('06/04/2023 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                          1,
                          'RSPCA',
                          14 );
INSERT INTO team VALUES ( 6,
                          'City Striders',
                          TO_DATE('06/04/2023 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                          1,
                          'Beyond Blue',
                          16 );
INSERT INTO team VALUES ( 7,
                          'Ridge Runners',
                          TO_DATE('06/04/2023 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                          1,
                          'Amnesty International',
                          19 );
INSERT INTO team VALUES ( 8,
                          'Trail Blazers',
                          TO_DATE('20/02/2024 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                          1,
                          'Beyond Blue',
                          21 );
INSERT INTO team VALUES ( 9,
                          'Peak Pacers',
                          TO_DATE('20/02/2024 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                          1,
                          'RSPCA',
                          24 );
INSERT INTO team VALUES ( 10,
                          'Summit Sprinters',
                          TO_DATE('20/02/2024 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                          1,
                          'Amnesty International',
                          27 );
INSERT INTO team VALUES ( 11,
                          'City Striders',
                          TO_DATE('01/02/2023 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                          1,
                          'Amnesty International',
                          31 );
INSERT INTO team VALUES ( 12,
                          'Ridge Runners',
                          TO_DATE('08/09/2023 00:00:00','dd/mm/yyyy hh24:mi:ss'),
                          1,
                          'Amnesty International',
                          36 );

-- Update entries with team_id

UPDATE entry
SET
	team_id = 1
WHERE entry_id IN ( 1,
                    2,
                    3 );

UPDATE entry
SET
	team_id = 2
WHERE entry_id IN ( 4,
                    5,
                    6 );

UPDATE entry
SET
	team_id = 3
WHERE entry_id IN ( 7,
                    8,
                    9,
                    10 );

UPDATE entry
SET
	team_id = 4
WHERE entry_id IN ( 11,
                    12,
                    13 );

UPDATE entry
SET
	team_id = 5
WHERE entry_id IN ( 14,
                    15 );

UPDATE entry
SET
	team_id = 6
WHERE entry_id IN ( 16,
                    17,
                    18 );

UPDATE entry
SET
	team_id = 7
WHERE entry_id IN ( 19,
                    20 );

UPDATE entry
SET
	team_id = 8
WHERE entry_id IN ( 21,
                    22,
                    23 );

UPDATE entry
SET
	team_id = 9
WHERE entry_id IN ( 24,
                    25,
                    26 );

UPDATE entry
SET
	team_id = 10
WHERE entry_id IN ( 27,
                    28,
                    29,
                    30 );

UPDATE entry
SET
	team_id = 11
WHERE entry_id IN ( 31,
                    32,
                    33,
                    34,
                    35 );

UPDATE entry
SET
	team_id = 12
WHERE entry_id IN ( 36,
                    37,
                    38,
                    39 );

-- Update team_no_members

UPDATE team
SET
	team_no_members = (
		SELECT COUNT(*)
		FROM entry
		WHERE team_id = 1
	)
WHERE team_id = 1;

UPDATE team
SET
	team_no_members = (
		SELECT COUNT(*)
		FROM entry
		WHERE team_id = 2
	)
WHERE team_id = 2;

UPDATE team
SET
	team_no_members = (
		SELECT COUNT(*)
		FROM entry
		WHERE team_id = 3
	)
WHERE team_id = 3;

UPDATE team
SET
	team_no_members = (
		SELECT COUNT(*)
		FROM entry
		WHERE team_id = 4
	)
WHERE team_id = 4;

UPDATE team
SET
	team_no_members = (
		SELECT COUNT(*)
		FROM entry
		WHERE team_id = 5
	)
WHERE team_id = 5;

UPDATE team
SET
	team_no_members = (
		SELECT COUNT(*)
		FROM entry
		WHERE team_id = 6
	)
WHERE team_id = 6;

UPDATE team
SET
	team_no_members = (
		SELECT COUNT(*)
		FROM entry
		WHERE team_id = 7
	)
WHERE team_id = 7;

UPDATE team
SET
	team_no_members = (
		SELECT COUNT(*)
		FROM entry
		WHERE team_id = 8
	)
WHERE team_id = 8;

UPDATE team
SET
	team_no_members = (
		SELECT COUNT(*)
		FROM entry
		WHERE team_id = 9
	)
WHERE team_id = 9;

UPDATE team
SET
	team_no_members = (
		SELECT COUNT(*)
		FROM entry
		WHERE team_id = 10
	)
WHERE team_id = 10;

UPDATE team
SET
	team_no_members = (
		SELECT COUNT(*)
		FROM entry
		WHERE team_id = 11
	)
WHERE team_id = 11;

UPDATE team
SET
	team_no_members = (
		SELECT COUNT(*)
		FROM entry
		WHERE team_id = 12
	)
WHERE team_id = 12;

COMMIT;