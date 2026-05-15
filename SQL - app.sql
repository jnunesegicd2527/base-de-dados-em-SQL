-- create database aula_1;
use aula_1;

create table preferences (
    id int auto_increment primary key,
    nome varchar(100) not null,
    idade int not null,
    favorite_color varchar(100) not null,
    country varchar(100)
);

create table photography (
    id int auto_increment primary key,
    nome varchar(100) not null,
    idade int not null,
    photo varchar(100) not null,
    country varchar(100)
);

create table books (
    id int auto_increment primary key,
    nome varchar(100) not null,
    titulo varchar(100) not null,
    autor varchar(100) not null,
    genero varchar(100)
);

create table publicacao (
    id int auto_increment primary key,
    books_id int not null,
    photography_id int not null,
    preferences_id int not null,
    preco int not null,
    foreign key (books_id) references books(id),
    foreign key (photography_id) references photography(id),
    foreign key (preferences_id) references preferences(id)
);

insert into photography (nome, idade, photo, country)
values 
('lucas', 30, 'familia', 'brasil'),
('marina', 27, 'feminino', 'portugal'),
('livia', 27, 'gestante', 'frança');

insert into books (nome, titulo, autor, genero)
values 
('fernanda', 'cinderela', 'disney', 'romance'),
('rafael', 'pinóquio', 'pixar', 'infantil'),
('juliana', 'a bela e a fera', 'paramount', 'suspense');

insert into preferences (nome, idade, favorite_color, country)
values 
('joana', 28, 'azul', 'brasil'),
('carlos', 35, 'verde', 'portugal'),
('ana', 22, 'vermelho', 'itália');



