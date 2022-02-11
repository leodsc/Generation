create database db_series;
/* 
colocar o db na frente do nome da base de dados
é uma boa prática
 */
 use db_series;
 create table tb_series(
	id bigint auto_increment,
    nome varchar(255),
    temporada int,
    plataforma varchar(255),
    episodios int,
	primary key (id)
 );

select * from tb_series;
alter table tb_series add atores varchar(255);