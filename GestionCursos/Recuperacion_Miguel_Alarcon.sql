--Creando las tablas estudiantes, cursos e inscripciones:
create table if not exists estudiantes(
    estudiante_id serial primary key,
    nombre varchar(60),
    apellido varchar(60),
    fecha_nacimiento date,
    direccion varchar(100)
);

create table if not exists cursos(
    curso_id serial primary key,
    nombre varchar(30),
    descripcion varchar(60),
    horas_de_duracion int
);

create table if not exists inscripciones(
    inscripcion_id serial primary key,
    estudiante_id_fk integer,
    curso_id_fk integer,
    foreign key (estudiante_id_fk) references estudiantes(estudiante_id),
    foreign key (curso_id_fk) references cursos(curso_id),
    unique (estudiante_id_fk,curso_id_fk)
);

--Creando los registros de cada tabla:
insert into estudiantes(nombre, apellido, fecha_nacimiento, direccion)
values ('Miguel', 'Alarcon', '1997/09/08', '#zzz') , ('Nataly', 'Osorio', '1998/10/22', '#zzz'), ('Aldo', 'Bazan', '2000/01/20', '#zzz'),
('Monica', 'Alarcon', '2005/01/03', '#zzz'), ('Henry', 'Gavancho', '1997/09/01', '#zzz'), ('Marco', 'Sullca', '2000/05/11', '#zzz'),
('Patty', 'Alarcon', '1978/02/25', '#zzz'), ('Leandro', 'Palomino', '1970/10/10', '#zzz'), ('Arnold', 'Vasquez', '2001/09/08', '#zzz'),
('Jairo', 'Escobar', '1994/09/08', '#zzz')

insert into cursos(nombre, descripcion, horas_de_duracion)
values ('Programacion', 'Aprende a programar desde cero', 3), ('Calculo 1', 'Matematica avanzada',1),
('Matematica discreta', 'Aprenderas a ....', 3), ('POO', 'Programacion orientada a objetos', 2),
('Lenguaje', 'Aprender a redactar', 1), ('Ensamblaje', 'Conoce el Hardware', 1),
('PHP', 'Conoce el mundo de PHP y Laravel', 3), ('Java', 'Conoce Java desde cero', 4),
('Resolucion en las nubes', 'Git, Docker, AWS, etc', 2), ('Danza', 'Aprende a bailar', 1)

insert into inscripciones(estudiante_id_fk, curso_id_fk)
values (1,2), (2,2), (3,5), (4,1), (6,3), (5,7), (8,3), (9,8), (7,10), (10,6)

select * from inscripciones