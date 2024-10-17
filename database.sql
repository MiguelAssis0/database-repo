CREATE DATABASE cinema;

USE cinema;

CREATE TABLE atores(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    primeiroNome varchar(20),
    ultimoNome varchar(20),
    genero char(1)
);

CREATE TABLE elencoFilme(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    atorId INT,
    filmeId INT,
    papel varchar(30),
    FOREIGN KEY (atorId) REFERENCES atores(id),
    FOREIGN KEY (filmeId) REFERENCES filmes(id)
);

CREATE TABLE filmes(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome varchar(50),
    ano INT,
    duracao INT
);

CREATE TABLE filmesGeneros(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    filmeId INT,
    generoId INT,
    FOREIGN KEY (filmeId) REFERENCES filmes(id),
    FOREIGN KEY (generoId) REFERENCES generos(id)
);

CREATE TABLE generos(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome varchar(20)
);

INSERT INTO atores(primeiroNome, ultimoNome, genero) VALUES
('Tony', 'Stark', 'M'),
('Steve', 'Rogers', 'M'),
('Thor', 'Odinson', 'M'),
('Bruce', 'Banner', 'M'),
('Natasha', 'Romanoff', 'F')   

INSERT INTO elencoFilme(atorId, filmeId, papel) VALUES
(1, 1, 'Capitão América'),
(1, 2, 'Capitão América'),
(1, 3, 'Capitão América'),  
(2, 1, 'Homem de Ferro'),
(2, 2, 'Homem de Ferro'),
(2, 3, 'Homem de Ferro'),
(3, 1, 'Thor'),
(3, 2, 'Thor'),
(3, 3, 'Thor'),
(4, 1, 'Homem de Ferro'),
(4, 2, 'Homem de Ferro'),
(4, 3, 'Homem de Ferro')

INSERT INTO filmes(nome, ano, duracao) VALUES
('Capitão América', 2010, 124),
('Homem de Ferro', 2010, 130),
('Thor', 2010, 115) 

INSERT INTO generos(nome) VALUES
('Ação'),
('Ficção Científica')

INSERT INTO filmesGeneros(filmeId, generoId) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3)

INSERT INTO atores(primeiroNome, ultimoNome, genero) VALUES
('Chris', 'Evans', 'M'),
('Scarlett', 'Johansson', 'F'),
('Chris', 'Hemsworth', 'M'),
('Jeremy', 'Renner', 'M'),
('Elizabeth', 'Olsen', 'F')

INSERT INTO elencoFilme(atorId, filmeId, papel) VALUES
(5, 1, 'Coringa'),
(5, 2, 'Coringa'),
(5, 3, 'Coringa'),
(6, 1, 'Coringa'),
(6, 2, 'Coringa'),
(6, 3, 'Coringa'),
(7, 1, 'Coringa'),
(7, 2, 'Coringa'),
(7, 3, 'Coringa'),
(8, 1, 'Coringa'),
(8, 2, 'Coringa'),
(8, 3, 'Coringa')

SELECT * FROM filmes
where ano = 2010 && duracao = 130
ORDER BY ano;

SELECT * FROM filmes
where nome = 'Capitão América';

SELECT * FROM filmes
where ano < 2010;

SELECT * FROM filmes
where duracao > 100 && duracao < 150;

SELECT COUNT(*) FROM filmes
where ano > 2000
ORDER BY ano DESC;

SELECT primeiroNome, ultimoNome FROM atores
where genero = 'M';

SELECT primeiroNome, ultimoNome FROM atores
where genero = 'F'
ORDER BY primeiroNome ASC;

SELECT nome,genero FROM filmes;
