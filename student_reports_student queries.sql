-- Using JOINS to merge the tables to create a report table called reports_student_colleges with the following SQL syntax.
CREATE TABLE reports_student_colleges AS 
SELECT student_personal_details.id, 
        unemp,
        wage,
        distance,
        region,
        avg_county_tuition, 
        academic_score,
        student_tuition,
        education,
        fcollege,
        mcollege,
        home,
        urban,
        income,
        gender, 
        dob, 
        ethnicity
FROM county_info
JOIN student_academic_info
 on county_info.id = student_academic_info.id
JOIN student_family_details
 on student_academic_info.id = student_family_details.id
JOIN student_personal_details
 on student_family_details.id = student_personal_details.family_details_id;
 
SELECT * FROM reports_student_colleges 

--To remove duplicates from the created table, I used the following SQL syntax shown below;

 CREATE TABLE duplicate_count_table AS
WITH cte AS (SELECT *,
            ROW_NUMBER () OVER(PARTITION BY id ORDER by id) AS duplicates
            FROM reports_student_colleges)
SELECT * FROM cte

--to view the newly created duplicate_count_table in descending order
SELECT * FROM duplicate_count_table
ORDER BY duplicates DESC  

--to delete from duplicate_count_table where duplicates are greater than 1
DELETE FROM duplicate_count_table WHERE duplicates >1
--to create a main_reports_student_colleges table where duplicates have been removed for analysis
CREATE TABLE main_reports_student_colleges AS
SELECT * FROM duplicate_count_table

SELECT * FROM main_reports_student_colleges 

-- 1. SQL QUERY to create a region_table
-- Using CTE, CASE statements and JOINS; I created a region_table to show what region has high student tuition and the largest unemployment rate with the following SQL syntax;
CREATE table CTE1 AS 
   with CTE1 AS (SELECT region,student_tuition,
               CASE
              when student_tuition >= 70000 THEN 'high tuition'
              WHEN student_tuition < 70000 then 'low tuition'
               ELSE 'N/A'
             END AS tuition_rate
             FROM main_reports_student_colleges
             GROUP by region)
SELECT * FROM CTE1

CREATE TABLE CTE2 AS 
   WITH CTE2 AS (SELECT region,
             AVG (unemp) AS avg_unemp
         FROM main_reports_student_colleges
        GROUP by region)
SELECT * FROM CTE2

--create a region table
CREATE TABLE region_table AS 
SELECT region, tuition_rate, avg_unemp
FROM CTE1
JOIN CTE2
USING(region)

SELECT * FROM region_table


--2. What is the academic score of students whose parents attended college?
	SELECT academic_score, region, fcollege, mcollege
FROM main_reports_student_colleges
where fcollege = 'yes'
and mcollege = 'yes'
group by region;

	--academic score of students whose parent did not attend college
SELECT academic_score, region, fcollege, mcollege
FROM main_reports_student_colleges
where fcollege = 'no'
and mcollege = 'no'
group by region;

--3. What is the avg distance to college? Does it affect academic score
SELECT AVG (academic_score), distance
FROM main_reports_student_colleges
GROUP by distance
ORDER BY distance DESC;

--4. do students with high academic score have high income? 
--do they live in urban areas?
--do they own their own home?
SELECT academic_score, income, urban, home
FROM main_reports_student_colleges
GROUP BY academic_score
ORDER BY academic_score DESC
LIMIT 100;


