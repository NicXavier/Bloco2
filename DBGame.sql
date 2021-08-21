DROP DATABASE IF EXISTS db_generation_game_online;
CREATE DATABASE IF NOT EXISTS db_generation_game_online
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE db_generation_game_online;

CREATE TABLE tb_classe(
id BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
casa VARCHAR(255) NOT NULL,
simbolo VARCHAR (255) NOT NULL
);

SELECT * FROM tb_classe;

INSERT INTO tb_classe (casa,simbolo) VALUES
('Stark','Lobo'),
('Targaryen','Dragão'),
('Lannister','Leão'),
('Baratheon','Veado'),
('Greyjoy','Lula');

CREATE TABLE tb_personagem(
id BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome VARCHAR (255) NOT NULL,
sede VARCHAR (100) NOT NULL,
ataque BIGINT,
defesa BIGINT,
classe_id BIGINT NOT NULL,
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

SELECT * FROM tb_personagem;

INSERT INTO tb_personagem (nome,sede,ataque,defesa,classe_id) VALUES
('Sansa','Winterfell',2300,1700,1),
('Arya','Winterfell',2700,2300,1),
('Daenerys','Pedra do Dragão',2300,1700,2),
('Cersei','Casterly',2000,2100,3),
('Tyrion','Casterly',1900,1500,3),
('Myrcella','Ponta Tempestade',1700,1000,4),
('Yara','Pyke',2200,2000,5),
("Theon","Pyke",1800,2200,5);

SELECT * FROM tb_personagem WHERE ataque > 2000;

SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagem WHERE nome LIKE "%c%";

SELECT casa, nome
FROM tb_personagem b
INNER JOIN tb_classe a
ON a.id = b.classe_id
GROUP BY casa;

SELECT * FROM tb_classe WHERE casa LIKE "%Lannister%";
