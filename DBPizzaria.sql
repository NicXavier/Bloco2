create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
pizza varchar (100) not null,
bebida varchar (100),
primary key (id)
);

select * from tb_categoria;

insert into tb_categoria (pizza,bebida) values ("Pepperoni","Coca-Cola");
insert into tb_categoria (pizza,bebida) values ("Marguerita","Fanta Uva");
insert into tb_categoria (pizza,bebida) values ("Portuguesa","Fanta Laranja");
insert into tb_categoria (pizza,bebida) values ("Brigadeiro","Guaraná Antarctica");
insert into tb_categoria (pizza,bebida) values ("Romeu e Julieta","Sprite");

create table tb_pizza(
id bigint auto_increment,
borda varchar(100) not null,
tipo varchar(100) not null,
observação varchar (200) not null,
valor_total decimal (6,2),
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) references tb_categoria (id)
);

select * from tb_pizza;

insert into tb_pizza (borda,tipo,observação,valor_total,categoria_id) values ("Catupiry","Brotinho","Pepperoni extra",45.00,1);
insert into tb_pizza (borda,tipo,observação,valor_total,categoria_id) values ("Catupiry","Tradicional","Pepperoni extra",65.00,1);
insert into tb_pizza (borda,tipo,observação,valor_total,categoria_id) values ("Catupiry","Tradicional","Manjericao extra",60.00,2);
insert into tb_pizza (borda,tipo,observação,valor_total,categoria_id) values ("Cheddar","Brotinho","Sem observações",40.00,2);
insert into tb_pizza (borda,tipo,observação,valor_total,categoria_id) values ("Cheddar","Tradicional","Sem ovo",60.00,3);
insert into tb_pizza (borda,tipo,observação,valor_total,categoria_id) values ("Sem borda","Brotinho","Chocolate extra",55.00,4);
insert into tb_pizza (borda,tipo,observação,valor_total,categoria_id) values ("Sem borda","Brotinho","Goiabada extra",50.00,5);
insert into tb_pizza (borda,tipo,observação,valor_total,categoria_id) values ("Sem borda","Brotinho","Queijo extra",50.00,5);

select * from tb_pizza where valor_total > 45.00;

select * from tb_pizza where valor_total between 29.00 and 60.00;

select * from tb_categoria where pizza like "%c%";

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select * from tb_pizza where tipo like "Brotinho";