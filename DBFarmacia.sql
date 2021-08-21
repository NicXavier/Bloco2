DROP DATABASE IF EXISTS db_farmacia_do_bem;
CREATE DATABASE IF NOT EXISTS db_farmacia_do_bem
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
higiene_pessoal VARCHAR (255) NOT NULL,
remedios VARCHAR (200) NOT NULL
);

SELECT * FROM tb_categoria;

INSERT INTO tb_categoria (higiene_pessoal, remedios) VALUES
('Creme Dental','Aspirina'),
('Fio Dental','Vitamina C'),
('Antitranspirante Aerosol','Scalid'),
('Enxaguante Bucal','Dipirona'),
('Escova Dental','Buscopan');

CREATE TABLE tb_produto(
	id BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    marca VARCHAR (100) NOT NULL,
    laboratorio VARCHAR (100) NOT NULL,
    cpf BIGINT NOT NULL,
    total DECIMAL (6,2) NOT NULL,
    produto_id BIGINT,
    FOREIGN KEY (produto_id) REFERENCES tb_produto (id)
);

SELECT * FROM tb_produto;

INSERT INTO tb_produto (marca,laboratorio,cpf,total,produto_id) VALUES
('Oral B','Bayer',42769837890,29.00,1),
('Colgate','Bayer',42769837817,24.00,1),
('Johnsons','Globo',42769812410,18.00,2),
('Dove','União Química',42769837890,52.00,3),
('Rexona','União Química',42769833330,62.00,3),
('Listerine','EMS',42769157247,39.00,4),
('Colgate Plus','EMS',42769893185,29.00,4),
('Oral B','Boehringer Ingelheim',42769333989,29.00,5);

SELECT * FROM tb_produto WHERE total > 50;

SELECT * FROM tb_produto WHERE total BETWEEN 3.00 AND 60.00;

SELECT * FROM tb_categoria WHERE remedios LIKE "%b%";

SELECT remedios AS produto, laboratorio AS laboratório, total AS valor 
FROM tb_categoria a
INNER JOIN tb_produto b
ON a.id = b.produto_id
GROUP BY remedios;

SELECT laboratorio FROM tb_produto ORDER BY laboratorio;


 


