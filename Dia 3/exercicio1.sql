-- Banco de dados p/ serviço de um game online, sistema trabalhará com inf dos personagens do game
create database db_generation_game_online;
use db_generation_game_online;

-- tabela 1
create table tb_classe(
id bigint(5) auto_increment,
genero varchar(255) not null,
ativo boolean not null,
categoria varchar(255),
primary key (id)
);

insert into tb_classe (genero, ativo, categoria) values ("Feminino",false, "Forte");
insert into tb_classe (genero, ativo, categoria) values ("Masculino",true, "Fraco");
insert into tb_classe (genero, ativo, categoria ) values ("Robô",true, "Força média");

select * from tb_classe;

create table tb_personagem (
id bigint(5) auto_increment,
nome varchar (255) not null,
vidas int, 
habilidade varchar(255),
ataque int,
defesa int, 
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

insert into tb_personagem (nome, vidas, habilidade, ataque, defesa, classe_id) values ("Canário Negro", 3, "Grito supersônico", 4000, 2000, 1);
insert into tb_personagem (nome, vidas, habilidade, ataque, defesa, classe_id) values ("Arqueiro: Oliver Queen", 4, "Arsenal de flechas, combate corpo-a-corpo, mestre espadachim", 5000, 4000, 2);
insert into tb_personagem (nome, vidas, habilidade, ataque, defesa, classe_id) values ("Cyborg", 1, "Audição e visão aprimorada, teleguiação, scanners médicos", 3000, 3000, 3);
insert into tb_personagem (nome, vidas, habilidade, ataque, defesa, classe_id) values ("Hera Venenosa", 7, "Manipulação de plantas Sedução hipnótica", 2500, 2000, 1);
insert into tb_personagem (nome, vidas, habilidade, ataque, defesa, classe_id) values ("Arlequina", 7, "Super força", 6000, 5000, 1);

select * from tb_personagem;
select * from tb_classe;	

-- busca de personagens com poder de ataque maior que 2000
select * from tb_personagem where ataque>2000;

-- busca de personagens com poder de defesa entre 1000 e 2000
select * from tb_personagem where defesa in (1000, 2000);

-- busca de personagens que tenha a letra C
select * from tb_personagem where nome like "%C%";

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.id;
select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.id where tb_classe.id = 1;



