CREATE DATABASE College;
USE College;

CREATE TABLE Student(
id INT PRIMARY KEY,
name VARCHAR(50)
);

INSERT INTO Student (id, name)
VALUES
(101, "KARL"),
(102, "BOB"),
(103, "CASEY");

CREATE TABLE course(
id INT PRIMARY KEY,
course VARCHAR(50)
);

INSERT INTO course(id, course)
VALUES
(102, "English"),
(105, "Math"),
(103, "Physic"),
(107, "Chemistry");

#JOIN
SELECT *
FROM Student as s
INNER JOIN course as c
ON s.id = c.id;

#LEFT JOIN UNION RIGHT JOIN = FULL JOIN
SELECT *
FROM Student as s
LEFT JOIN course as c
ON s.id = c.id
UNION
SELECT *
FROM Student as s
RIGHT JOIN course as c
ON s.id = c.id;

#LEFT EXVLUSIVE JOIN
SELECT *
FROM Student as s
LEFT JOIN course as c
ON s.id = c.id
WHERE c.id IS NULL;


CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(50),
manager_id INT
);

INSERT INTO employee(id, name, manager_id)
VALUES
(101, "karl",103),
(102,"bob",104),
(103, "cassy", NULL),
(104, "Fritz", 103);

#SELF JOIN
SELECT a.name as manager_name, b.name 
FROM employee as a
JOIN employee as b
on a.id = b.manager_id;







