#CREATE
CREATE DATABASE College;

USE College;

#DROP
DROP DATABASE College;

#CREATE
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

#ALTER
ALTER TABLE student ADD COLUMN age INT NOT NULL DEFAULT 19; #CHECK (Age >=18), UNIQUE
ALTER TABLE student DROP COLUMN age;
ALTER TABLE pupil RENAME TO student;
ALTER TABLE student RENAME COLUMN Grade TO G;
ALTER TABLE student CHANGE COLUMN G Grade VARCHAR(50);
ALTER TABLE student MODIFY age DATE;

#TRUNCATE
TRUNCATE TABLE Student;


