SELECT teachers.name AS name, count(assistance_requests.*) AS total_assistances
FROM teachers
JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
WHERE name LIKE 'Waylon Boehm'
GROUP BY teachers.name;