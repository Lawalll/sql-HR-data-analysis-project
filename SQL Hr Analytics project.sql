CREATE DATABASE hr;
USE hr;

SELECT *
FROM resource_data;

--gender breakdown--
SELECT 
gender,
COUNT(gender)AS count
FROM resource_data
GROUP BY gender;

--what is the race breakdown of employees in the  company--
SELECT
race,
COUNT(race) AS count
FROM resource_data
WHERE termdate IS  NULL
GROUP BY race;

---how many people work at headquarters vs remote --
SELECT 
location,
COUNT(location) AS count
FROM resource_data
WHERE termdate IS NULL
GROUP BY location;

--how does gender vary accross department and job titles--
SELECT
department,gender,jobtitle,
COUNT(*) AS count
FROM resource_data
WHERE termdate IS NOT NULL
GROUP BY department,gender,jobtitle
ORDER BY department, gender,jobtitle;


SELECT 
department,gender,
COUNT(*) AS count
FROM resource_data
WHERE termdate IS NULL
GROUP BY department,gender
ORDER BY department, gender;

--what is the distribution of jobtitle across the country;
SELECT
jobtitle,
COUNT(*) AS count
FROM resource_data
GROUP BY jobtitle;

--what is the distribution of employees across different location state--
SELECT  
location_state,
COUNT(*) AS count
FROM resource_data
WHERE termdate IS NULL
GROUP BY location_state;

SELECT 
location_city,
COUNT(*) AS count
FROM resource_data
WHERE termdate IS NULL
GROUP BY location_city;
