SELECT person.name AS suspects FROM person
JOIN get_fit_now_member
ON person.id = get_fit_now_member.person_id
JOIN get_fit_now_check_in
ON get_fit_now_check_in.membership_id = get_fit_now_member.id
JOIN drivers_license
ON person.license_id = drivers_license.id

WHERE membership_status = 'gold'
AND check_in_date = 20180109
AND membership_id LIKE '48Z%'
AND plate_number LIKE '%H42W%'
