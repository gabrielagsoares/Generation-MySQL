	create database db_cidade_das_carness;
use db_cidade_das_carness;

create table tb_categoriac(
id bigint auto_increment,
tipo varchar(100),
estoque varchar(100),

primary key(id)
);

insert tb_categoriac (tipo, estoque) values ("Bovina", "Disponível");
insert tb_categoriac (tipo, estoque) values ("Bovina", "Indisponível");
insert tb_categoriac (tipo, estoque) values ("Aves", "Disponível");
insert tb_categoriac (tipo, estoque) values ("Aves", "Disponível");

create table tb_produtoc(
id bigint auto_increment,
nome varchar(100),
quantidade varchar(100),
preco decimal (5,2) not null,
categoriac_id bigint,
primary key (id),
foreign key (categoriac_id) REFERENCES tb_categoriac (id)
);

insert tb_produtoc (nome, quantidade, preco, categoriac_id) values ("Picanha", "2kg", 74.99, 1);
insert tb_produtoc (nome, quantidade, preco, categoriac_id) values ("Acém", "1kg", 45.60, 2);
insert tb_produtoc (nome, quantidade, preco, categoriac_id) values ("Cupim", "2kg", 74.99, 2);
insert tb_produtoc (nome, quantidade, preco, categoriac_id) values ("Filé de Frango", "2kg", 35.60, 4);
insert tb_produtoc (nome, quantidade, preco, categoriac_id) values ("Coxa de Frango", "5kg", 73.99, 3);
insert tb_produtoc (nome, quantidade, preco, categoriac_id) values ("Contrafilé", "1kg", 29.90, 1);

select * from tb_categoriac;
select * from tb_produtoc; 

select * from tb_produtoc where preco > 50.00;
select * from tb_produtoc where preco between 3.00 and 60.00;
select * from tb_produtoc where nome like '%C%';

select * from tb_categoriac where estoque like '%Indisponível%';

select * from tb_produtoc inner join tb_categoriac on tb_categoriac.id = tb_produtoc.id;
select * from tb_produtoc inner join tb_categoriac on tb_categoriac.id 

 









