DROP DATABASE IF EXISTS db_cursoDaMinhaVida;
CREATE DATABASE IF NOT EXISTS db_cursoDaMinhaVida
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    curso VARCHAR(255) NOT NULL,
    modulo VARCHAR(255) NOT NULL
    );
  
SELECT * FROM tb_categoria;

  INSERT INTO tb_categoria (curso, modulo) VALUES
  ('Inglês','Básico'),
  ('Inglês','Intermediário'),
  ('Inglês','Avançado'),
  ('Francês','Básico'),
  ('Francês','Intermediário');
  
   CREATE TABLE tb_produto(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	horaInicio TIME NOT NULL,
	horaTermino TIME NOT NULL,
	diaSemana VARCHAR (255) NOT NULL,
	valor DECIMAL(10,2) NOT NULL,
	idcategoria INT NOT NULL,
    FOREIGN KEY (idcategoria) REFERENCES tb_categoria (id)
);
    
SELECT * FROM tb_produto;
    
  INSERT INTO tb_produto (horaInicio, horaTermino, diaSemana, valor, idcategoria) VALUES
  ('17:00:00','18:30:00','Quarta-feira',150.00,1),
  ('10:00:00','12:30:00','Segunda-feira',250.00,1),
  ('17:00:00','17:30:00','Terça-feira',75.00,2),
  ('15:30:00','18:30:00','Sexta-feira',250.00,3),
  ('11:00:00','13:30:00','Domingo',300.00,3),
  ('17:00:00','18:30:00','Quarta-feira',150.00,4),
  ('18:00:00','18:30:00','Sábado',50.00,5),
  ('17:00:00','18:30:00','Quinta-feira',75.00,5);
  
SELECT * FROM tb_produto WHERE valor > 200.00; -- produtos acima de 200 reais

SELECT * FROM tb_produto WHERE valor BETWEEN 50.00 AND 150.00; -- produtos com o valor entre 3 e 60 reais

SELECT * FROM tb_categoria WHERE curso LIKE "%f%"; -- produtos que tenham a letra f

SELECT curso, modulo, diaSemana
FROM tb_categoria a
INNER JOIN tb_produto b  
ON a.id = b.idcategoria; -- junção das tabelas com as informações de produto, descrição e valor

SELECT diaSemana FROM tb_produto ORDER BY diaSemana; -- todos os produtos de uma categoria em ordem alfabética
