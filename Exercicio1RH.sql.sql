-- Banco de dados Empresa serviço de RH c/ info de func
create database db_RH1;

use db_RH1;

-- Criação da tabela 
create table tb_funcionarios1(
id bigint auto_increment,
nome varchar(255) not null,
salario decimal not null,
funcional bigint not null,
cargo varchar(255),
setor varchar(255) not null,
primary key (id)
);

-- Inserindo Dados 
insert into tb_funcionarios1(nome, salario, funcional, cargo, setor) values("Gisele Silva", 2500.00, 399501, "Dev Jr", "Operacional");
insert into tb_funcionarios1(nome, salario, funcional, cargo, setor) values("Monike Duarte", 1300.00, 399502, "Assiste de Vendas", "Comercial");
insert into tb_funcionarios1(nome, salario, funcional, cargo, setor) values("Alice Sampaio", 1850.00, 399503, "Secretária", "Administrativo");
insert into tb_funcionarios1(nome, salario, funcional, cargo, setor) values("Mariane Brotoni", 2550.00, 399504, "Gerente", "Comercial");
insert into tb_funcionarios1(nome, salario, funcional, cargo, setor) values("Kelly Cavalcante", 4000.00, 399505, "Diretora", "Administrativo");

-- Visualizar dados 
select * from tb_funcionarios1;
select nome, salario, funcional, cargo, setor from tb_funcionarios1;
select * from tb_funcionarios1 where salario>2000.00;
select * from tb_funcionarios1 where salario<2000.00;

-- Alterando um dado da tabela 
update tb_funcionarios1 set salario=2150.00 where id=4;

-- Altera um campo da tabela
alter table tb_funcionarios1 modify salario decimal(5,2);
