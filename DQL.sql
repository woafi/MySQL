CREATE DATABASE College;
USE College;

CREATE TABLE Student(
	Rollno INT PRIMARY KEY,
    Name VARCHAR(50),
    Marks INT NOT NULL,
    Grade VARCHAR(1),
    City VARCHAR(20)
    );
INSERT INTO Student 
(Rollno, Name, Marks, Grade, City) 
VALUES 
(101, "AMAN", 78,"C","Pune"), 
(102, "RAHIM", 96, "A", "Mumbai"),
(103, "WOAFI", 84, "B", "Mumbai"),
(104, "ROBI", 86, "A", "Delhi"),
(105, "FARAH", 12, "F", "Delhi"),
(106, "LUMINE", 82, "B", "Delhi");
 
#SELECT
SELECT * FROM Student;
SELECT DISTINCT City FROM Student;

#WHERE CLAUSE
SELECT * FROM Student WHERE Marks > 80 AND City ="Mumbai";
SELECT * FROM Student WHERE Marks > 80 OR City ="Mumbai";
SELECT * FROM Student WHERE Marks+10 > 100;
SELECT * FROM Student WHERE Marks BETWEEN 80 AND 90;
SELECT * FROM Student WHERE City IN ("Delhi", "Mumbai");
SELECT * FROM Student WHERE City NOT IN ("Delhi", "Mumbai");
SELECT * FROM Student WHERE City IN ("Jhenaidah", "Dhaka");
SELECT * FROM Student WHERE Marks > 75 LIMIT 3;

#ORDER CLAUSE
SELECT * FROM Student ORDER BY City DESC;

#Aggregration function
SELECT MAX(Marks) FROM Student; 
SELECT MIN(Marks) FROM Student;
SELECT AVG(Marks) FROM Student;
SELECT COUNT(Name) FROM Student;

#WHERE CLAUSE
SELECT City, COUNT(grade) FROM Student GROUP BY City;

#HAVE CLAUSE
SELECT count(rollno), City FROM student GROUP BY city HAVING max(marks) > 80;

#General
SELECT city
FROM Student
WHERE grade ="A"
GROUP BY city
HAVING max(marks) > 80
ORDER BY City DESC;



DROP TABLE Student;
DROP DATABASE college;