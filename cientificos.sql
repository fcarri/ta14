create database cientificos;
use cientificos;

create table cientificos(dni varchar(8) not null, nomapels varchar(255),
primary key (dni))engine=innodb;

create table proyecto(id char(2) not null, nombre varchar(255), horas int,
primary key(id))engine=InnoDB;

create table asignado_a(cientifico varchar(8) not null, proyecto char(4),
primary key(cientifico), foreign key(cientifico) references cientificos(dni)
on delete cascade on update cascade,
foreign key(proyecto) references proyecto(id)
on delete cascade on update cascade)engine=innodb;