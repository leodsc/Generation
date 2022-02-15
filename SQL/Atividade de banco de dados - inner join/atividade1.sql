create database db_generation_game_online;
use db_generation_game_online;

/* cria tabelas de personagens e classes */
create table tb_classe(
	id bigint auto_increment,
    nome_classe varchar(255) not null,
    habilidade varchar(255),
    arma varchar(255),
    
    primary key(id)
);

insert into tb_classe(nome_classe, habilidade, arma)
	values("Feitiçeiro", "Bola de Fogo", "Cajado");
    
insert into tb_classe(nome_classe, habilidade, arma)
	values("Guerreiro", "Investida", "Espada");
    
insert into tb_classe(nome_classe, habilidade, arma)
	values("Curandeiro", "Ressucitar", "Gaze");
    
insert into tb_classe(nome_classe, habilidade, arma)
	values("Arqueiro", "Saraivada de Flechas", "Arco e Flecha");
    
insert into tb_classe(nome_classe, habilidade, arma)
	values("Paladino", "Cura", "Espada");

create table tb_personagens(
	id bigint auto_increment,
    nome_personagem varchar(25) not null,
    nivel int(3) not null,
    vida int(4) not null,
    defesa int(3) not null,
    ataque int(4),
    classe_id bigint,
    
    primary key(id),
    foreign key(classe_id) references tb_classe(id)
);

insert into tb_personagens(nome_personagem, nivel, vida, defesa, ataque, classe_id)
	value("Aragorn", 120, 3500, 2100, 500, 2);
    
insert into tb_personagens(nome_personagem, nivel, vida, defesa, ataque, classe_id)
	value("Legolas", 130, 1800, 800, 1800, 2);
    
insert into tb_personagens(nome_personagem, nivel, vida, defesa, ataque, classe_id)
	value("Bilbo", 50, 800, 620, 700, 5);
    
insert into tb_personagens(nome_personagem, nivel, vida, defesa, ataque, classe_id)
	value("Gandalf", 200, 4000, 700, 2600, 1);
    
insert into tb_personagens(nome_personagem, nivel, vida, defesa, ataque, classe_id)
	value("Beorn", 150, 5000, 1300, 2000, 3);
    
insert into tb_personagens(nome_personagem, nivel, vida, defesa, ataque, classe_id)
	value("Sauron", 200, 7500, 1750, 3500, 1);
    
insert into tb_personagens(nome_personagem, nivel, vida, defesa, ataque, classe_id)
	value("Gollum", 200, 500, 30, 5, 1);
    
insert into tb_personagens(nome_personagem, nivel, vida, defesa, ataque, classe_id)
	value("Frodo", 100, 2100, 750, 900, 5);

select * from tb_personagens where ataque > 2000;
select * from tb_personagens where defesa > 1000 and defesa < 2000;
select * from tb_personagens
inner join tb_classe on tb_personagens.classe_id = tb_classe.id;
select * from tb_personagens where nome_personagem like "%c%";