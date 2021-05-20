-- Banco de dados para escola 
create database db_escola3;
use db_escola3;

-- Criação da tabela 
create table tb_alunos3(
id bigint auto_increment,
nome varchar(255) not null,
serie int not null,
sala int not null,
materia varchar(255) not null,
nota decimal not null,
primary key (id)
);

-- Inserindo dados 
insert into tb_alunos3(nome, serie, sala, materia, nota) values("Luis Henrique", 5, 3, "Português", 5);
insert into tb_alunos3(nome, serie, sala, materia, nota) values("Aline Cristina", 5, 3, "Português", 8.0);
insert into tb_alunos3(nome, serie, sala, materia, nota) values("Thays Silva", 5, 3, "Português", 6.0);
insert into tb_alunos3(nome, serie, sala, materia, nota) values("Josué Gonçalves", 5, 3, "Português", 9.0);
insert into tb_alunos3(nome, serie, sala, materia, nota) values("Carla Alves", 5, 3, "Português", 2.0);
insert into tb_alunos3(nome, serie, sala, materia, nota) values("André Guimarães", 5, 3, "Português", 1.0);
insert into tb_alunos3(nome, serie, sala, materia, nota) values("Bernardo Versone", 5, 3, "Português", 7.0);
insert into tb_alunos3(nome, serie, sala, materia, nota) values("Estela Maria", 5, 3, "Português", 10.0);

-- Visualizar dados 
select * from tb_alunos3;
select nome, serie, sala, materia, nota from tb_alunos3;
select * from tb_alunos3 where nota>7.0;
select * from tb_alunos3 where nota<7.00;

-- Alterando um dado da tabela 
update tb_alunos3 set nome="Estella Mariano", nota=9.0 where id=8;