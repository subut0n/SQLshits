show databases; 
CREATE DATABASE cats;
USE cats;
DROP DATABASE cats;
CREATE DATABASE animals;
USE animals;
CREATE TABLE dog_infos
(
    name VARCHAR(30),
    age INT,
    breed VARCHAR(50)
);
show tables;
show columns FROM dog_infos;
INSERT INTO dog_infos VALUES ("Sushi", 10, "Pekinois");
SELECT * FROM dog_infos;
INSERT INTO dog_infos (name, age, breed)
VALUES
    ('Horacio', 4, 'Labrador'),
    ('Ruby', 6, 'Doberman'),
    ('Kiwi', 9, 'Rottweiler');
SELECT * FROM dog_infos;
INSERT INTO dog_infos(name) VALUES ('Sapin');
CREATE TABLE cats
(
    name VARCHAR(30) NOT NULL,
    age INT NOT NULL
);
INSERT INTO cats VALUES ('Filou');
CREATE TABLE cats2
(
    name VARCHAR(30) DEFAULT 'pas de nom fourni',
    age INT DEFAULT 99
);
INSERT INTO cats2(age) VALUES (13);
INSERT INTO cats2(name) VALUES ('Mathusalem');
SELECT * FROM cats2;
INSERT INTO cats2 VALUES ();
SELECT * FROM cats2;
CREATE TABLE cats3
(
    name VARCHAR(30) DEFAULT 'pas de nom fourni' NOT NULL,
    age INT DEFAULT 99 NOT NULL
)
CREATE TABLE unique_cats
(
    cat_id INT NOT NULL PRIMARY KEY,
    name VARCHAR(100),
    age INT
);
INSERT INTO unique_cats VALUES (1, 'Louise', 3);
CREATE TABLE unique_cats2
(
    cat_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT
);
INSERT INTO unique_cats2(name, age)
VALUES
    ('Skippy', 3),
    ('Jiff', 4),
    ('Skippy', 3),
    ('Skippy', 3),
    ('Jiff', 4);
/*
+--------+--------+------+
| cat_id | name   | age  |
+--------+--------+------+
|      1 | Skippy |    3 |
|      2 | Jiff   |    4 |
|      3 | Skippy |    3 |
|      4 | Skippy |    3 |
|      5 | Jiff   |    4 |
+--------+--------+------+
*/
DROP TABLE dog_infos, cats, cats2, cats3, unique_cats;
CREATE DATABASE Employees;
CREATE TABLE Employees
(
    id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT  NULL,
    middle_name VARCHAR(255),
    age INT NOT NULL,
    current_status VARCHAR(255) DEFAULT 'employed' NOT NULL
);
INSERT INTO Employees(first_name, last_name, age) VALUES ('Dora', 'SMITH', 58);
SELECT * FROM Employees;
DROP DATABASE Employees;