create database db_escola;

use db_escola;

create table tb_estudantes(
id int auto_increment,
nome varchar(200) not null,
idade int not null,
serie varchar(100) not null,
nota float not null,
primary key (id)
);

select * from tb_estudantes;

insert into tb_estudantes(nome,idade,serie,nota) values ("Nicole Xavier",17,"Terceiro EM",9.7);
insert into tb_estudantes(nome,idade,serie,nota) values ("Natasha Xavier",16,"Segundo EM",7.4);
insert into tb_estudantes(nome,idade,serie,nota) values ("Andreia Xavier",15,"Primeiro EM",9.1);
insert into tb_estudantes(nome,idade,serie,nota) values ("Railson Tiburcio",17,"Terceiro EM",8.6);
insert into tb_estudantes(nome,idade,serie,nota) values ("Bruce Xavier",14,"Oitado Ano",6.5);
insert into tb_estudantes(nome,idade,serie,nota) values ("Lincoln Xavier",13,"Sétimo Ano",6.0);
insert into tb_estudantes(nome,idade,serie,nota) values ("Ana Clara",12,"Sexto Ano",6.9);
insert into tb_estudantes(nome,idade,serie,nota) values ("Railda Tiburcio",11,"Quinto Ano",6.8);

select * from tb_estudantes where nota > 7.0;

select * from tb_estudantes where nota < 7.0;

update tb_estudantes set nota = 7.8 where id = 8;