DROP DATABASE IF EXISTS db_cidade_das_frutas;
CREATE DATABASE IF NOT EXISTS db_cidade_das_frutas
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE db_cidade_das_frutas;

CREATE TABLE tb_categoria(
id BIGINT,
descricao VARCHAR (255) NOT NULL,
ativo BOOLEAN NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (id,descricao,ativo) VALUES 
(1,'Frutas Frescas',TRUE),
(2,'Frutas Secas',TRUE),
(3,'Legumes',TRUE),
(4,'Verduras',TRUE),
(5,'Temperos',TRUE);

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
validade DATE,
quantidade INT NOT NULL,
preco DECIMAL (6,2) NOT NULL,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);


INSERT INTO tb_produto (nome,validade,quantidade,preco,categoria_id) values
("Acerola","2021-08-26",20,15.00,1),
("Tâmara","2021-09-23",40,49.00,2),
("Damasco","2021-09-17",50,52.00,2),
("Cominho","2021-10-26",2,5.00,5),
("Coouve-Flor","2021-08-28",10,55.00,3),
("Brócolis","2021-08-24",15,60.00,3),
("Morango","2021-08-26",7,35.00,1),
("Couve","2021-08-30",20,15.00,4);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco > 50.00;

SELECT * FROM tb_produto WHERE preco BETWEEN 3.00 AND 60.00;

SELECT * FROM tb_produto WHERE nome LIKE "C%"; -- selecionar produtos que comecem com a letra c

SELECT descricao AS Produto, nome, preco AS ValorTotal
FROM tb_categoria a
INNER JOIN tb_produto b on a.id = b.categoria_id
GROUP BY nome;
