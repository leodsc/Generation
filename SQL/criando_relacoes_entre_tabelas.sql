use db_estoque;

/* populando a tabela */

INSERT INTO tb_marcas (nome, ativo) VALUES("Nike", true);
INSERT INTO tb_marcas (nome, ativo) VALUES("H&M", true);
INSERT INTO tb_marcas (nome, ativo) VALUES("Zara", true);
INSERT INTO tb_marcas (nome, ativo) VALUES("Louis Vitton", true);
INSERT INTO tb_marcas (nome, ativo) VALUES("Adidas", true);
INSERT INTO tb_marcas (nome, ativo) VALUES("Uniqlo", true);
INSERT INTO tb_marcas (nome, ativo) VALUES("Hermès", true);
INSERT INTO tb_marcas (nome, ativo) VALUES("Rolex", true);
INSERT INTO tb_marcas (nome, ativo) VALUES("Gucci", true);
INSERT INTO tb_marcas (nome, ativo) VALUES("Cartier", true);

select * from tb_marcas where nome like "%gu%";

create table tb_produtos (
	id BIGINT auto_increment,
    nome VARCHAR(50) not null,
    preco DECIMAL(10,2),
    marca_id BIGINT not null,
    
    primary key (id),
    foreign key (marca_id) references tb_marcas (id)
);

insert into tb_produtos (nome, preco, marca_id) 
	values ("Camisa", 99.50, 10);

insert into tb_produtos (nome, preco, marca_id)
	values ("Tenis", 120.25, 15);

select * from tb_produtos where nome = "Camisa";