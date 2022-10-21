create database empleados;
use empleados;

create table empleados(dni varchar(8) not null, nombre varchar(100), apellidos varchar(255), 
departamento int,primary key(dni), foreign key(departamento) references departamento(codigo)
on delete cascade on update cascade
)engine=innodb;

create table departamentos(codigo int not null, nombre varchar(100), presupuesto int,
primary key(codigo)
)engine=innodb;