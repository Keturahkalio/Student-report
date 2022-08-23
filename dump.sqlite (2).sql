-- TABLE
CREATE TABLE 'county_info' ('id' INTEGER,'unemp' REAL,'wage' REAL,'distance' REAL,'region' TEXT,'avg_county_tuition' REAL);
CREATE TABLE CTE1(
  region TEXT,
  student_tuition INT,
  tuition_rate
);
CREATE TABLE CTE2(region TEXT,avg_unemp);
CREATE TABLE demo (ID integer primary key, Name varchar(20), Hint text );
CREATE TABLE duplicate_count_table(
  ID INT,
  unemp REAL,
  wage REAL,
  distance REAL,
  region TEXT,
  avg_county_tuition REAL,
  academic_score REAL,
  student_tuition INT,
  education INT,
  fcollege TEXT,
  mcollege TEXT,
  home TEXT,
  urban TEXT,
  income TEXT,
  gender TEXT,
  DOB TEXT,
  ethnicity TEXT,
  duplicates
);
CREATE TABLE main_reports_student_colleges(
  ID INT,
  unemp REAL,
  wage REAL,
  distance REAL,
  region TEXT,
  avg_county_tuition REAL,
  academic_score REAL,
  student_tuition INT,
  education INT,
  fcollege TEXT,
  mcollege TEXT,
  home TEXT,
  urban TEXT,
  income TEXT,
  gender TEXT,
  DOB TEXT,
  ethnicity TEXT,
  duplicates
);
CREATE TABLE region_table(
  region TEXT,
  tuition_rate,
  avg_unemp
);
CREATE TABLE reports_student_colleges(
  ID INT,
  unemp REAL,
  wage REAL,
  distance REAL,
  region TEXT,
  avg_county_tuition REAL,
  academic_score REAL,
  student_tuition INT,
  education INT,
  fcollege TEXT,
  mcollege TEXT,
  home TEXT,
  urban TEXT,
  income TEXT,
  gender TEXT,
  DOB TEXT,
  ethnicity TEXT
);
CREATE TABLE 'student_academic_info' ('id' INTEGER,'academic_score' REAL,'student_tuition' INTEGER,'education' INTEGER);
CREATE TABLE 'student_family_details' ('id' INTEGER,'fcollege' TEXT,'mcollege' TEXT,'home' TEXT,'urban' TEXT,'income' TEXT);
CREATE TABLE 'student_personal_details' ('ID' INTEGER,'gender' TEXT,'DOB' TEXT,'ethnicity' TEXT,'academic_info_id' INTEGER,'county_id' INTEGER,'family_details_id' INTEGER);
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 
