create database db_livraria;

use db_livraria;

create table tb_estoque(
id bigint auto_increment,
livro varchar (255) not null,
autor varchar (100) not null,
ano bigint,
editora varchar (200) not null,
valor float,
primary key (id)
);

select * from tb_estoque;

insert into tb_estoque(livro,autor,ano,editora,valor) values ("Anjos e Demônios","Dan Brown",2000,"Sextante Ficção",510.00);
insert into tb_estoque(livro,autor,ano,editora,valor) values ("O Código da Vinci","Dan Brown",2003,"Sextante Ficção",490.00);
insert into tb_estoque(livro,autor,ano,editora,valor) values ("O Símbolo Perdido","Dan Brown",2009,"Sextante Ficção",520.00);
insert into tb_estoque(livro,autor,ano,editora,valor) values ("Inferno","Dan Brown",2013,"Sextante Ficção",480.00);
insert into tb_estoque(livro,autor,ano,editora,valor) values ("Origem","Dan Brown",2017,"Sextante Ficção",530.00);
insert into tb_estoque(livro,autor,ano,editora,valor) values ("Fortaleza Digital","Dan Brown",1998,"Sextante Ficção",470.00);
insert into tb_estoque(livro,autor,ano,editora,valor) values ("Ponto de Impacto","Dan Brown",2001,"Sextante Ficção",540.00);
insert into tb_estoque(livro,autor,ano,editora,valor) values ("O Mundo de Sofia","Jostein Gaarder",1991,"Aschehoug Forlag",460.00);

select * from tb_estoque where valor > 500.00;

select * from tb_estoque where valor < 500.00;

update tb_estoque set valor = 600.00 where id = 8;