create database biblio;
use biblio;
create table editorial(claveeditorial smallint not null,
nombre varchar(60), direccion varchar(60), telefono varchar(15),
primary key (claveeditorial))engine=innodb;

create table libro(clavelibro int not null, titulo varchar(60),
idioma varchar(15), formato varchar(15), claveeditorial smallint,
primary key (clavelibro), key(claveeditorial), foreign key (claveeditorial) references editorial(claveeditorial) on delete set null on update cascade)engine=innodb;

create table tema(clavetema smallint not null, nombre varchar(40), primary key (clavetema)
)engine=innodb;

create table autor(claveautor int not null, nombre varchar(60),
primary key(claveautor))engine=innodb;

create table ejemplar(claveejemplar int not null, clavelibro int not null, numeroorden smallint not null, edicion smallint,
ubicacion varchar(15), categoria char, primary key (claveejemplar), foreign key (clavelibro) references libro(clavelibro) on delete cascade on update cascade
) engine = innodb;

create table socio(clavesocio int not null, nombre varchar(60),
direccion varchar(60), telefono varchar(15), categoria char,
primary key(clavesocio))engine=innodb;

create table prestamo(clavesocio int, claveejemplar int,
numeroorden smallint, fecha_prestamo date not null,
fecha_devolucion date default null, notas blob, foreign key (clavesocio) references socio(clavesocio) on delete set null
on update cascade, foreign key (claveejemplar) references
ejemplar(claveejemplar) on delete set null on update cascade)
engine=innodb;

create table trata_sobre(clavelibro int not null, clavetema smallint not null, foreign key(clavelibro) references libro(clavelibro) on delete cascade on update cascade
) engine=innodb;

create table escrito_por(clavelibro int not null, claveautor int not null, foreign key(clavelibro) references libro(clavelibro) on delete cascade on update cascade, foreign key (claveautor) references autor(claveautor) on delete cascade on update cascade
)engine = innodb;
