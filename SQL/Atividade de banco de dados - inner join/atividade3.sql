create database db_farmacia_do_bem;

use db_farmacia_do_bem;
/* criando tabela de categorias */
create table tb_categoria(
	id bigint auto_increment,
    pilula boolean,
    gotas boolean,
    xarope boolean,
    
    primary key (id)
);
/* inserindo dados na tabela de categorias */
insert into tb_categoria(pilula, gotas, xarope)
	values (true, true, false);
    
insert into tb_categoria(pilula, gotas, xarope)
	values (true, false, false);
    
insert into tb_categoria(pilula, gotas, xarope)
	values (false, true, false);

insert into tb_categoria(pilula, gotas, xarope)
	values (true, false, true);

insert into tb_categoria(pilula, gotas, xarope)
	values (false, true, false);

/* criando tabela de produtos */
create table tb_produto(
	id bigint auto_increment,
    nome varchar(64) not null,
    preco double not null,
    fabricante varchar(32) not null,
    validade date not null,
    desconto int,
    categoria_id bigint,

    primary key (id),
    foreign key (categoria_id) references tb_categoria(id)
);

/* inserindo dados na tabela de produtos */
insert into tb_produto(nome, preco, fabricante, validade, desconto, categoria_id)
	values ("Levoid", 10.50, "Aché", "2023-05-03", 0.0, 2);
    
insert into tb_produto(nome, preco, fabricante, validade, desconto, categoria_id)
	values ("Zoloft", 200.00, "Pfizer", "2024-01-01", 45.50, 2);
    
insert into tb_produto(nome, preco, fabricante, validade, desconto, categoria_id)
	values ("Tylenol", 18.75, "Johnson & Johnson", "2025-01-20", 4.60, 1);
    
insert into tb_produto(nome, preco, fabricante, validade, desconto, categoria_id)
	values ("Neosaldina", 29.80, "Takeda", "2024-08-02", 3.55, 1);
    
insert into tb_produto(nome, preco, fabricante, validade, desconto, categoria_id)
	values ("Mylanta", 25.65, "Johnson & Johnson", "2022-10-12", 6.49, 5);
    
insert into tb_produto(nome, preco, fabricante, validade, desconto, categoria_id)
	values ("Nordette", 16.50, "Pfizer", "2025-01-30", 3.65, 2);
    
insert into tb_produto(nome, preco, fabricante, validade, desconto, categoria_id)
	values ("Decongex", 15.60, "Aché", "2026-02-12", 0.0, 4);

insert into tb_produto(nome, preco, fabricante, validade, desconto, categoria_id)
	values ("Centrum", 38.50, "Pfizer", "2022-08-03", 5.87, 1);

/* selecionando todos os produtos em que o preço é maior que 50 */
select * from tb_produto
	where preco > 50.00;

/* selecionando todos os produtos em que o preço é entre 3 e 60 */
select * from tb_produto
	where preco > 3.00 and preco < 60.00;

/* selecionando todos os produtos que tem 'b' no nome */
select * from tb_produto
	where nome like "%b%";

/* selecionando todos os produtos junto com suas categorias */
select * from tb_produto
	inner join tb_categoria
    on tb_produto.categoria_id = tb_categoria.id;

/* selecionando todos os produtos que são somente em pilula */
select * from tb_produto
	inner join tb_categoria
    on tb_produto.categoria_id = tb_categoria.id
    where tb_categoria.xarope = false and
    tb_categoria.gotas = false;
