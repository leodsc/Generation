create database db_pizzaria_legal;

use db_pizzaria_legal;
create table tb_categorias(
	id bigint auto_increment,
    tipo varchar(16) not null,
    tem_borda boolean not null,
    borda_recheada varchar(32),
    
    primary key(id)
);

/* popule essa tabela com ate 5 dados */
insert into tb_categorias(tipo, tem_borda, borda_recheada)
	values("vegana", false, null);

insert into tb_categorias(tipo, tem_borda, borda_recheada)
	values("normal", true, "cheddar");
    
insert into tb_categorias(tipo, tem_borda, borda_recheada)
	values("vegana", true, "queijo vegano");
    
insert into tb_categorias(tipo, tem_borda, borda_recheada)
	values("normal", false, null);
    
insert into tb_categorias(tipo, tem_borda, borda_recheada)
	values("normal", true, "queijo");

create table tb_pizza(
	id bigint auto_increment,
    categoria_id bigint,
    sabor varchar(32) not null,
    preco double not null,
    entrega time not null,
    previsao_entrega time not null,
    tamanho varchar(16),
    
    primary key (id),
    foreign key (categoria_id) references tb_categorias(id)
);

/* popule essa tabela com ate 8 dados */

insert into tb_pizza(sabor, categoria_id, preco, entrega, previsao_entrega, tamanho)
	values("Calabresa", 2, 32.50, "20:40:00", "20:42:00", "grande");
    
insert into tb_pizza(sabor, categoria_id, preco, entrega, previsao_entrega, tamanho)
	values("4 Queijos", 5, 20.00, "19:48:00", "19:40:00", "medio");
        
insert into tb_pizza(sabor, categoria_id, preco, entrega, previsao_entrega, tamanho)
	values("Frango c Catupiry", 2, 35.00, "22:01:35", "21:58:00", "grande");
        
insert into tb_pizza(sabor, categoria_id, preco, entrega, previsao_entrega, tamanho)
	values("Nutella", 4, 65.00, "17:32:05", "17:30:00", "grande");
        
insert into tb_pizza(sabor, categoria_id, preco, entrega, previsao_entrega, tamanho)
	values("Frango c Catupiry", 4, 27.50, "18:39:42", "19:00:00", "grande");
        
insert into tb_pizza(sabor, categoria_id, preco, entrega, previsao_entrega, tamanho)
	values("Calabresa", 2, 14.00, "12:05:07", "11:50:00", "pequena");
        
insert into tb_pizza(sabor, categoria_id, preco, entrega, previsao_entrega, tamanho)
	values("M&Ms", 1, 75.00, "13:10:00", "13:00:00", "medio");
    
insert into tb_pizza(sabor, categoria_id, preco, entrega, previsao_entrega, tamanho)
	values("Calabresa", 4, 24.00, "23:07:05", "23:10:00", "medio");

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