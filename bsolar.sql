create table usuarios(
    id serial primary key,
    nombre varchar(50),
    balance float check (balance >= 0) 
);

create table transferencias (
    id serial primary key,
    emisor int,
    receptor int,
    monto float,
    fecha timestamp default now()
    foreign key (emisor)references usuarios(id),
    foreign key (receptor)references usuarios(id)
);