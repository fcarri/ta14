create database almacenes;
use almacenes;

create table almacenes(codigo int not null, lugar varchar(100), capacidad int,
primary key(codigo))engine = innoDB;

create table cajas(numreferencia char(5) not null, contenido varchar(100), valor int, 
almacen int, primary key(numreferencia), foreign key(almacen) references almacenes(codigo)
on delete cascade on update cascade)engine=innodb;