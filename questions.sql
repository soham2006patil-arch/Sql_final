-- 1. Which incidents were logged this month, latest first?
SELECT *
FROM incidents
WHERE reported_at >= '2026-09-01'
  AND reported_at < '2026-10-01'
ORDER BY reported_at DESC;


-- 2. Which incidents had a response time above 10 minutes?
SELECT incident_id, incident_type, response_time_minutes
FROM incidents
WHERE response_time_minutes > 10
ORDER BY response_time_minutes DESC;


-- 3. Which vehicles are currently committed to an incident?
SELECT v.vehicle_number,
       v.vehicle_type,
       i.incident_id,
       i.incident_type,
       i.incident_location
FROM incident_vehicles iv
JOIN vehicles v
    ON iv.vehicle_id = v.vehicle_id
JOIN incidents i
    ON iv.incident_id = i.incident_id
WHERE iv.released_at IS NULL;


-- 4. Which incidents of a given type occurred between two dates?
SELECT *
FROM incidents
WHERE incident_type = 'BUILDING_FIRE'
  AND reported_at BETWEEN '2026-09-01' AND '2026-09-30 23:59:59'
ORDER BY reported_at;


-- 5. Which incidents are not yet closed?
SELECT *
FROM incidents
WHERE status <> 'CLOSED'
ORDER BY reported_at DESC;


-- 6. Demonstrate NULL comparison.
SELECT *
FROM incidents
WHERE arrived_at is NULL;


-- 7. Which incidents have no arrival time recorded?
SELECT *
FROM incidents
WHERE arrived_at IS NULL;


-- 8. What are the different types of incidents?
SELECT DISTINCT incident_type
FROM incidents
ORDER BY incident_type;


-- 9. Which incidents occurred at locations containing "Sector"?
SELECT *
FROM incidents
WHERE incident_location LIKE '%Sector%';


-- 10. Which incidents have HIGH or CRITICAL severity?
SELECT *
FROM incidents
WHERE severity IN ('HIGH', 'CRITICAL');


-- 11. Display the 10 latest incidents.
SELECT *
FROM incidents
ORDER BY reported_at DESC
LIMIT 10;


-- 12. Display the second page of incidents using OFFSET.
SELECT *
FROM incidents
ORDER BY reported_at DESC
LIMIT 10 OFFSET 10;


-- 13. How many incidents occurred for each incident type?
SELECT incident_type,
       COUNT(*) AS total_incidents
FROM incidents
GROUP BY incident_type
ORDER BY total_incidents DESC;


-- 14. Which incident types occurred more than twice?
SELECT incident_type,
       COUNT(*) AS total_incidents
FROM incidents
GROUP BY incident_type
HAVING COUNT(*) > 2
ORDER BY total_incidents DESC;


-- 15. Which vehicles were assigned to which incidents?
SELECT i.incident_id,
       i.incident_type,
       i.incident_location,
       v.vehicle_number,
       v.vehicle_type
FROM incidents i
JOIN incident_vehicles iv
    ON i.incident_id = iv.incident_id
JOIN vehicles v
    ON iv.vehicle_id = v.vehicle_id;


-- 16. What is the average response time?
SELECT ROUND(AVG(response_time_minutes), 2)
       AS average_response_time
FROM incidents
WHERE response_time_minutes IS NOT NULL;


-- 17. Which incidents had a response time above the average?
SELECT incident_id,
       incident_type,
       response_time_minutes
FROM incidents
WHERE response_time_minutes >
      (SELECT AVG(response_time_minutes)
       FROM incidents
       WHERE response_time_minutes IS NOT NULL)
ORDER BY response_time_minutes DESC;


-- 18. What are the closure details of each closed incident?
SELECT i.incident_id,
       i.incident_type,
       i.incident_location,
       c.closed_at,
       c.closure_reason,
       c.damage_estimate
FROM incidents i
JOIN incident_closures c
    ON i.incident_id = c.incident_id;

--19.Which vehicles were assigned to which incidents?
SELECT i.incident_id,
       i.incident_type,
       v.vehicle_number,
       v.vehicle_type
FROM incidents i
INNER JOIN incident_vehicles iv
    ON i.incident_id = iv.incident_id
INNER JOIN vehicles v
    ON iv.vehicle_id = v.vehicle_id;

--20.Which incidents have no vehicles assigned?
SELECT i.incident_id,
       i.incident_type,
       i.incident_location
FROM incidents i
LEFT JOIN incident_vehicles iv
    ON i.incident_id = iv.incident_id
WHERE iv.vehicle_id IS NULL;

--21.Which incidents have no closure record?
SELECT i.incident_id,
       i.incident_type,
       i.incident_location
FROM incidents i
LEFT JOIN incident_closures c
    ON i.incident_id = c.incident_id
WHERE c.incident_id IS NULL;