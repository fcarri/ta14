create database piezasyproveedores;
use piezasyproveedores;

create table piezas(codigo int not null, nombre varchar(100),
primary key (codigo)
)engine=innodb;

create table proveedores(id char(4) not null, nombre varchar(100),
primary key(id))engine=innodb;

create table suministra(codigopieza int not null, idproveedor char(4) not null,
precio int, primary key(codigopieza, idproveedor), 
foreign key(codigopieza) references piezas(codigo)
on delete cascade on update cascade,
foreign key(idproveedor) references proveedores(id)
on delete cascade on update cascade
)engine=innodb; 