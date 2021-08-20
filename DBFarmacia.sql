create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
higiene_pessoal varchar (255),
remedios varchar (200),
primary key (id) 
);

select * from tb_categoria;

insert into tb_categoria (higiene_pessoal, remedios) values ("Creme Dental","Aspirina");
insert into tb_categoria (higiene_pessoal, remedios) values ("Fio Dental","Vitamina C");
insert into tb_categoria (higiene_pessoal, remedios) values ("Antitranspirante Aerosol","Scalid");
insert into tb_categoria (higiene_pessoal, remedios) values ("Enxaguante Bucal","Dipirona");
insert into tb_categoria (higiene_pessoal, remedios) values ("Escova Dental","Buscopan");

create table tb_produto(
	id bigint auto_increment,
    marca varchar (100) not null,
    laboratorio varchar (100) not null,
    cpf bigint not null,
    total decimal (6,2) not null,
    produto_id bigint,
    primary key (id),
    foreign key (produto_id)references tb_produto (id)
);

select * from tb_produto;

insert into tb_produto (marca,laboratorio,cpf,total,produto_id) values ("Oral B","Bayer",42769837890,29.00,1);
insert into tb_produto (marca,laboratorio,cpf,total,produto_id) values ("Colgate","Bayer",42769837817,24.00,1);
insert into tb_produto (marca,laboratorio,cpf,total,produto_id) values ("Johnsons","Globo",42769812410,18.00,2);
insert into tb_produto (marca,laboratorio,cpf,total,produto_id) values ("Dove","União Química",42769837890,52.00,3);
insert into tb_produto (marca,laboratorio,cpf,total,produto_id) values ("Rexona","União Química",42769833330,62.00,3);
insert into tb_produto (marca,laboratorio,cpf,total,produto_id) values ("Listerine","EMS",42769157247,39.00,4);
insert into tb_produto (marca,laboratorio,cpf,total,produto_id) values ("Colgate Plus","EMS",42769893185,29.00,4);
insert into tb_produto (marca,laboratorio,cpf,total,produto_id) values ("Oral B","Boehringer Ingelheim",42769333989,29.00,5);

select * from tb_produto where total > 50;

select * from tb_produto where total between 3.00 and 60.00;

select * from tb_categoria where remedios like "%b%";


