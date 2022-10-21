create database Cine;
use Cine;

create table salas(codigo int not null, nombre varchar(100), pelicula int,
primary key(codigo),foreign key(pelicula) references salas(codigo)
on delete cascade on update cascade
)engine=innodb;

create table peliculas(codigo int not null, nombre varchar(100), calificacionedad int)
engine=innodb;
