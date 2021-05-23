create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
cosmetico varchar(100),
marca varchar(100),

primary key(id)
);

insert tb_categoria (cosmetico, marca) values ("Lip Tint", "Boca Rosa");
insert tb_categoria (cosmetico, marca) values ("Base", "Avon");
insert tb_categoria (cosmetico, marca) values ("Sombra", "Kiko Milano");
insert tb_categoria (cosmetico, marca) values ("Gloss", "Benefit");
insert tb_categoria (cosmetico, marca) values ("Batom líquido", "Kiko Milano");

create table tb_produto(
id bigint auto_increment,
cor varchar(100),
tamanho varchar(100),
quantidade int not null,
preco decimal (5,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_produto (cor, tamanho, quantidade, preco, categoria_id) values ("Cereja", "7ml", 1, 25.60, 1);
insert tb_produto (cor, tamanho, quantidade, preco, categoria_id) values ("704 Coral", "10ml", 1, 76.99, 5);
insert tb_produto (cor, tamanho, quantidade, preco, categoria_id) values ("Bege médio 02", "25ml", 1, 29.90, 2);
insert tb_produto (cor, tamanho, quantidade, preco, categoria_id) values ("Incolor", "8ml", 1, 55.60, 4);
insert tb_produto (cor, tamanho, quantidade, preco, categoria_id) values ("Rosa", "25g", 1, 59.99, 3);
insert tb_produto (cor, tamanho, quantidade, preco, categoria_id) values ("404 Rosa", "10ml", 1, 74.60, 5);
insert tb_produto (cor, tamanho, quantidade, preco, categoria_id) values ("Marrom efeito Matte", "25g", 1, 69.99, 3);

select * from tb_categoria;
select * from tb_produto; 

select * from tb_produto where preco > 50.00;
select * from tb_produto where preco between 3.00 and 60.00;
select * from tb_produto where cor like '%B%';

select * from tb_categoria where marca like '%Kiko Milano%';

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id;
select * from tb_produto inner join tb_categoria on tb_categoria.id 

 









