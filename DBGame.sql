create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
casa varchar(255) not null,
simbolo varchar (255) not null,
primary key (id)
);

select * from tb_classe;

insert into tb_classe (casa,simbolo) values ('Stark',"Lobo");
insert into tb_classe (casa,simbolo) values ("Targaryen","Dragão");
insert into tb_classe (casa,simbolo) values ("Lannister","Leão");
insert into tb_classe (casa,simbolo) values ("Baratheon","Veado");
insert into tb_classe (casa,simbolo) values ("Greyjoy","Lula");

create table tb_personagem(
id bigint auto_increment,
nome varchar (255) not null,
sede varchar (100) not null,
ataque bigint,
defesa bigint,
classe_id bigint not null,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

select * from tb_personagem;

insert into tb_personagem (nome,sede,ataque,defesa,classe_id) values ("Sansa","Winterfell",2300,1700,1);
insert into tb_personagem (nome,sede,ataque,defesa,classe_id) values ("Arya","Winterfell",2700,2300,1);
insert into tb_personagem (nome,sede,ataque,defesa,classe_id) values ("Daenerys","Pedra do Dragão",2300,1700,2);
insert into tb_personagem (nome,sede,ataque,defesa,classe_id) values ("Cersei","Casterly",2000,2100,3);
insert into tb_personagem (nome,sede,ataque,defesa,classe_id) values ("Tyrion","Casterly",1900,1500,3);
insert into tb_personagem (nome,sede,ataque,defesa,classe_id) values ("Myrcella","Ponta Tempestade",1700,1000,4);
insert into tb_personagem (nome,sede,ataque,defesa,classe_id) values ("Yara","Pyke",2200,2000,5);
insert into tb_personagem (nome,sede,ataque,defesa,classe_id) values ("Theon","Pyke",1800,2200,5);

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like "%c%";

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where casa like "%Lannister%";
