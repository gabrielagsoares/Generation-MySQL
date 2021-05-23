create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
acabamento varchar(100),
estoque varchar(100),

primary key(id)
);

insert tb_categoria (acabamento, estoque) values ("Piso", "Disponível");
insert tb_categoria (acabamento, estoque) values ("Piso", "Indisponível");
insert tb_categoria (acabamento, estoque) values ("Piso", "Indisponível");
insert tb_categoria (acabamento, estoque) values ("Azulejo", "Indisponível");
insert tb_categoria (acabamento, estoque) values ("Azulejo", "Disponível");

create table tb_produto(
id bigint auto_increment,
tipo varchar(100),
cor varchar(100),
metros bigint not null,
preco decimal (5,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_produto (tipo, cor, metros, preco, categoria_id) values ("Porcelanato", "Bege", 200, 399.99, 1);
insert tb_produto (tipo, cor, metros, preco, categoria_id) values ("Cerâmica", "Branco", 10, 49.99, 2);
insert tb_produto (tipo, cor, metros, preco, categoria_id) values ("Porcelanato", "Branco", 400, 599.99, 1);
insert tb_produto (tipo, cor, metros, preco, categoria_id) values ("Cerâmica", "Bege", 20, 49.99, 5);
insert tb_produto (tipo, cor, metros, preco, categoria_id) values ("Porcelanato", "Bege", 10, 33.99, 3);
insert tb_produto (tipo, cor, metros, preco, categoria_id) values ("Porcelanato", "Bege", 15, 35.99, 4);

select * from tb_categoria;
select * from tb_produto; 

select * from tb_produto where preco > 50.00;
select * from tb_produto where preco between 3.00 and 60.00;
select * from tb_produto where tipo like 'C%';

select * from tb_categoria where acabamento like '%Azulejo%';

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id;
select * from tb_produto inner join tb_categoria on tb_categoria.id 