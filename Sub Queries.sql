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
(101, "AMAN", 78,"C","kyoto"), 
(102, "RAHIM", 96, "A", "mizuhara"),
(103, "WOAFI", 84, "B", "kyoto"),
(104, "ROBI", 86, "A", "tokyo"),
(105, "FARAH", 12, "F", "tokyo"),
(106, "LUMINE", 82, "B", "tokyo");

SELECT * FROM Student;

DROP DATABASE College;

SELECT name, marks
FROM student
WHERE marks > (SELECT AVG(marks) FROM student);

SELECT marks FROM student WHERE city = "Delhi";

SELECT MAX(Marks) 
FROM Student
WHERE marks IN (SELECT marks FROM student WHERE city = "Delhi");

SELECT MAX(Marks)
FROM(SELECT * FROM student WHERE city = "Delhi") AS temp;