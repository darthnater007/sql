DROP DATABASE IF EXISTS students;
CREATE DATABASE students;
USE students;

CREATE TABLE Course
(
ID		INT			PRIMARY KEY	AUTO_INCREMENT,
NAME	VARCHAR(25)	NOT NULL
);

CREATE TABLE User
(
ID			INT PRIMARY KEY AUTO_INCREMENT,
NAME		VARCHAR(25) 	NOT NULL,
COURSEID 	INT,

FOREIGN KEY (CourseID) REFERENCES Course (ID)
);
INSERT Course VALUES
(1, 'HTML 5'),
(2, 'CSS 3'),
(3, 'Javascript'),
(4, 'PHP'),
(5, 'MySQL');

INSERT User (Name, CourseID) VALUES
('Alice',1),
('Bob', 1),
('Coraline',2),
('David', 5),
('Emma', null);

