DROP DATABASE IF EXISTS db_construindo_a_nossa_vida;
CREATE DATABASE IF NOT EXISTS db_construindo_a_nossa_vida
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    produto VARCHAR(255) NOT NULL,
    categoria VARCHAR(255) NOT NULL
    );
  
SELECT * FROM tb_categoria;

  INSERT INTO tb_categoria (produto, categoria) VALUES
    ('Piso','Acabamento'),
    ('Tinta','Acabamento'),
    ('Bloco','Construção'),
    ('Areia','Construção'),
    ('Ferro','Construção');
    
    CREATE TABLE tb_produto(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	codigo BIGINT NOT NULL,
	descricao VARCHAR(255) NOT NULL,
	estoque BIGINT,
	valor_unitario DECIMAL(10,2) NOT NULL,
	idcategoria INT NOT NULL,
    FOREIGN KEY (idcategoria) REFERENCES tb_categoria (id)
);
    
SELECT * FROM tb_produto;
    
  INSERT INTO tb_produto (codigo, descricao, estoque, valor_unitario, idcategoria) VALUES
  (15900,'Piso Laminado',40,29.99,1),
  (16800,'Tinta Esmalte',35,109.99,2),
  (15100,'Bloco Baiano',5000,0.90,3),
  (12600,'Areia',60,39.99,4),
  (13500,'Ferro',25,52.99,5),
  (14300,'Porcelanato',40,69.99,1),
  (15000,'Madeira',80,55.99,1),
  (16400,'Tinta Coral',30,89.99,2);
   
SELECT * FROM tb_produto WHERE valor_unitario > 50.00; -- produtos acima de 50 reais

SELECT * FROM tb_produto WHERE valor_unitario BETWEEN 3.00 AND 60.00; -- produtos com o valor entre 3 e 60 reais

SELECT * FROM tb_produto WHERE descricao LIKE "%c%"; -- produtos que tenham a letra c

SELECT produto, descricao AS descrição, valor_unitario AS valor
FROM tb_produto a
INNER JOIN tb_categoria b  
ON b.id = a.idcategoria; -- junção das tabelas com as informações de produto, descrição e valor

SELECT descricao FROM tb_produto ORDER BY descricao; -- todos os produtos de uma categoria em ordem alfabética
