create database directores;
use directores;

create table despachos(numero int not null, capacidad int, primary key(numero))engine=innodb;

create table directores(dni varchar(8) not null, nomapels varchar(255),
key(dni), despacho int, primary key(dni),
foreign key(dni) references directores(dni),foreign key(despacho) references despachos(numero)
on delete cascade on update cascade
)engine=innodb;

