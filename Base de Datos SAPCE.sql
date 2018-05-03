drop database SAPCE;

create database SAPCE;
use SAPCE;

/*---------TABLAS---------*/

create table registro_usuarios(
id_registro int(11) not null auto_increment primary key,
puesto varchar(45) not null,
password varchar(45),
nombre varchar(45) COLLATE latin1_bin not null,
telefono varchar(10) null,
rol int(11) not null,
foto longblob not null);

create table usuarios(
id_tipo int(11) not null auto_increment primary key,
nombre varchar(45) not null,
hora_inicio datetime,
hora_final datetime);

create table if not exists clientes (
id_cliente int (11) not null auto_increment primary key,
nombre varchar(20) not null,
apellido_paterno varchar(20) not null,
apellido_materno varchar(20) not null,
domicilio varchar(50) null,
numero varchar (14) null);

create table if not exists productos(
id_producto int(11) not null auto_increment primary key,
producto varchar(35) not null,
cantidad_producto varchar(15) null,
precio_venta int(11) null,
precio_compra int(11) null);

create table if not exists ingredientes(
id_ingrediente int(11) not null auto_increment primary key,
ingrediente varchar(30) null,
precio int(5) not null);


create table if not exists pedidos (
id_pedido int (11) not null auto_increment primary key,
id_cliente int(11)  not null,
fecha date not null,
tipo_pedido varchar(15) null,
total int(11) not null,
foreign key (id_cliente) references clientes(id_cliente));


create table if not exists detalle_pedido(
id_detalle_pedido int(11) not null auto_increment primary key,
id_pedido int(11) not null,
id_producto int (11) not null,
id_ingrediente int(11) not null,
cantidad int(20) not null,
sub_total int(11) not null,
foreign key (id_producto) references productos (id_producto),
foreign key (id_ingrediente) references ingredientes(id_ingrediente));

/*--------------DATOS----------------*/

insert into productos(producto,cantidad_producto,precio_venta,precio_compra) 
values('Carne de pechuga asada',null,25,null);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Huevos al gusto',null,20,null);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Plato ranchero',null,20,null);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Plato de guisado',null,20,null);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Hotcakes',null,10,null);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Tamales',null,7,5);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Tortas de tamal',null,10,8);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Molletes',null,5,null);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Orden de enchiladas',null,15,null);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Enchiladas suizas',null,16,null);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Burritos',null,22,null);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Guajolotes',null,17,null);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Quesadillas',null,9,null);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Sopes',null,14,null);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Morelianas',null,13,null);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Tacos dorados',null,7,null);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Chilaquiles',null,27,null);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Tortas',null,15,11);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Sincronizadas sencillas',null,15,null);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Sincronizadas dobles',null,30,null);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Sandwich',null,16,14);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Tacos de canasta',null,10,null);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Tacos de guisado',null,15,null);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Tacos al gusto',null,17,null);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Hamburguesa',null,35,30);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('HotDog',null,23,19);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Atole',null,10,null);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Cafe',null,12,null);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Jugos',null,14,null);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Agua de sabor',null,16,null);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Licuados',null,18,null);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Coctel de fruta',null,26,20);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Sopa',null,17,null);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('Arroz',null,17,null);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('agua ciel pet','355ml',9,6);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('agua ciel pet','600ml',10,8);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('agua ciel pet','1.5Lt',12,9);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('agua ciel pet','5Lt',24,20);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('ciel mineralizada pet','600ml',8,6);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('ciel mineralizada pet','2Lt',15,10);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('ciel exprim pet','600ml',11,9);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('ciel exprim pet','1Lt',18,16);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('ciel exprim pet','1.5Lt',15,13);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('powerade pet','500ml',13,10);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('powerade pet','600ml',14,10);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('powerade pet','1Lt',18,16);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('fuze tea pet','600ml',8,6);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('powerade pet','500ml',9,7);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('ciel mini pet','300ml',8,5);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('frutsi pet','250ml',7,6);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('nutri defensas','125ml',8,6);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('mini brick','250ml',10,8);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('lechita','200ml',8,6);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('del valle (vidrio)','250ml',8,6);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('del valle (vidrio)','413ml',10,8);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('del valle (lata)','335ml',9,7);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('del valle tetrapack','1Lt',11,9);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('del valle reserva pet','1Lt',12,10);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('del valle pulpy pet','400ml',6,4);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('del valle frut pet','355ml',5,4);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('del valle frut pet','600ml',9,7);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('del valle frut pet','1.5Lt',12,10);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('del valle frut pet','2Lt',17,14);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('del valle frut pet','3Lt',20,17);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('monster (lata)','473ml',7,6);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('santa clara entera tetrapack','1Lt',15,13);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('santa clara deslactosada','1Lt',18,16);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('del valle (vidrio)','413ml',6,5);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('coca cola (vidrio)','235ml',5,4);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('coca cola pet','300ml',5,4);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('coca cola pet','355ml',7,5);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('coca cola pet','400ml',9,7);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('coca cola pet','500ml',10,8);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('coca cola pet','600ml',12,10);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('coca cola pet','1Lt',15,12);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('coca cola pet','1.5Lt',20,18);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('coca cola pet','2Lt',25,24);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('coca cola pet','3Lt',30,27);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('coca cola (vidrio)','500ml',6,4);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('coca cola pet ret','1.5Lt',15,13);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('coca cola pet ret','2.5Lt',25,23);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('coca cola s/a noret (vidrio)','235ml',1,18);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('coca cola s/a pet','600ml',8,6);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('coca cola s/a pet','1.5Lt',13,10);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('coca cola s/a pet','3Lt',25,23);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('fanta (lata)','235ml',7,5);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('fanta (vidrio)','355ml',9,7);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('fanta pet','400ml',9,7);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('fanta pet','600ml',10,8);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('fanta pet ret','2Lt',13,10);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('fanta pet','2Lt',13,10);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('fanta pet','3Lt',16,14);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('fresca (lata)','235ml',7,5);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('fresca ret (vidrio)','355ml',8,6);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('fresca pet','400ml',9,7);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('fresca pet','600ml',10,8);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('fresca pet ret','2Lt',16,14);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('fresca pet','2Lt',18,16);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('fresca pet','3Lt',20,18);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('sprite (lata)','235ml',6,5);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('sprite ret (vidrio)','355ml',7,5);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('sprite pet','400ml',8,6);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('sprite pet','600ml',10,8);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('sprite pet ret','2Lt',13,10);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('sprite pet','2Lt',14,12);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('sprite pet','3Lt',20,18);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('sidral mundet pet','600ml',9,7);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('sidral mundet pet','2Lt',12,10);

insert into productos(producto,cantidad_producto,precio_venta,precio_compra)
values('sidral mundet pet','3Lt',18,16);


insert into ingredientes(ingrediente,precio)
values('Frijol',5);

insert into ingredientes(ingrediente, precio)
values('Salchicha',5);

insert into ingredientes(ingrediente, precio)
values('Jamón', 5);

insert into ingredientes(ingrediente, precio)
values('Tocino', 5);

insert into ingredientes(ingrediente, precio)
values('Chorizo', 5);

insert into ingredientes(ingrediente, precio)
values('Frijoles refritos', 5);

insert into ingredientes(ingrediente, precio)
values('Pollo', 5);

insert into ingredientes(ingrediente, precio)
values('Huevo', 5);

insert into ingredientes(ingrediente, precio)
values('Bisteck', 5);

insert into ingredientes(ingrediente, precio)
values('Milanesa', 5);

insert into ingredientes(ingrediente, precio)
values('Chicharron', 5);

insert into ingredientes(ingrediente, precio)
values('Pierna', 5);

insert into ingredientes(ingrediente, precio)
values('Hawaiana', 5);

insert into ingredientes(ingrediente, precio)
values('Champiñones', 5);

insert into ingredientes(ingrediente, precio)
values('Queso', 5);

insert into ingredientes(ingrediente, precio)
values('Queso blanco', 5);

insert into ingredientes(ingrediente, precio)
values('Queso oaxaca', 5);

insert into ingredientes(ingrediente, precio)
values('Papa', 5);

insert into ingredientes(ingrediente, precio)
values('Aguacate', 5);

insert into ingredientes(ingrediente, precio)
values('Jitomate', 5);

insert into ingredientes(ingrediente, precio)
values('Cebolla', 5);

insert into ingredientes(ingrediente, precio)
values('Lechuga', 5);

insert into ingredientes(ingrediente, precio)
values('Chipotle', 5);

insert into ingredientes(ingrediente, precio)
values('Salsa verde', 5);

insert into ingredientes(ingrediente, precio)
values('Salsa roja', 5);

insert into ingredientes(ingrediente, precio)
values('Campechano', 5);

insert into ingredientes(ingrediente, precio)
values('Especiales', 5);

insert into ingredientes(ingrediente, precio)
values('Platano', 5);

insert into ingredientes(ingrediente, precio)
values('Chocolate', 5);

insert into ingredientes(ingrediente, precio)
values('Avena', 5);

insert into ingredientes(ingrediente, precio)
values('Granola', 5);

insert into clientes(nombre,apellido_paterno,apellido_materno,domicilio,numero)
values('Sergio','Marquez','Moreno','Calle violeta col. La florida',7757599357);

insert into clientes(nombre,apellido_paterno,apellido_materno,domicilio,numero)
values('Cristian','Tolentino','De Jesus','Calle Ahuehuetitla por universidad',7461135012);

insert into clientes(nombre,apellido_paterno,apellido_materno,domicilio,numero)
values('Monica','Lopez','Arrollo','Conocido',7757526953);

insert into clientes(nombre,apellido_paterno,apellido_materno,domicilio,numero)
values('Pablo','Cruz','Marquez','Santiago Tpec. col.Ventoquipa',7751463874);

insert into clientes(nombre,apellido_paterno,apellido_materno,domicilio,numero)
values('Albina','Victoriano','Atenco','Col. La Guadalupe',7751877119);



insert into pedidos(id_cliente,fecha,tipo_pedido,total)
values(4,'2017-04-30','local',40);

insert into detalle_pedido(id_pedido,id_producto,id_ingrediente,cantidad,sub_total)
values(3,15,28,2,20);

insert into pedidos(id_cliente,fecha,tipo_pedido,total)
values(3,'2017-04-26','domicilio',30);

insert into detalle_pedido(id_pedido,id_cliente,id_producto,id_ingrediente,cantidad,sub_total)
values(3,3,10,30,8,20);

insert into pedidos(id_cliente,fecha,tipo_pedido,total)
values(4,'2017-04-26','domicilio',30);

insert into detalle_pedido(id_pedido,id_cliente,id_producto,id_ingrediente,cantidad,sub_total)
values(5,1,2,16,8,20);

insert into pedidos(id_cliente,fecha,tipo_pedido,total)
values(3,'2017-04-26','domicilio',30);

insert into detalle_pedido(id_pedido,id_cliente,id_producto,id_ingrediente,cantidad,sub_total)
values(5,3,2,16,8,20);














/*--------------CREACION DE USUARIOS CON SUS PERMISOS---------------*/

create user 'Administrador'@'localhost' identified by 'cocinaeconomica';

/*--------------------PERMISOS DE ADMINSTRADOR----------------------*/

grant insert on SAPCE.clientes to'Administrador'@'localhost';
grant update on SAPCE.clientes to 'Administrador'@'localhost';
grant delete on SAPCE.clientes to 'Administrador'@'localhost';
grant select on SAPCE.clientes to 'Administrador'@'localhost';

grant insert on SAPCE.productos to 'Administrador'@'localhost';
grant update on SAPCE.productos to 'Administrador'@'localhost';
grant delete on SAPCE.productos to 'Administrador'@'localhost';
grant select on SAPCE.productos to 'Administrador'@'localhost';

grant insert on SAPCE.elementos to 'Administrador'@'localhost';
grant update on SAPCE.elementos to 'Administrador'@'localhost';
grant delete on SAPCE.elementos to 'Administrador'@'localhost';
grant select on SAPCE.elementos to 'Administrador'@'localhost';

grant insert on SAPCE.pedidos to 'Administrador'@'localhost';
grant update on SAPCE.pedidos to 'Administrador'@'localhost';
grant delete on SAPCE.pedidos to 'Administrador'@'localhost';
grant select on SAPCE.pedidos to 'Administrador'@'localhost';


create user 'Empleado'@'localhost' identified by 'cocinaeconomica';

/*---------------------PERMISOS DE EMPLEADO-------------------*/

grant insert on SAPCE.clientes to 'Empleado'@'localhost';
grant update on SAPCE.clientes to 'Empleado'@'localhost';
grant delete on SAPCE.clientes to 'Empleado'@'localhost';
grant select on SAPCE.clientes to 'Empleado'@'localhost';


grant select on SAPCE.productos to 'Empleado'@'localhost';

grant select on SAPCE.elementos to 'Empleado'@'localhost';

grant insert on SAPCE.pedidos to 'Empleado'@'localhost';
grant update on SAPCE.pedidos to 'Empleado'@'localhost';
grant delete on SAPCE.pedidos to 'Empleado'@'localhost';
grant select on SAPCE.pedidos to 'Empleado'@'localhost';

/*--------------REFRESCAR TODOS LOS PERMISOS--------------*/

flush privileges;

/*---------------MOSTRAR LOS USUARIOS CREADOS--------------*/
select * from mysql.user;


/*----------------TABLAS TEMPORALES---------------..... */

create temporary table pedidos_temporales(
id_pedido int (11) not null auto_increment primary key,
id_cliente int(11) not null,
id_producto int(11) not null,
id_elemento int(11) null,
fecha date not null,
tipo_pedido varchar(15) not null);

#load data infile

create temporary table productos_temporal(
id_producto int(11) not null auto_increment primary key,
producto varchar(35) not null,
unidad_medida varchar(8) null,
precio_venta int(11) null,
precio_compra int(11) null);




#Generated Columns



insert into clientes_completos(nombre,apellido_paterno,apellido_materno,domicilio,numero)
values('Albina','Victoriano','Atenco','Col. La Guadalupe',7751877119);

load data local infile '/home/SergioMarquez/Documentos/productos.txt'
into table productos_temporal fields terminated by ','
lines starting by ''(producto,unidad_medida,precio_venta,precio_compra);

select * from productos_temporal;



select * from clientes_completos;


SELECT CONCAT(nombre,' ',apellido_paterno,' ',apellido_materno) AS nombre_completo FROM clientes_completos;

select max(id_cliente) as id from clientes;

Select id_registro,usuario,nombre,rol from registro_usuarios;

select CURDATE() as fecha;
select CURTIME();
select now();

select week('1998-02-20');

use cocina_economica;

update registro_usuarios set hora_inicio = now() where id_registro = 3;

select clientes.nombre,pedidos.fecha,pedidos.tipo_pedido, productos.producto,elementos.elemento,detalle_pedido.cantidad,detalle_pedido.total
from pedidos
left join clientes on pedidos.id_cliente = clientes.id_cliente
where detalle_pedido = 1;
 
Select user.id_registro,user.puesto,user.password,user.nombre,user.rol, tipo.rol 
from registro_usuarios as user left join tipo_usuario as tipo on user.rol = tipo.rol
where rol = 1;

Select nombre,puesto
from registro_usuarios
left join registro_usuarios on tipo_usuario.rol = registro_usuarios.rol
where nombre = 'Sergio Marquez';


select puesto, rol, password from registro_usuarios where nombre = 'Sergio Marquez';

Select foto,nombre from registro_usuarios where id_registro = 2; 


select clientes.nombre,pedidos.fecha,pedidos.tipo_pedido,productos.producto,ingredientes.ingrediente,
productos.precio_venta,detalle_pedido.cantidad,detalle_pedido.sub_total,pedidos.total
from pedidos
inner join clientes on pedidos.id_cliente = clientes.id_cliente
inner join detalle_pedido on pedidos.id_pedido = detalle_pedido.id_detalle_pedido
inner join productos on detalle_pedido.id_producto = productos.id_producto
inner join ingredientes on detalle_pedido.id_ingrediente = ingredientes.id_ingrediente
where detalle_pedido.id_pedido;




select clientes.nombre,pedidos.tipo_pedido,pedidos.fecha,productos.producto,ingredientes.ingrediente,ingredientes.precio,
productos.precio_venta,detalle_pedido.cantidad,detalle_pedido.sub_total,pedidos.total
from pedidos
inner join clientes on pedidos.id_cliente = clientes.id_cliente
inner join detalle_pedido on pedidos.id_pedido = detalle_pedido.id_detalle_pedido
inner join productos on detalle_pedido.id_producto = productos.id_producto
inner join ingredientes on detalle_pedido.id_ingrediente = ingredientes.id_ingrediente
where detalle_pedido.id_pedido = 1;

select max(id_pedido) as nombre from detalle_pedido;


