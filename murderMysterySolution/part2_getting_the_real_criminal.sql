SELECT name AS 'real murderers', annual_income AS 'money'
FROM facebook_event_checkin

JOIN drivers_license
ON person.license_id = drivers_license.id
JOIN person
ON person.id = facebook_event_checkin.person_id
JOIN income
ON person.ssn = income.ssn

WHERE event_name = 'SQL Symphony Concert'
AND gender = 'female'
AND hair_color = 'red'
AND car_make = 'Tesla'
AND car_model = 'Model S'
AND height BETWEEN 65 AND 67
AND facebook_event_checkin.date BETWEEN 20171201 AND 20171231
GROUP BY person_id
HAVING COUNT(*) = 3 
ORDER BY annual_income DESC
