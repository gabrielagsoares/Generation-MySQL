create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id bigint(5) auto_increment,
tamanho varchar(255) not null,
borda varchar(100),
primary key (id)
);

insert tb_categoria (tamanho, borda) values ("Broto","Com borda recheada");
insert tb_categoria (tamanho, borda) values ("Broto","Sem borda");
insert tb_categoria (tamanho, borda) values ("Comum","Com borda recheada");
insert tb_categoria (tamanho, borda) values ("Comum","Sem borda recheada");
insert tb_categoria (tamanho, borda) values ("Tamanho família","Com borda recheada");

select * from tb_categoria;

create table tb_pizzas (
id bigint auto_increment,
sabor varchar (255) not null,
preco decimal(5,2) not null,
qtPizzas int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_pizzas (sabor, preco, qtPizzas, categoria_id) values ("Mozzarella", 27.90, 2, 2);
insert tb_pizzas (sabor, preco, qtPizzas, categoria_id) values ("Calabresa", 28.90, 5, 1);
insert tb_pizzas (sabor, preco, qtPizzas, categoria_id) values ("Frango especial", 32.10, 3, 4);
insert tb_pizzas (sabor, preco, qtPizzas, categoria_id) values ("À moda da casa", 35.90, 1, 5);
insert tb_pizzas (sabor, preco, qtPizzas, categoria_id) values ("Camarão", 49.90, 3, 3);
insert tb_pizzas (sabor, preco, qtPizzas, categoria_id) values ("Catupiry", 27.99, 1, 3);

select * from tb_categoria;
select * from tb_pizzas;	

select * from tb_pizzas where preco > 45.00;

select * from tb_pizzas where preco between 29.00 and 60.00;

 select * from tb_pizzas where sabor like "%C%";
 
 select * from tb_categoria where borda like '%sem borda%';
 
select * from tb_pizzas inner join tb_categoria on tb_categoria.id = tb_pizzas.id;
select * from tb_pizzas inner join tb_categoria on tb_categoria.id 

 
