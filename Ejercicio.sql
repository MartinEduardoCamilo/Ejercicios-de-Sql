
------- Crear una tabla (create table - sp_tables - sp_columns - drop table)
 if object_id('agenda') is not null
  drop table agenda;

 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 exec sp_tables @table_owner='dbo';

 exec sp_columns agenda;

 drop table agenda;

 drop table agenda;

 -------

  if object_id('libros') is not null
  drop table libros;

 exec sp_tables @table_owner='dbo';

 create table libros(
  titulo varchar(20),
  autor varchar(30),
  editorial varchar(15)
 );

 create table libros(
  titulo varchar(20),
  autor varchar(30),
  editorial varchar(15)
 );

 exec sp_tables @table_owner='dbo';

 exec sp_columns libros;

 drop table libros;

 drop table libros;
 -----------------
 ------Insertar y recuperar registros de una tabla (insert into - select)
 if object_id('agenda') is not null
  drop table agenda;

 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 exec sp_tables @table_owner='dbo';

 exec sp_columns agenda;

 insert into agenda (apellido, nombre, domicilio, telefono)
  values ('Moreno','Alberto','Colon 123','4234567');
 insert into agenda (apellido,nombre, domicilio, telefono)
  values ('Torres','Juan','Avellaneda 135','4458787');

 select * from agenda;

 drop table agenda;

 drop table agenda;
 ----------------------------
  if object_id('libros') is not null
  drop table libros;

 create table libros (
  titulo varchar(20),
  autor varchar(30),
  editorial varchar(15)
 );

 exec sp_tables @table_owner='dbo';

 exec sp_columns libros;

 insert into libros (titulo,autor,editorial)
  values ('El aleph','Borges','Planeta');
 insert into libros (titulo,autor,editorial) 
  values ('Martin Fierro','Jose Hernandez','Emece');
 insert into libros (titulo,autor,editorial)
  values ('Aprenda PHP','Mario Molina','Emece');

 select * from libros;

 ----Tipos de datos básicos

  if object_id('peliculas')is not null
  drop table peliculas;

 create table peliculas(
  nombre varchar(20),
  actor varchar(20),
  duracion integer,
  cantidad integer
 );

 exec sp_columns peliculas;

 insert into peliculas (nombre, actor, duracion, cantidad)
  values ('Mision imposible','Tom Cruise',128,3);
 insert into peliculas (nombre, actor, duracion, cantidad)
  values ('Mision imposible 2','Tom Cruise',130,2);
 insert into peliculas (nombre, actor, duracion, cantidad)
  values ('Mujer bonita','Julia Roberts',118,3);
 insert into peliculas (nombre, actor, duracion, cantidad)
  values ('Elsa y Fred','China Zorrilla',110,2);

 select * from peliculas;
 ---------------------------------
  if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  nombre varchar(20),
  documento varchar(8),
  sexo varchar(1),
  domicilio varchar(30),
  sueldobasico float
 );

 exec sp_columns empleados;

 insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Juan Perez','22333444','m','Sarmiento 123',500);
 insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Ana Acosta','24555666','f','Colon 134',650);
 insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Bartolome Barrios','27888999','m','Urquiza 479',800);

 select * from empleados;
 ------------------------
 ---Recuperar algunos campos select
 if object_id('peliculas') is not null
  drop table peliculas;

 create table peliculas(
  titulo varchar(20),
  actor varchar(20),
  duracion integer,
  cantidad integer
 );

 exec sp_columns peliculas;

 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible','Tom Cruise',180,3);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible 2','Tom Cruise',190,2);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mujer bonita','Julia Roberts',118,3);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Elsa y Fred','China Zorrilla',110,2);

 select titulo,actor from peliculas;

 select titulo,duracion from peliculas;

 select titulo,cantidad from peliculas;
 -------------------------
 if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  nombre varchar(20),
  documento varchar(8), 
  sexo varchar(1),
  domicilio varchar(30),
  sueldobasico float
 );

 exec sp_columns empleados;

 insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Juan Juarez','22333444','m','Sarmiento 123',500);
 insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Ana Acosta','27888999','f','Colon 134',700);
 insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Carlos Caseres','31222333','m','Urquiza 479',850);

 select * from empleados;

 select nombre,documento,domicilio from empleados;

 select documento,sexo,sueldobasico from empleados;

 -----------------------------
 --Recuperar algunos registros (where)
  if object_id('agenda') is not null
  drop table agenda;

 create table agenda (
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 exec sp_columns agenda;

 insert into agenda(apellido,nombre,domicilio,telefono) values
  ('Acosta', 'Ana', 'Colon 123', '4234567');

 insert into agenda(apellido,nombre,domicilio,telefono) values
  ('Bustamante', 'Betina', 'Avellaneda 135', '4458787');

 insert into agenda(apellido,nombre,domicilio,telefono) values
  ('Lopez', 'Hector', 'Salta 545', '4887788'); 
 insert into agenda(apellido,nombre,domicilio,telefono) values
  ('Lopez', 'Luis', 'Urquiza 333', '4545454');
 insert into agenda(apellido,nombre,domicilio,telefono) values
  ('Lopez', 'Marisa', 'Urquiza 333', '4545454');

 select * from agenda;

 select * from agenda
  where nombre='Marisa';

 select nombre,domicilio from agenda
  where apellido='Lopez';

 select nombre from agenda
  where telefono='4545454';
  ------------------
   if object_id('libros') is not null
  drop table libros;

 create table libros (
  titulo varchar(20),
  autor varchar(30),
  editorial varchar(15)
 );

 exec sp_columns libros;

 insert into libros(titulo,autor,editorial) values
  ('El aleph','Borges','Emece');
 insert into libros(titulo,autor,editorial) values
  ('Martin Fierro','Jose Hernandez','Emece');
 insert into libros(titulo,autor,editorial) values
  ('Martin Fierro','Jose Hernandez','Planeta');
 insert into libros(titulo,autor,editorial) values
  ('Aprenda PHP','Mario Molina','Siglo XXI');

 select * from libros
  where autor='Borges';

 select titulo from libros
  where editorial='Emece';

 select editorial from libros
  where titulo='Martin Fierro';
  ---------------------
  ----Operadores relacionales
  if object_id('articulos') is not null
  drop table articulos;

 create table articulos(
  codigo integer,
  nombre varchar(20),
  descripcion varchar(30),
  precio float,
  cantidad integer
 );

 exec sp_columns articulos;

 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (1,'impresora','Epson Stylus C45',400.80,20);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (2,'impresora','Epson Stylus C85',500,30);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (3,'monitor','Samsung 14',800,10);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (4,'teclado','ingles Biswal',100,50);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (5,'teclado','español Biswal',90,50);

 select * from articulos
  where nombre='impresora';

 select * from articulos
  where precio>=400;

 select codigo,nombre
  from articulos
  where cantidad<30;

 select nombre, descripcion
  from articulos
  where precio <> 100;
  ------------------------
   if object_id('peliculas') is not null
  drop table peliculas;

 create table peliculas(
  titulo varchar(20),
  actor varchar(20),
  duracion integer,
  cantidad integer
 );

 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible','Tom Cruise',120,3);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible 2','Tom Cruise',180,4);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mujer bonita','Julia R.',90,1);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Elsa y Fred','China Zorrilla',80,2);

 select * from peliculas
  where duracion<=90;

 select * from peliculas
  where actor<>'Tom Cruise';

 select titulo,actor,cantidad
  from peliculas
  where cantidad > 2;
  --------------------
  --Borrar registros (delete)
if object_id('agenda') is not null
  drop table agenda;

 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 insert into agenda (apellido,nombre,domicilio,telefono)
   values('Alvarez','Alberto','Colon 123','4234567');
 insert into agenda (apellido,nombre,domicilio,telefono)
   values('Juarez','Juan','Avellaneda 135','4458787');
 insert into agenda (apellido,nombre,domicilio,telefono)
   values('Lopez','Maria','Urquiza 333','4545454');
 insert into agenda (apellido,nombre,domicilio,telefono)
   values('Lopez','Jose','Urquiza 333','4545454');
 insert into agenda (apellido,nombre,domicilio,telefono)
   values('Salas','Susana','Gral. Paz 1234','4123456');

 delete from agenda
 where nombre='Juan';

 delete from agenda
 where telefono='4545454';

 select * from agenda;

 delete from agenda;

 select * from agenda;
 ---------------------
 if object_id('articulos') is not null
  drop table articulos;

 create table articulos(
  codigo integer,
  nombre varchar(20),
  descripcion varchar(30),
  precio float,
  cantidad integer
 );

 exec sp_columns articulos;

 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (1,'impresora','Epson Stylus C45',400.80,20);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (2,'impresora','Epson Stylus C85',500,30);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (3,'monitor','Samsung 14',800,10);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (4,'teclado','ingles Biswal',100,50);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (5,'teclado','español Biswal',90,50);

 delete from articulos
  where precio>=500;

 select * from articulos;

 delete from articulos
  where nombre='impresora';

 select * from articulos;

 delete from articulos
  where codigo <> 4;

 select * from articulos;
 -----------------------------
 --Actualizar registros update
 if object_id('agenda') is not null
  drop table agenda;

 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Acosta','Alberto','Colon 123','4234567');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Juarez','Juan','Avellaneda 135','4458787');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Lopez','Maria','Urquiza 333','4545454');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Lopez','Jose','Urquiza 333','4545454');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Suarez','Susana','Gral. Paz 1234','4123456');

 select * from agenda;

 update agenda set nombre='Juan Jose'
  where nombre='Juan';

 select * from agenda;

 update agenda set telefono='4445566'
  where telefono='4545454';

 select * from agenda;

 update agenda set nombre='Juan Jose'
  where nombre='Juan';

 select * from agenda;
 -----------------------------------
 if object_id('libros') is not null
  drop table libros;

 create table libros (
  titulo varchar(30),
  autor varchar(20),
  editorial varchar(15),
  precio float
 );

 insert into libros (titulo, autor, editorial, precio)
  values ('El aleph','Borges','Emece',25.00);
 insert into libros (titulo, autor, editorial, precio)
  values ('Martin Fierro','Jose Hernandez','Planeta',35.50);
 insert into libros (titulo, autor, editorial, precio)
  values ('Aprenda PHP','Mario Molina','Emece',45.50);
 insert into libros (titulo, autor, editorial, precio)
  values ('Cervantes y el quijote','Borges','Emece',25);
 insert into libros (titulo, autor, editorial, precio)
  values ('Matematica estas ahi','Paenza','Siglo XXI',15);

 select * from libros;

 update libros set autor='Adrian Paenza'
  where autor='Paenza';

 select * from libros;

 update libros set autor='Adrian Paenza'
  where autor='Paenza';

 select * from libros;

 update libros set precio=27
 where autor='Mario Molina';

 select * from libros;

 update libros set editorial='Emece S.A.'
  where editorial='Emece';

 select * from libros;
 -------------------------
 --Valores null is null
 if object_id('medicamentos') is not null
   drop table medicamentos;

 create table medicamentos(
  codigo integer not null,
  nombre varchar(20) not null,
  laboratorio varchar(20),
  precio float,
  cantidad integer not null
 );

 exec sp_columns medicamentos;

 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(1,'Sertal gotas',null,null,100); 
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(2,'Sertal compuesto',null,8.90,150);
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(3,'Buscapina','Roche',null,200);

 select * from medicamentos;

 insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
  values(4,'Bayaspirina','',0,150);

 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(0,'','Bayer',15.60,0);

 select * from medicamentos;

 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(null,'Amoxidal jarabe','Bayer',25,120);

 select * from medicamentos
  where laboratorio is null;

 select * from medicamentos
  where laboratorio='';

 select * from medicamentos
  where precio is null;

 select * from medicamentos
  where precio=0;

 select * from medicamentos
  where laboratorio<>'';

 select * from medicamentos
  where laboratorio is not null;

 select * from medicamentos
  where precio<>0;

 select * from medicamentos
  where precio is not null;
  ---------------------------
   if object_id('peliculas') is not null
  drop table peliculas;

 create table peliculas(
  codigo int not null,
  titulo varchar(40) not null,
  actor varchar(20),
  duracion int
 );

 exec sp_columns peliculas;

 insert into peliculas (codigo,titulo,actor,duracion)
  values(1,'Mision imposible','Tom Cruise',120);
 insert into peliculas (codigo,titulo,actor,duracion)
  values(2,'Harry Potter y la piedra filosofal',null,180);
 insert into peliculas (codigo,titulo,actor,duracion)
  values(3,'Harry Potter y la camara secreta','Daniel R.',null);
 insert into peliculas (codigo,titulo,actor,duracion)
  values(0,'Mision imposible 2','',150);
 insert into peliculas (codigo,titulo,actor,duracion)
  values(4,'','L. Di Caprio',220);
 insert into peliculas (codigo,titulo,actor,duracion)
  values(5,'Mujer bonita','R. Gere-J. Roberts',0);

 select * from peliculas;

 insert into peliculas (codigo,titulo,actor,duracion)
  values(null,'Mujer bonita','R. Gere-J. Roberts',190);

 select * from peliculas
  where actor is null;

 update peliculas set duracion=120 where duracion is null;

 update peliculas set actor='Desconocido'
  where actor='';

 select * from peliculas;

 delete from peliculas
  where titulo='';

 select * from peliculas;
 ---------Clave primaria
 if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int not null,
  titulo varchar(40) not null,
  autor varchar(20),
  editorial varchar(15),
  primary key(codigo)
 );

 insert into libros (codigo,titulo,autor,editorial)
  values (1,'El aleph','Borges','Emece');
 insert into libros (codigo,titulo,autor,editorial)
  values (2,'Martin Fierro','Jose Hernandez','Planeta');
 insert into libros (codigo,titulo,autor,editorial)
  values (3,'Aprenda PHP','Mario Molina','Nuevo Siglo');

 insert into libros (codigo,titulo,autor,editorial)
  values (2,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');

 insert into libros (codigo,titulo,autor,editorial)
  values (null,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');

 update libros set codigo=1
  where titulo='Martin Fierro';
  --------------------------------
  if object_id('alumnos') is not null
  drop table alumnos;

 create table alumnos(
  legajo varchar(4) not null,
  documento varchar(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key(documento),
  primary key(legajo)
 );

 create table alumnos(
  legajo varchar(4) not null,
  documento varchar(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key(documento)
 );

 exec sp_columns alumnos;

 insert into alumnos (legajo,documento,nombre,domicilio)
  values('A233','22345345','Perez Mariana','Colon 234');
 insert into alumnos (legajo,documento,nombre,domicilio)
  values('A567','23545345','Morales Marcos','Avellaneda 348');

 insert into alumnos (legajo,documento,nombre,domicilio)
  values('A642','23545345','Gonzalez Analia','Caseros 444');

 insert into alumnos (legajo,documento,nombre,domicilio)
  values('A685',null,'Miranda Carmen','Uspallata 999');
  ---------------------
  --------------------Campo con atributo Identity
  if object_id('medicamentos') is not null
  drop table medicamentos;

 create table medicamentos(
  codigo int identity,
  nombre varchar(20) not null,
  laboratorio varchar(20),
  precio float,
  cantidad integer
 );

 exec sp_columns medicamentos;

 insert into medicamentos (nombre, laboratorio,precio,cantidad)
   values('Sertal','Roche',5.2,100);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Buscapina','Roche',4.10,200);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxidal 500','Bayer',15.60,100);

 select * from medicamentos;

 insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
  values(4,'Amoxilina 500','Bayer',15.60,100);

 update medicamentos set codigo=5
  where nombre='Bayaspirina';

 delete from medicamentos
  where codigo=3;

 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxilina 500','Bayer',15.60,100);

 select * from medicamentos;
---------------------------
if object_id('peliculas') is not null
  drop table peliculas;

 create table peliculas(
  codigo int identity,
  titulo varchar(40),
  actor varchar(20),
  duracion int,
  primary key(codigo)
 );

 exec sp_columns peliculas;

 insert into peliculas (titulo,actor,duracion)
  values('Mision imposible','Tom Cruise',120);
 insert into peliculas (titulo,actor,duracion)
  values('Harry Potter y la piedra filosofal','Daniel R.',180);
 insert into peliculas (titulo,actor,duracion)
  values('Harry Potter y la camara secreta','Daniel R.',190);
 insert into peliculas (titulo,actor,duracion)
  values('Mision imposible 2','Tom Cruise',120);
 insert into peliculas (titulo,actor,duracion)
  values('La vida es bella','zzz',220);

 select * from peliculas;

 update peliculas set codigo=7
  where codigo=4;

 delete from peliculas
  where titulo='La vida es bella';

 insert into peliculas (titulo,actor,duracion)
  values('Elsa y Fred','China Zorrilla',90);

 select * from peliculas;