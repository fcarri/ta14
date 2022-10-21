create database grandesalmacenes;
use grandesalmacenes;

create table cajeros(codigo int not null, nomapels varchar(255),
primary key(codigo))engine=InnoDB;

create table productos(codigo int not null, nombre varchar(100),
precio int, primary key(codigo))engine=InnoDB;

create table maquinas_regristadoras(codigo int not null, piso int,
primary key(codigo))engine=InnoDB;

create table venta(cajero int, maquina int, producto int,
primary key(cajero,maquina,producto),
foreign key(cajero) references cajeros(codigo)
on delete cascade on update cascade,
foreign key(maquina) references maquinas_regristadoras(codigo)
on delete cascade on update cascade,
foreign key(producto) references productos(codigo)
on delete cascade on update cascade
)engine=InnoDB;