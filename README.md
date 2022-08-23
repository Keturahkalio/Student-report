# STUDENT REPORT

    INTRODUCTION
As a Data Analyst, I was provided with student records that contain information about students, which includes academic, family details, personal details, and country information. The information provided is for analysis of factors that can affect student academic performance
the objectives of this analysis can be summarized in the following questions:

1. What potential trends would you want to try and find in the data?

2. What is the most important piece of information this data might be able to highlight?

3. How will these metrics connect to build a story?

The student records data were collected from the student's academic and personal
databases. The data collected were put into four different tables, namely below;

*Student personal details table contains student's personal information such as students' ID, date of birth, ethnicity, county ID, and family ID.

*The county ID table contains information such as the Unemployment rate, wages, county ID, region, and average county tuition.

*Students' academic information table contains data such as Student ID, academic scores of students, student tuition, and years of education.

*Students' family details table contains information such as family Id, fathers who went to college, mothers who attended college, students whose parents have a home, students who attend colleges in the urban areas, and income (whether the parents earn high or low income)

All four tables contain information necessary for the analysis; each table has over 2000 entries that will be used. Some of the details in some tables were included in another table,
therefore, a single comprehensive table that contains information from all tables is to be
summed into one, hence the introduction of a JOIN.

Inner Join was used in joining columns from all the tables into a single table for analysis. The column selected and joined was based on the commonality of each table. SQLite was used
in joining the four tables into one called students_college_reports
After an inner join, duplicates were recorded; this was removed using window functions.

Link to Article: [https://keturahkalio.wixsite.com/keturahportfolio/post/student-report]
