DROP DATABASE IF EXISTS db_pizzaria_legal;
CREATE DATABASE IF NOT EXISTS db_pizzaria_legal
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
pizza VARCHAR (100) NOT NULL,
bebida VARCHAR (100)
);

SELECT * FROM tb_categoria;

INSERT INTO tb_categoria (pizza,bebida) VALUES
('Pepperoni','Coca-Cola'),
('Marguerita','Fanta Uva'),
('Portuguesa','Fanta Laranja'),
('Brigadeiro','Guaraná Antarctica'),
('Romeu e Julieta','Sprite');

CREATE TABLE tb_pizza(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
borda VARCHAR(100) NOT NULL,
tipo VARCHAR(100) NOT NULL,
observação VARCHAR (200) NOT NULL,
valor_total DECIMAL (6,2),
categoria_id BIGINT
);

 ALTER TABLE tb_pizza ADD CONSTRAINT fk_categoria_id
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id);

SELECT * FROM tb_pizza;

INSERT INTO tb_pizza (borda,tipo,observação,valor_total,categoria_id) VALUES 
 ('Catupiry','Brotinho','Pepperoni extra',45.00,1),
 ('Catupiry','Tradicional','Pepperoni extra',65.00,1),
 ('Catupiry','Tradicional','Manjericao extra',60.00,2),
 ('Cheddar','Brotinho','Sem observações',40.00,2),
 ('Cheddar','Tradicional','Sem ovo',60.00,3),
 ('Sem borda','Brotinho','Chocolate extra',55.00,4),
 ('Sem borda','Brotinho','Goiabada extra',50.00,5),
 ('Sem borda','Brotinho','Queijo extra',50.00,5);

SELECT * FROM tb_pizza WHERE valor_total > 45.00;

SELECT * FROM tb_pizza WHERE valor_total BETWEEN 29.00 AND 60.00;

SELECT * FROM tb_categoria WHERE pizza LIKE "%c%";

SELECT pizza, observação, valor_total AS total
FROM tb_pizza 
INNER JOIN tb_categoria ON tb_categoria.id = tb_pizza.categoria_id;

SELECT * FROM tb_pizza WHERE tipo LIKE "Brotinho";