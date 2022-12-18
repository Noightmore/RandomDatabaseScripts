SELECT T1.name AS 'Witness 1', T1.transcript AS 'Witness 1 transcript',
T2.name AS 'Witness 2', T2.transcript AS 'Witness 2 transcript' FROM 
(
 SELECT name, transcript FROM person 
 JOIN interview
 ON person.id = interview.person_id
 WHERE address_street_name = 'Northwestern Dr' 
 ORDER BY address_number DESC LIMIT 1
) AS T1

JOIN 
(
 SELECT name, transcript FROM person  
 JOIN interview
 ON person.id = interview.person_id
 WHERE address_street_name = 'Franklin Ave' AND name LIKE 'Annabel%'
) AS T2
