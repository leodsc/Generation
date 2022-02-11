use db_estoque;

create table tb_marcas(
	id BigInt(5) auto_increment,
	nome varchar(20) not null,
    ativo boolean,
    primary key (id)
);

select * from tb_marcas;
insert into tb_marcas(nome, ativo) values (
	"Nike", true
);

insert into tb_marcas(nome, ativo) values (
	"Fatal Surf", false
);

update tb_marcas set
	nome = "Fatal Surf",
    ativo = true
    where id = 2;

select nome from tb_marcas where id = 2;
delete from tb_marcas where id = 1;
delete from tb_marcas where id = 2;