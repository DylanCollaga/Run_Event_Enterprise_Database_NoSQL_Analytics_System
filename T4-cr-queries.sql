--*****PLEASE ENTER YOUR DETAILS BELOW*****
--T4-cr-queries.sql

-- ITO Assignment 2 Task 4

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
SELECT to_char(
	e.carn_date,
	'Dy dd Month yyyy'
) AS carnival_date,
       c.carn_name AS carnname,
       et.eventtype_desc AS eventtypedesc,
       c.comp_fname
       || ' '
       || c.comp_lname AS fullname
FROM (
	(
		entry e
		LEFT JOIN carnival c
		ON e.carn_date = c.carn_date
	)
	LEFT JOIN competitor c
	ON e.comp_no = c.comp_no
)
LEFT JOIN eventtype et
ON e.eventtype_code = et.eventtype_code
WHERE upper(c.comp_email) LIKE upper('%@gmail.com')
ORDER BY e.carn_date ASC,
         c.comp_fname
         || ' '
         || c.comp_lname ASC;

/*
(b)
*/

SELECT to_char(
	e.carn_date,
	'dd-Mon-yyyy'
) AS carnival_date,
       c.comp_fname
       || ' '
       || c.comp_lname AS fullname,
       ch.char_name AS charity_name,
       ch.char_contact AS charity_contact,
       et.eventtype_desc AS event_description
FROM (
	(
		entry e
		LEFT JOIN competitor c
		ON e.comp_no = c.comp_no
	)
	LEFT JOIN charity ch
	ON e.char_name = ch.char_name
)
LEFT JOIN eventtype et
ON e.eventtype_code = et.eventtype_code
WHERE upper(et.eventtype_desc) = upper('42.2 km Marathon')
ORDER BY e.carn_date ASC,
         e.char_name ASC,
         c.comp_fname
         || ' '
         || c.comp_lname ASC;

/*
(c)
*/

SELECT c.comp_no AS compno,
       c.comp_fname AS compfname,
       c.comp_lname AS complname,
       c.comp_gender AS compgender,
       rpad(
	       count(
		       CASE
		          WHEN to_char(
			          e.carn_date,
			          'yyyy'
		          ) = to_char(
			          sysdate,
			          'yyyy'
		          ) - 2 THEN
		             1
		       END
	       ),
	       10,
	       ' '
       ) AS twoyrsback,
       rpad(
	       count(
		       CASE
		          WHEN to_char(
			          e.carn_date,
			          'yyyy'
		          ) = to_char(
			          sysdate,
			          'yyyy'
		          ) - 1 THEN
		             1
		       END
	       ),
	       10,
	       ' '
       ) AS lastcalyear,
       (
	       SELECT CASE
	                 WHEN cnt = 0 THEN
	                    'Completed No Runs'
	                 ELSE
	                    to_char(cnt)
	              END
	       FROM (
		       SELECT COUNT(*) AS cnt
		       FROM entry e2
		       WHERE e2.comp_no = c.comp_no
		             AND to_char(
			       e2.carn_date,
			       'yyyy'
		       ) IN ( to_char(
			       sysdate,
			       'yyyy'
		       ) - 1,
		              to_char(
			        sysdate,
			        'yyyy'
		        ) - 2 )
	       )
       ) AS last2calendaryears
FROM entry e
LEFT JOIN competitor c
ON e.comp_no = c.comp_no
GROUP BY c.comp_no,
         c.comp_fname,
         c.comp_lname,
         c.comp_gender
ORDER BY (
	SELECT COUNT(*)
	FROM entry e2
	WHERE e2.comp_no = c.comp_no
	      AND to_char(
		e2.carn_date,
		'yyyy'
	) IN ( to_char(
		sysdate,
		'yyyy'
	) - 1,
	       to_char(
		sysdate,
		'yyyy'
	) - 2 )
),
         c.comp_no;

/*
(d) 
*/

SELECT to_char(
	e.carn_date,
	'dd-Mon-yyyy'
) AS carnival_date,
       c.carn_name AS carnival_name,
       COUNT(e.entry_id) AS total_entries5km
FROM entry e
JOIN carnival c
ON e.carn_date = c.carn_date
JOIN eventtype et
ON e.eventtype_code = et.eventtype_code
WHERE upper(et.eventtype_desc) LIKE upper('5 Km Run')
      AND to_char(
	e.carn_date,
	'yyyy'
) = '2023'
GROUP BY e.carn_date,
         c.carn_name
ORDER BY COUNT(e.entry_id) DESC,
         e.carn_date ASC;

/* 
(e) 
*/

SELECT to_char(
	c.carn_date,
	'dd-Mon-yyyy'
) AS carnival_date,
       c.carn_name AS carnname,
       et.eventtype_desc AS eventtypedesc
FROM carnival c
JOIN event e
ON c.carn_date = e.carn_date
JOIN eventtype et
ON e.eventtype_code = et.eventtype_code
LEFT JOIN entry en
ON en.carn_date = c.carn_date
   AND en.eventtype_code = e.eventtype_code
WHERE c.carn_date < sysdate
GROUP BY c.carn_date,
         c.carn_name,
         et.eventtype_desc
HAVING COUNT(en.entry_id) = 0
ORDER BY c.carn_date,
         et.eventtype_desc;

/*
(f)
*/

SELECT t.team_name AS teamname,
       to_char(
	       t.carn_date,
	       'dd-Mon-yyyy'
       ) AS carnivaldate,
       to_char(
	       cp.comp_no,
	       '0000'
       )
       || ' '
       || cp.comp_fname
       || ' '
       || cp.comp_lname AS teamleader,
       t.team_no_members AS teamnomembers
FROM team t
JOIN entry en
ON en.entry_id = t.entry_id
JOIN competitor cp
ON cp.comp_no = en.comp_no
WHERE t.team_name IN (
	SELECT team_name
	FROM team
	GROUP BY team_name
	HAVING COUNT(*) = (
		SELECT MAX(COUNT(*))
		FROM team
		GROUP BY team_name
	)
)
ORDER BY t.team_name,
         t.carn_date;