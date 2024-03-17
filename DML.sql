CREATE DATABASE College;
USE College;
DROP DATABASE College;

CREATE TABLE Student(
	Rollno INT PRIMARY KEY,
    Name VARCHAR(50),
    Marks INT NOT NULL,
    Grade VARCHAR(1),
    City VARCHAR(20)
    );
    
#INSERT
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

#UPDATE
SET SQL_SAFE_UPDATES = 0;
UPDATE Student SET name = "BOB" WHERE rollno = 101;
UPDATE Student SET city = "New York" WHERE city = "Delhi";
UPDATE Student SET marks = marks + 1;

#DELETE
DELETE FROM student WHERE marks < 33;
DELETE FROM Student;







