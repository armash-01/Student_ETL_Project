-- CREATE TABLE StudentPerformance
-- (
--     school VARCHAR(10),
--     sex VARCHAR(10),
--     age INT,
--     address VARCHAR(10),
--     famsize VARCHAR(10),
--     Pstatus VARCHAR(10),
--     Medu INT,
--     Fedu INT,
--     Mjob VARCHAR(30),
--     Fjob VARCHAR(30),
--     reason VARCHAR(30),
--     guardian VARCHAR(20),
--     traveltime INT,
--     studytime INT,
--     failures INT,
--     schoolsup VARCHAR(10),
--     famsup VARCHAR(10),
--     paid VARCHAR(10),
--     activities VARCHAR(10),
--     nursery VARCHAR(10),
--     higher VARCHAR(10),
--     internet VARCHAR(10),
--     romantic VARCHAR(10),
--     famrel INT,
--     freetime INT,
--     goout INT,
--     Dalc INT,
--     Walc INT,
--     health INT,
--     absences INT,
--     G1 INT,
--     G2 INT,
--     G3 INT,
--     AverageGrade DECIMAL(5,2),
--     PerformanceCategory VARCHAR(20),
--     Result VARCHAR(10),
--     AgeGroup VARCHAR(20),
--     AttendanceCategory VARCHAR(20),
--     StudyLevel VARCHAR(20),
--     FailureCategory VARCHAR(30),
--     SupportCategory VARCHAR(30),
--     MotherEducation VARCHAR(30),
--     FatherEducation VARCHAR(30)
-- );

-- #Verify SQL data

-- SELECT COUNT(*) AS TotalStudents
-- FROM StudentPerformance;

-- SELECT  *
-- FROM StudentPerformance
-- limit 10;

-- #SQL ETL ANALYSIS 

-- #Total students

-- SELECT COUNT(*) AS TotalStudents
-- FROM StudentPerformance;

-- #Students by school

-- SELECT school, COUNT(*) AS StudentCount
-- FROM StudentPerformance
-- GROUP BY school;

-- #Average grade

-- SELECT AVG(AverageGrade) AS AverageGrade
-- FROM StudentPerformance;

-- #Performance category

-- SELECT PerformanceCategory,
--        COUNT(*) AS StudentCount
-- FROM StudentPerformance
-- GROUP BY PerformanceCategory;

-- #Pass vs Fail

-- SELECT Result,
--        COUNT(*) AS StudentCount
-- FROM StudentPerformance
-- GROUP BY Result;

-- #Study level vs performance

-- SELECT StudyLevel,
--        AVG(AverageGrade) AS AverageGrade
-- FROM StudentPerformance
-- GROUP BY StudyLevel
-- ORDER BY AverageGrade DESC;

-- #Attendance vs performance

-- SELECT AttendanceCategory,
--        AVG(AverageGrade) AS AverageGrade
-- FROM StudentPerformance
-- GROUP BY AttendanceCategory
-- ORDER BY AverageGrade DESC;

-- # Failure analysis

-- SELECT FailureCategory,
--        COUNT(*) AS StudentCount,
--        AVG(AverageGrade) AS AverageGrade
-- FROM StudentPerformance
-- GROUP BY FailureCategory;

-- – Gender analysis

-- SELECT sex,
--        COUNT(*) AS StudentCount,
--        AVG(AverageGrade) AS AverageGrade
-- FROM StudentPerformance
-- GROUP BY sex;

-- #School performance

-- SELECT school,
--        COUNT(*) AS StudentCount,
--        AVG(AverageGrade) AS AverageGrade
-- FROM StudentPerformance
-- GROUP BY school;









