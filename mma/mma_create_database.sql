-- create and select the database
DROP DATABASE IF EXISTS mma;
CREATE DATABASE mma;
USE mma;

-- create the Product table
CREATE TABLE Product (
  ProductID      INT            PRIMARY KEY  AUTO_INCREMENT,
  Code           VARCHAR(10)    NOT NULL     UNIQUE,
  Description    VARCHAR(255)   NOT NULL,
  ListPrice      DECIMAL(10,2)  NOT NULL
);

-- insert some rows into the Product table
INSERT INTO `product` (Code, Description, ListPrice) VALUES
('java','Murach\'s Java Programming',57.50),
('jsp','Murach\'s Java Servlets and JSP',57.50),
('mysql','Murach\'s MySQL',54.50),
('android','Murach\'s Android Programming',57.50),
('html5','Murach\'s HTML5 and CSS3',54.50),
('oracle','Murach\'s Oracle and PL/SQL',54.50),
('javascript','Murach\'s JavaScript and jQuery',57.50),
('ASP.net','Murach\'s ASP.net',58.00),
('php','Murach\'s PHP',57.50),
('perl','Murach\'s Perl',57.50),
('ruby','Murach\'s Ruby',59.00),
('natecode','Murach\'s NateCode',435.00),
('test','test book',10.00);

-- create a user and grant privileges to that user
GRANT SELECT, INSERT, DELETE, UPDATE
ON mma.*
TO mma_user@localhost
IDENTIFIED BY 'sesame';