CREATE DATABASE College;
USE College;
DROP DATABASE College;

CREATE TABLE Department(
id INT PRIMARY KEY,
name VARCHAR(50)
);

CREATE TABLE Teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT, 
FOREIGN KEY (dept_id) REFERENCES Department(id)
ON UPDATE CASCADE
ON DELETE CASCADE
);

INSERT INTO Department VALUES
(101, "Math"),
(102, "English"),
(103, "Physic");

SELECT * FROM Department;

INSERT INTO Teacher Values
(101, "Michael",102),
(102, "Trimer", 101),
(103, "Fritz", 103),
(104, "karl", 101);

ALTER TABLE Teacher
ADD dept_name VARCHAR(50);

ALTER TABLE Teacher
DROP COLUMN dept_name;

INSERT INTO Teacher (dept_name)
SELECT name FROM Department;


SELECT * FROM Teacher;

UPDATE Department SET id = 104 WHERE id = 103;

















