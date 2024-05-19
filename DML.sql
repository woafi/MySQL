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
(101, "AMAN", 78,"C","kyoto"), 
(102, "RAHIM", 96, "A", "mizuhara"),
(103, "WOAFI", 84, "B", "kyoto"),
(104, "ROBI", 86, "A", "tokyo"),
(105, "FARAH", 12, "F", "tokyo"),
(106, "LUMINE", 82, "B", "tokyo");

SELECT * FROM Student;

#UPDATE
SET SQL_SAFE_UPDATES = 0;
UPDATE Student SET name = "BOB" WHERE rollno = 101;
UPDATE Student SET city = "akihabara" WHERE city = "tokyo";
UPDATE Student SET marks = marks + 1;

#DELETE
DELETE FROM student WHERE marks < 33;
DELETE FROM Student;







