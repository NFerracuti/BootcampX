SELECT cohorts.name AS name, avg(completed_at - started_at) AS average_assistance_request_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.id
ORDER BY avg(completed_at - started_at);