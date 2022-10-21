create database investigadores;
use investigadores;

create table facultad(codigo int not null, nombre varchar(100),
primary key(codigo))engine=InnoDB;

create table investigadores(dni varchar(8) not null, nomapels varchar(255),
facultad int, primary key(dni),
foreign key(facultad) references facultad(codigo)
on delete cascade on update cascade
)engine=InnoDB;

create table equipos(numserie char(4), nombre varchar(4), facultad int,
primary key(numserie),
foreign key(facultad) references facultad(codigo)
on delete cascade on update cascade
)engine=innodb;

create table reserva(dni varchar(8) not null, numserie char(4) not null,
comienzo datetime, fin datetime,
primary key(dni,numserie),
foreign key(dni) references investigadores(dni)
on delete cascade on update cascade,
foreign key(numserie) references equipos(numserie)
on delete cascade on update cascade
)engine=InnoDB;