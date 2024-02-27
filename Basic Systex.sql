CREATE DATABASE College;
USE College;
CREATE TABLE Student(
	Rollno INT PRIMARY KEY,
    Name VARCHAR(50),
    Registration INT UNIQUE,
    PRIMARY KEY (Rollno, Registration),
	Age INT NOT NULL CHECK (Age >=18)
    );
INSERT INTO Student (Rollno, Name, Registration, Age) VALUES (1, "AMAN", 28391274, 19), (2, "RAHIM", 28391279, 18);
INSERT INTO Student VALUES (3, "WOAFI", 28391273, 19);
SELECT * FROM Student;
SHOW TABLES;
DROP TABLE Student;



