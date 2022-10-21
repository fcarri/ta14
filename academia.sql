create database academia;
use academia;

create table alumnos(curso int not null, nombre varchar(45),
apellido1 varchar(45), apellido2 varchar(45), direccion varchar(255),
fecha_nacimiento date, sexo enum('H','M'),DNI varchar(8), cod_alumno int not null,
primary key(DNI)
)engine=InnoDB;

create table cursos(cod_curso int not null, nombre_curso varchar(45) unique,
maximo_alumnos int, profesor varchar(45), fecha_inicio date, fecha_fin date,
num_horas int not null, primary key(cod_curso)
)engine=InnoDB;

create table profesores(DNI varchar(8) not null, nombre varchar(45) unique,
apellido1 varchar(45), apellido2 varchar(45), direccion varchar(255),
titulo varchar(45), gana double not null, primary key(DNI)
)engine=Innodb;


