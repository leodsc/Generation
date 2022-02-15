create database db_pizzaria_legal;

use db_pizzaria_legal;
create table tb_categorias(
	id bigint auto_increment,
    pizzaiolo varchar(16) not null,
    especialidade varchar(8) not null,
    horario_trabalho varchar(32) not null,
    
    primary key(id)
);

/* popule essa tabela com ate 5 dados */

insert into tb_categorias(pizzaiolo, especialidade, horario_trabalho)
	 values("Ronaldo", "doce", "10:00:00-18:00:00");
     
insert into tb_categorias(pizzaiolo, especialidade, horario_trabalho)
	 values("Nayara", "salgada", "14:00:00-22:00:00");
     
insert into tb_categorias(pizzaiolo, especialidade, horario_trabalho)
	 values("Kellen", "doce", "14:00:00-22:00:00");
     
insert into tb_categorias(pizzaiolo, especialidade, horario_trabalho)
	 values("Roberto", "salgada", "10:00:00-18:00:00");
     
insert into tb_categorias(pizzaiolo, especialidade, horario_trabalho)
	 values("Bernardo", "salgada", "10:00:00-18:00:00");

create table tb_pizza(
	id bigint auto_increment,
    categoria_id bigint,
    sabor varchar(32) not null,
    preco double not null,
    borda_recheada boolean NOT NULL,
    borda_sabor varchar(32),
    tamanho varchar(16),
    
    primary key (id),
    foreign key (categoria_id) references tb_categorias(id)
);

/* popule essa tabela com ate 8 dados */

insert into tb_pizza(sabor, categoria_id, preco, borda_recheada, borda_sabor, tamanho)
	values("Calabresa", 2, 32.50, true, "cheddar", "grande");
    
insert into tb_pizza(sabor, categoria_id, preco, borda_recheada, borda_sabor, tamanho)
	values("4 Queijos", 5, 20.00, false, null, "medio");
        
insert into tb_pizza(sabor, categoria_id, preco, borda_recheada, borda_sabor, tamanho)
	values("Frango c Catupiry", 2, 35.00, true, "queijo", "grande");
        
insert into tb_pizza(sabor, categoria_id, preco, borda_recheada, borda_sabor, tamanho)
	values("Nutella", 3, 65.00, false, null, "grande");
        
insert into tb_pizza(sabor, categoria_id, preco, borda_recheada, borda_sabor, tamanho)
	values("Frango c Catupiry", 4, 27.50, false, null, "grande");
        
insert into tb_pizza(sabor, categoria_id, preco, borda_recheada, borda_sabor, tamanho)
	values("Calabresa", 2, 14.00, true, "queijo", "pequena");
        
insert into tb_pizza(sabor, categoria_id, preco, borda_recheada, borda_sabor, tamanho)
	values("M&Ms", 1, 75.00, false, null, "medio");
    
insert into tb_pizza(sabor, categoria_id, preco, borda_recheada, borda_sabor, tamanho)
	values("Calabresa", 4, 24.00, true, "cheddar", "medio");

/* faça um select que retorne os produtos com o valor amior do que 45 reais. */

select * from tb_pizza
	where preco > 45.00;

/* faça um select trazendo os produtos com valor entre 29 e 60 reais */

select * from tb_pizza
	where preco > 29.00 and preco < 60.00;

/* faça um select utilizando like buscando os produtos com a letra c */

select * from tb_pizza
	where sabor like "%c%";

/* faça um select com inner join entre tabela categoria e pizza */

select * from tb_pizza
	inner join tb_categorias
    on tb_pizza.categoria_id = tb_categorias.id;

/* faça um select onde traga todos os produtos de uma categoria especifica */

select * from tb_pizza
	where borda_recheada = true;