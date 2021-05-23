create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(100),
nivel varchar(100),

primary key(id)
);

insert tb_categoria (tipo, nivel) values ("Técnico", "Avançado");
insert tb_categoria (tipo, nivel) values ("Graduação", "Superior");
insert tb_categoria (tipo, nivel) values ("Técnico", "Básico");
insert tb_categoria (tipo, nivel) values ("Livre", "Básico");

create table tb_produto(
id bigint auto_increment,
nome varchar(100),
aulasSemanais int,
certificado boolean,
precoMensal decimal (5,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_produto (nome, aulasSemanais, certificado, precoMensal, categoria_id) values ("Ciências da computação", 5, true, 599.99, 2);
insert tb_produto (nome, aulasSemanais, certificado, precoMensal, categoria_id) values ("Git e GitHub", 2, false, 00.00, 4);
insert tb_produto (nome, aulasSemanais, certificado, precoMensal, categoria_id) values ("HTML e CSS", 3, true, 199.99, 1);
insert tb_produto (nome, aulasSemanais, certificado, precoMensal, categoria_id) values ("Descobrindo a internet", 1, true, 35.99, 3);

select * from tb_categoria;
select * from tb_produto; 

select * from tb_produto where precoMensal > 50.00;
select * from tb_produto where precoMensal between 3.00 and 60.00;
select * from tb_produto where nome like '%J%';

select * from tb_categoria where nivel like '%Básico%';

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id;
select * from tb_produto inner join tb_categoria on tb_categoria.id 