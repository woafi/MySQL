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

SELECT * FROM Student;

DROP DATABASE College;

#VIEWS
CREATE VIEW view1 AS
SELECT rollno, name, marks FROM student;

SELECT * FROM view1;