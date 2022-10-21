create database tiendainformatica;
use tiendainformatica;

create table fabricantes(codigo int not null,
nombre varchar(100), primary key(codigo)
)engine = innodb;

create table articulos(codigo int not null, nombre varchar(100),
precio int, fabricante int, primary key(codigo), foreign key(fabricante) references fabricantes(codigo)
on delete cascade on update cascade
)engine=innodb;




