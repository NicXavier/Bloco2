Create database db_funcionario;

use db_funcionario;

create table tb_dados(
id bigint auto_increment,
nome varchar (200) not null,
idade int,
telefone bigint,
salario float,
primary key (id)
);

select * from tb_dados;

insert into tb_dados(nome,idade,telefone,salario) values("Bruce",20,987654321,1500.00);
insert into tb_dados(nome,idade,telefone,salario) values("Lincoln",19,912345678,1200.00);
insert into tb_dados(nome,idade,telefone,salario) values("Natasha",21,981236547,2500.00);
insert into tb_dados(nome,idade,telefone,salario) values("Nicole",25,986532147,3000.00);
insert into tb_dados(nome,idade,telefone,salario) values("Andreia",40,987321456,4000.00);

select * from tb_dados where salario < 2000.00;

select * from tb_dados where salario > 2000.00;

update tb_dados set salario = 5000.00 where id = 5;


