CREATE DATABASE escola;
USE escola;

CREATE TABLE aluno (
    aluno_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE course (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_nome VARCHAR(100) NOT NULL
);

CREATE TABLE instrutor (
    instrutor_id INT AUTO_INCREMENT PRIMARY KEY,
    instrutor_nome VARCHAR(100) NOT NULL
);

CREATE TABLE enrollment (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id INT NOT NULL,
    course_id INT NOT NULL,
    instrutor_id INT NOT NULL,
    grade DECIMAL(4,2),

    FOREIGN KEY (aluno_id) REFERENCES aluno(aluno_id),
    FOREIGN KEY (course_id) REFERENCES course(course_id),
    FOREIGN KEY (instrutor_id) REFERENCES instrutor(instrutor_id)
);

INSERT INTO aluno(nome) VALUES
("Alice"),
("Bruno"),
("Carla"),
("Davi"),
("Eva");

INSERT INTO course(course_nome) VALUES
("Matemática"),
("Inglês"),
("Física"),
("Química");

INSERT INTO instrutor(instrutor_nome) VALUES
("Maria"),
("João"),
("Sofia");

INSERT INTO enrollment(aluno_id, course_id, instrutor_id, grade) VALUES
(1, 1, 1, 18.50),
(2, 3, 2, 15.00),
(3, 2, 1, 17.25),
(4, 4, 3, 16.75),
(5, 2, 2, 14.50);

START TRANSACTION;

INSERT INTO aluno(nome)
VALUES ("Maria");

INSERT INTO enrollment(aluno_id, course_id, instrutor_id, grade)
VALUES (6, 1, 1, 18.00);

COMMIT;

SELECT aluno.aluno_id, course.course_id
FROM aluno
JOIN enrollment ON aluno.aluno_id = enrollment.aluno_id
JOIN course ON course.course_id = enrollment.course_id;

UPDATE enrollment
SET grade = 19.00
WHERE aluno_id = 1;

SELECT
    aluno.nome AS Nome_Aluno,
    course.course_nome AS Course,
    instrutor.instrutor_nome AS Instrutor,
    enrollment.grade AS Grade
FROM enrollment
JOIN aluno ON enrollment.aluno_id = aluno.aluno_id
JOIN course ON enrollment.course_id = course.course_id
JOIN instrutor ON enrollment.instrutor_id = instrutor.instrutor_id;

SELECT nome
FROM aluno;

SELECT nome, grade
FROM enrollment
JOIN aluno ON aluno.aluno_id = enrollment.aluno_id
WHERE grade > 17;

ALTER TABLE aluno
ADD data_nascimento DATE;

INSERT INTO aluno(nome)
VALUES ("Jonas");

DELETE FROM aluno
WHERE aluno_id = 8;

CREATE TABLE aluno2 (
    aluno2_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

DROP TABLE aluno2;

CREATE DATABASE tttttt;

DROP DATABASE tttttt;