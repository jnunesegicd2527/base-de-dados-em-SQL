CREATE DATABASE Artes;
USE Artes;

CREATE TABLE nomes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    cor_favorita VARCHAR(100) NOT NULL,
    pais VARCHAR(100)
);

CREATE TABLE estilo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    estilo VARCHAR(100) NOT NULL,
    pais VARCHAR(100)
);

CREATE TABLE livros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    genero VARCHAR(100) NOT NULL
);

CREATE TABLE publicacao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livros_id INT NOT NULL,
    estilo_id INT NOT NULL,
    nomes_id INT NOT NULL,
    preco INT NOT NULL,
    FOREIGN KEY (livros_id) REFERENCES livros(id),
    FOREIGN KEY (estilo_id) REFERENCES estilo(id),
    FOREIGN KEY (nomes_id) REFERENCES nomes(id)
);

INSERT INTO nomes (nome, idade, cor_favorita, pais)
VALUES
('Joana', 28, 'azul', 'Brasil'),
('Carlos', 35, 'verde', 'Portugal'),
('Ana', 22, 'vermelho', 'Itália');

INSERT INTO estilo (nome, idade, estilo, pais)
VALUES
('Lucas', 30, 'familia', 'Brasil'),
('Marina', 27, 'feminino', 'Portugal'),
('Livia', 27, 'gestante', 'França');

INSERT INTO livros (nome, titulo, genero)
VALUES
('Fernanda', 'Cinderela', 'Romance'),
('Rafael', 'Pinóquio', 'Infantil'),
('Juliana', 'A Bela e a Fera', 'Suspense');

INSERT INTO publicacao (livros_id, estilo_id, nomes_id, preco)
VALUES
(1, 1, 1, 120),
(2, 2, 2, 110),
(3, 3, 3, 100);

SELECT nome, idade, pais
FROM nomes;

SELECT nome, idade, pais
FROM nomes
WHERE pais = 'Brasil';

SELECT nome, idade
FROM nomes
WHERE idade > 25;
