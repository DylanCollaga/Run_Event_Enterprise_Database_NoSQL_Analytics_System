--*****PLEASE ENTER YOUR DETAILS BELOW*****
--T5-cr-mods.sql

-- ITO Assignment 2 Task 5

--Student ID: 36705691
--Student Name: Dylan Collaga

/* Comments for your marker:




*/

-- ENSURE that your SQL code is formatted and has a semicolon (;)
-- at the end of every statement. When marked this will be run as
-- a script.

/*
(a)
*/

-- Entries who are NOT team leaders have team_id removed to allow entity deletion
UPDATE entry
SET
	team_id = NULL
WHERE entry_id IN (
	SELECT e.entry_id
	FROM entry e
	LEFT JOIN team t
	ON e.entry_id = t.entry_id
	WHERE t.entry_id IS NULL
	      AND ( e.comp_no,
	            e.carn_date ) IN (
		SELECT comp_no,
		       carn_date
		FROM entry
		GROUP BY comp_no,
		         carn_date
		HAVING COUNT(*) > 1
	)
);

-- Entries are deleted from ENTRY table
DELETE FROM entry
WHERE entry_id IN (
	SELECT e.entry_id
	FROM entry e
	LEFT JOIN team t
	ON e.entry_id = t.entry_id
	WHERE t.entry_id IS NULL
	      AND ( e.comp_no,
	            e.carn_date ) IN (
		SELECT comp_no,
		       carn_date
		FROM entry
		GROUP BY comp_no,
		         carn_date
		HAVING COUNT(*) > 1
	)
);

-- Unique constraint added to ENTRY table to restrict one event entry per carnival
ALTER TABLE entry ADD CONSTRAINT entry_carn_uq UNIQUE ( comp_no,
                                                        carn_date );

COMMIT;

/*
(b)
*/

ALTER TABLE entry ADD elapsed_minutes NUMBER(6,2);

UPDATE entry
SET
	elapsed_minutes = round(
		((entry_finishtime - entry_starttime) * 24 * 60),
		2
	)
WHERE entry_starttime IS NOT NULL
      AND entry_finishtime IS NOT NULL;

COMMIT;

/*
(c)
*/

DROP TABLE ec_comp CASCADE CONSTRAINTS;

-- Create associative entity to address the M:N binary relationship between COMPETITION and EMERCONTACT
CREATE TABLE ec_comp (
	comp_no         NUMBER(5) NOT NULL,
	ec_phone        CHAR(10 BYTE) NOT NULL,
	ec_relationship CHAR(1 BYTE) NOT NULL
);

COMMENT ON COLUMN ec_comp.comp_no IS
	'Competitor registration number';
COMMENT ON COLUMN ec_comp.ec_phone IS
	'Emergency contact phone number';
COMMENT ON COLUMN ec_comp.ec_relationship IS
	'Emergency contact relationship to competitor (P or  T or G or F)
P = Parent
T = Partner
G = Guardian
F = Friend
';

ALTER TABLE ec_comp ADD CONSTRAINT ec_comp_pk PRIMARY KEY ( comp_no,
                                                            ec_phone );
ALTER TABLE ec_comp
	ADD CONSTRAINT check_ec_relationship
		CHECK ( ec_relationship IN ( 'P',
		                             'T',
		                             'G',
		                             'F' ) );

ALTER TABLE competitor DROP CONSTRAINT emercontact_competitor;
ALTER TABLE competitor DROP CONSTRAINT check_ecrelationship;

ALTER TABLE ec_comp ADD (
	CONSTRAINT comp_ec_comp_fk FOREIGN KEY ( comp_no )
		REFERENCES competitor ( comp_no )
			ON DELETE CASCADE
);

ALTER TABLE ec_comp ADD (
	CONSTRAINT ec_ec_comp_fk FOREIGN KEY ( ec_phone )
		REFERENCES emercontact ( ec_phone )
			ON DELETE CASCADE
);

INSERT INTO ec_comp (
	comp_no,
	ec_phone,
	ec_relationship
)
	(
		SELECT comp_no,
		       ec_phone,
		       comp_ec_relationship
		FROM competitor
		WHERE ec_phone IS NOT NULL
	);

COMMIT;