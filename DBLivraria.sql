DROP DATABASE IF EXISTS db_livraria;
CREATE DATABASE IF NOT EXISTS db_livraria
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE db_livraria;

CREATE TABLE tb_estoque(
id BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
livro VARCHAR (255) NOT NULL,
autor VARCHAR (100) NOT NULL,
ano INT,
editora VARCHAR (200) NOT NULL,
valor FLOAT NOT NULL
);

SELECT * FROM tb_estoque;

INSERT INTO tb_estoque(livro,autor,ano,editora,valor) VALUES
('Anjos e Demônios','Dan Brown',2000,'Sextante Ficção',510.00),
('O Código da Vinci','Dan Brown',2003,'Sextante Ficção',490.00),
('O Símbolo Perdido','Dan Brown',2009,'Sextante Ficção',520.00),
('Inferno','Dan Brown',2013,'Sextante Ficção',480.00),
('Origem','Dan Brown',2017,'Sextante Ficção',530.00),
('Fortaleza Digital','Dan Brown',1998,'Sextante Ficção',470.00),
('Ponto de Impacto','Dan Brown',2001,'Sextante Ficção',540.00),
('O Mundo de Sofia','Jostein Gaarder',1991,'Aschehoug Forlag',460.00);

SELECT * FROM tb_estoque WHERE valor > 500.00;

SELECT * FROM tb_estoque WHERE valor < 500.00;

UPDATE tb_estoque SET valor = 600.00 WHERE id = 8;