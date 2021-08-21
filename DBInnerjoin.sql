DROP DATABASE IF EXISTS db_cidade_das_carnes;
CREATE DATABASE IF NOT EXISTS db_cidade_das_carnes
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE db_cidade_das_carnes;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
descricao VARCHAR (255) NOT NULL,
ativo BOOLEAN NOT NULL
);

INSERT INTO tb_categoria (descricao, ativo) VALUES
("Bovino",TRUE),
('Suino',TRUE),
('Aves',TRUE),
('pertence feijoada',TRUE),
('imbutidos',TRUE),
('soja',TRUE),
('outros',TRUE);

SELECT * FROM tb_categoria;

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome VARCHAR (255) NOT NULL,
preco DECIMAL (6,2) NOT NULL,
qtproduto INT NOT NULL,
dtvalidade DATE,
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) VALUES 
('Asa',40.00,30,'2021-11-07', 3),
('Picanha',20.00,30,'2021-11-08', 1),
('Coxa de frango',20.00,30,'2021-11-07', 3),
('Bacon',30.00,30,'2021-11-09', 1),
('Hambúrguer',60.00,30,'2021-09-07', 5),
('Cupim',20.00,30,'2021-11-10', 1),
('Peito de frango',25.00,30,'2021-11-09', 3),
('Orelha de porco',20.00,30,'2021-11-07', 4),
('Salame',18.00,30,'2021-11-21', 5),
('Medalhão',50.00,30,'2021-11-15', 3),
('Mocotó',20.00,30,'2021-10-05', 2),
('Chuleta',20.00,30,'2021-10-07', 1);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos ORDER BY nome; -- ordem nome ascendente

SELECT * FROM tb_produtos ORDER BY nome DESC; -- ordem nome descendente

SELECT * FROM tb_produtos WHERE preco > 20.00 AND categoria_id = 1; -- preço maior que 20 e pertença a categoria 1

SELECT * FROM tb_produtos WHERE preco > 20.00 OR categoria_id = 1; -- preço maior que 20 e pertença a categoria 1

SELECT * FROM tb_produtos WHERE NOT categoria_id = 1; -- mostra valores que nao sao da categoria 1

SELECT * FROM tb_produtos WHERE nome LIKE "ha%"; -- palavras que comecem com ha

SELECT * FROM tb_produtos WHERE nome LIKE "%ha%"; -- palavras que tenham ha em qualquer lugar

SELECT * FROM tb_produtos WHERE nome LIKE "%ha"; -- palavras que terminem com ha

SELECT * FROM tb_produtos WHERE preco IN (20, 30, 40); -- mostra os dados inseridos na lista 

SELECT * FROM tb_produtos WHERE preco BETWEEN 20 AND 40; -- mostra os dados entre 20 e 40

SELECT * FROM tb_produtos WHERE preco BETWEEN 20 AND 40 ORDER BY preco, nome;

SELECT AVG (preco) FROM tb_produtos;

SELECT nome, preco AS preço, descricao AS descrição
FROM tb_produtos a
INNER JOIN tb_categoria b
ON b.id = a.categoria_id;