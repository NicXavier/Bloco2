DROP DATABASE IF EXISTS db_funcionario;
CREATE DATABASE IF NOT EXISTS db_funcionario
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE db_funcionario;

CREATE TABLE tb_dados(
id BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome VARCHAR (200) NOT NULL,
idade INT NOT NULL,
telefone BIGINT NOT NULL,
salario FLOAT
);

SELECT * FROM tb_dados;

INSERT INTO tb_dados (nome,idade,telefone,salario) VALUES 
('Bruce',20,987654321,1500.00),
('Lincoln',19,912345678,1200.00),
('Natasha',21,981236547,2500.00),
('Nicole',25,986532147,3000.00),
('Andreia',40,987321456,4000.00);

SELECT * FROM tb_dados WHERE salario < 2000.00;

SELECT * FROM tb_dados WHERE salario > 2000.00;

UPDATE tb_dados SET salario = 5000.00 WHERE id = 5;


