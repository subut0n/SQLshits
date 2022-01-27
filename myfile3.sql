CREATE DATABASE studies;
CREATE TABLE students
(
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(100),
    PRIMARY KEY(id)
);
CREATE TABLE papers
(
    title VARCHAR(100),
    grade INT NOT NULL,
    student_id INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(id)
);
INSERT INTO students (first_name) VALUES
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');
INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);
SELECT students.first_name, papers.title, papers.grade FROM students JOIN papers ON students.id=papers.student_id;
SELECT students.first_name, papers.title, papers.grade FROM students LEFT JOIN papers ON students.id=papers.student_id;
SELECT students.first_name, IFNULL(papers.title, 'MISSING') AS Title, IFNULL(papers.grade,0) AS Grade FROM students LEFT JOIN papers ON students.id=papers.student_id;
SELECT students.first_name, IFNULL(AVG(papers.grade), 0)  AS grade 
FROM students 
LEFT JOIN papers ON students.id=papers.student_id
GROUP BY students.first_name
ORDER BY AVG(papers.grade) DESC;



