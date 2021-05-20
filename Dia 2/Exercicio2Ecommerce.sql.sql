-- Banco de dados para e-commerce
create database db_ecommerce2;
use db_ecommerce2;

-- Criação da tabela 
create table tb_estoque2(
id bigint auto_increment,
produto varchar(255) not null,
marca varchar(255) not null,
modelo varchar(255),
cor varchar(255),
valor decimal not null,
primary key (id)
);

-- Inserindo dados 
insert into tb_estoque2(produto, marca, modelo, cor, valor) values("Smartphone", "Samsung", "Galaxy", "Preto", 999.00);
insert into tb_estoque2(produto, marca, modelo, cor, valor) values("Smartphone", "Motorola", "G9", "Prata", 1100.00);
insert into tb_estoque2(produto, marca, modelo, cor, valor) values("Televisão", "LG", "Smart", "Preto", 2999.00);
insert into tb_estoque2(produto, marca, modelo, cor, valor) values("Smartwatch", "Samsung", "Galaxy fit2", "Vermelho", 249.00);
insert into tb_estoque2(produto, marca, modelo, cor, valor) values("Smartwatch", "Huawei", "GT 2", "Branco", 1999.00);

-- Visualizar dados 
select * from tb_estoque2;
select produto, marca, modelo, cor, valor from tb_estoque2;
select * from tb_estoque2 where valor>500.00;
select * from tb_estoque2 where valor<500.00;

-- Alterando um dado da tabela 
update tb_estoque2 set valor=850.00 where id=1;
