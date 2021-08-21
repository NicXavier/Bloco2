DROP DATABASE IF EXISTS db_escola;
CREATE DATABASE IF NOT EXISTS db_escola
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;
    
USE db_escola;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome VARCHAR(200) NOT NULL,
idade INT NOT NULL,
serie varchar(100) NOT NULL,
nota FLOAT NOT NULL
);

SELECT * FROM tb_estudantes;

INSERT INTO tb_estudantes(nome,idade,serie,nota) VALUES
('Nicole Xavier',17,'Terceiro EM',9.7),
('Natasha Xavier',16,'Segundo EM',7.4),
('Andreia Xavier',15,'Primeiro EM',9.1),
('Railson Tiburcio',17,'Terceiro EM',8.6),
('Bruce Xavier',14,'Oitado Ano',6.5),
('Lincoln Xavier',13,'Sétimo Ano',6.0),
('Ana Clara',12,'Sexto Ano',6.9),
('Railda Tiburcio',11,'Quinto Ano',6.8);

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 7.8 WHERE id = 8;