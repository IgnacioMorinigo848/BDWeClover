/*Consultas/procedimientos/Vistas*/
use weClover

/*Cargar cliente*/
create procedure cargarCliente
@nombre varchar(25),
@apellido1 varchar(25),
@apellido2 varchar(25),
@dni int,
@fechaDeNacimiento date,
@codigoPostal int,
@pais varchar(25),
@ciudad varchar(25),
@region varchar(25),
@telefono int,
@mail varchar(25)
as
insert into Cliente values (@nombre,@apellido1,@apellido2,@dni,@fechaDeNacimiento,@codigoPostal,@pais,@ciudad,@region,@telefono,@mail)


/*Cargar Atender*/
create procedure cargarAtender
@idCliente int,
@idempleado int
as 
insert into Atender values (@idCliente,@idempleado)

/*Cargar Empleado*/
create procedure cargarEmpleado
@nombre varchar(25),
@apellido1 varchar(25),
@apellido2 varchar(25),
@mail varchar(250)
as 
insert into Empleado values (@nombre,@apellido1,@apellido2,@mail)

/*Cargar Producto*/
create procedure cargarProducto 
@descripcion varchar(250)
as
insert into Producto values (@descripcion)

/*cargar detalle de producto*/
create procedure cargarDetalleDeProducto
@idProducto int,
@idCategoria int,
@tipo varchar(100),
@estilo varchar(100),
@talle varchar(25),
@cantidadEnStock int,
@precioDeVenta int,
@precioDeProveedor int
as
insert into DetalleDeProducto values (@idProducto,@idCategoria,@tipo,@estilo,@talle,@cantidadEnStock,@precioDeVenta,@precioDeProveedor)


/*Cargar DetalleDecCategoria*/
create procedure cargarDetalleDeCategoria
@nombreCategoria varchar(25)
as
insert into DetalleDeCategoria values (@nombreCategoria)

/*Cargar Gama*/
create procedure cargarGama
@tipoGama varchar(250)
as 
insert into Gama values (@tipoGama)

/*cargar pedido*/
create procedure cargarPedido
@idCliente int,
@fechaPedido date,
@fechaEsperada date,
@fechaentrega date,
@estado varchar(25),
@total int
as 
insert into Pedido values (@idCliente,@fechaPedido,@fechaEsperada,@fechaentrega,@estado,@total)	   

/*Cargar GamaXProducto*/
create procedure cargarGamaXProducto
@idGama int,
@idProducto int
as
insert into GamaXProducto values (@idGama,@idProducto)

/*cargar DetalleDePedido*/
create procedure cargarDetalleDePedido
@idPedido int,
@idProducto int,
@cantidad int,
@subTotal int
as
insert into DetalleDePedido values (@idPedido,@idProducto,@cantidad,@subTotal)

/*cargar Pago*/
create procedure cargarPago
@idCliente int,
@idFormaDePago int,
@fechaPago date,
@totalPago int
as 
insert into Pago values (@idCliente,@idFormaDePago,@fechaPago,@totalPago)

/*Cargar formaDePago*/
create procedure cargarFormaDePago
@detalle varchar(50)
as
insert into FormaDePago values (@detalle)

/*Modificar Producto*/
create procedure modificarPrecioP
@idDetalleDeProducto int,
@PrecioDeVenta int,
@precioDeProveedor int
as
update DetalleDeProducto set precioDeVenta = @PrecioDeVenta where idDetalleDeProducto = @idDetalleDeProducto;
update DetalleDeProducto set precioDeProveedor = @precioDeProveedor where idDetalleDeProducto = @idDetalleDeProducto;

exec modificarPrecioP 1, 11000,7000

/*Modificar y eliminar DetallaDeProducto*/
create procedure modificarStockP
@idDetalleDeProducto int,
@cantidadEnStock int
as 
update DetalleDeProducto set cantidadEnStock = @cantidadEnStock where idDetalleDeProducto = @idDetalleDeProducto;

create procedure eliminarDetalleP
@idDetalleDeProducto int
as
delete from DetalleDeProducto where idDetalleDeProducto = @idDetalleDeProducto

/*Modificar y eliminar Producto*/
create procedure ModificarDetalleP
@idProducto int,
@descripcion varchar(250)
as
update Producto set descripcion = @descripcion where idProducto = @idProducto

create procedure eliminarProducto
@idProducto int
as
delete from Producto where idProducto = @idProducto



/*Modificar y elimanar DetalleDeCategoria*/
create procedure modificarDetallaDeCategoria
@idCategoria int,
@nombreCategoria varchar(25)
as
update DetalleDeCategoria set nombreCategoria = @nombreCategoria where idCategoria = @idCategoria

create procedure EliminarDetalleDeCategoria
@idCategoria int
as
delete from DetalleDeCategoria where idCategoria = @idCategoria

/*Modificar y eliminar Gama*/
create procedure modificarGama
@idGama int,
@tipoDeGama varchar(250)
as
update Gama set tipoGama = @tipoDeGama where idGama = @idGama

create procedure eliminarGama
@idGama int
as
delete from Gama where idGama = @idGama

/*Modificar y eliminar gamaXProducto*/
create procedure modificarGamaXProducto
@idGamaXProducto int,
@idGama int,
@idProducto int
as
update GamaXProducto set idGama = @idGama where idGamaXProducto = @idGamaXProducto
update GamaXProducto set idProducto = @idProducto where idGamaXProducto = @idGamaXProducto

create procedure eliminarGamaXProducto
@idGamaXProducto int
as
delete from GamaXProducto where idGamaXProducto = @idGamaXProducto

/*Modificar y eliminar Cliente*/
create procedure modificarContactoDeCliente
@idCliente int,
@telefono int,
@mail varchar(250)
as
update Cliente set telefono = @telefono where idCliente = @idCliente
update Cliente set mail = @mail where idCliente = @idCliente

create procedure eliminarCliente
@idCliente int
as
delete from Cliente where idCliente = @idCliente

/*Modificar y eliminar Atender*/
create procedure modificarClienteAtendido
@idAtender int,
@idCliente int
as
update Atender set idCliente = @idCliente where idAtender = @idAtender

create procedure eliminarRegistroAtencion
@idAtender int 
as
delete from Atender where idAtender = @idAtender

/*Modificar y eliminar Empleado*/
create procedure modificarContactoEmpleado
@idEmpleado int,
@email varchar(250)
as
update Empleado set mail = @email where idEmpleado = @idEmpleado

create procedure eliminarEmpleado
@idEmpleado int
as
delete from Empleado where idEmpleado = @idEmpleado

/*Modificar y eliminar Pago*/
create procedure modificarFormaDePagoDePago
@idPago int,
@idFormaDePago int
as
update Pago set idFormaDePago = @idFormaDePago where idPago = @idPago

create procedure eliminarPago
@idPago int
as
delete from Pago where idPago = @idPago

/*Moificar y eliminar FormaDePago*/
create procedure modificarFormaDePago
@idFormaDePago int,
@detalle varchar(50)
as
update FormaDePago set detalle = @detalle where idFormaDePago = @idFormaDePago

create procedure eliminarFormaDePago
@idFormaDePago int
as
delete from FormaDePago where idFormaDePago = @idFormaDePago

/*Modificar y eliminar Pedido*/
create procedure modificarEstadoDePedido
@idPedido int,
@estado varchar(25)
as
update Pedido set estado = @estado where idPedido = @idPedido

create procedure eliminarPedido
@idPedido int 
as
delete from Pedido where idPedido = @idPedido

/*modificar y elimainar DetalleDePedido*/
create procedure modificarDetalleDePedido
@idDetallePedido int,
@idPedido int,
@idProducto int,
@cantidad int 
as
update DetalleDePedido set idPedido = @idPedido where idDetallePedido = @idDetallePedido
update DetalleDePedido set idProducto = @idProducto where idDetallePedido = @idDetallePedido
update DetalleDePedido set cantidad = @cantidad where idDetallePedido = @idDetallePedido

create procedure eliminarDetalleDePedido
@idDetallePedido int
as
delete from DetalleDePedido where idDetallePedido = @idDetallePedido

/*1.mostrar los clientes atendidos junto con los empleados que lo hicieron*/
CREATE VIEW ClientesAtendidos
AS
SELECT c.nombre AS Nombre_Cliente,c.apellido1 AS Apellido_Cliente,c.telefono AS Telefono_Cliente,
c.mail AS Email_Cliente,e.nombre AS Nombre_Empleado,e.apellido1 AS Apellido_Empleado,e.mail AS Email_Empleado FROM Cliente c
INNER JOIN Atender a ON C.idCliente = a.idAtender
INNER JOIN Empleado e ON a.idEmpleado = e.idEmpleado;

SELECT *FROM ClientesAtendidos

/*2.Mediante un procedimiento almacenado consultar los pagos que se hicieron dado un año y un mes especifico*/
create procedure consultarPago 
@año int,
@mes int
as
select *from Pago 
where YEAR(fechaPago) = @año and MONTH(fechaPago) = @mes

exec consultarPago '2023','06'

/*3.Mediante un procedimiento almacenado mostrar la cantidad de pedidos que se hicieron dado un año pasado por parametros*/
create procedure CantidadDePedidosEnElAño
@año varchar(25)
as
select count(*) as cantidadDePedidos from Pedido
group by year(fechaPedido)
having year(fechaPedido) = @año

exec CantidadDePedidosEnElAño '2022'

/*4.crear una vista que liste los productos junto con la gama del mismo*/
create view ProductosDelSistema
as
select g.idGama,g.tipoGama,p.idProducto,p.descripcion from Producto p
inner join GamaXProducto gXP on p.idProducto = gXP.idProducto
inner join Gama g on gXP.idGama = g.idGama

select *from ProductosDelSistema

/*5.Mediante una vista mostrar los pagos que se hicieron en el dia junto con los clientes y su forma de pago*/
create view pagosDelDia
as
select c.nombre,c.apellido1 as primerApellido,c.telefono,c.mail,p.idPago,p.fechaPago,fp.detalle as formaDePago,p.totalPago from Pago p
inner join FormaDePago fp on p.idFormaDePago = fp.idFormaDePago
inner join Cliente c on p.idCliente = c.idCliente
where p.fechaPago = CAST(GETDATE() AS DATE)

select *from pagosDelDia

/*6.listar mediante una vista los pedidos que ya fueron entregados cojunto con el cliente al que se entrego*/
create view pedidosEntregados
as
select p.idPedido,p.fechaEntrega,p.fechaEspera,p.fechaPedido,p.Total,c.idCliente,c.nombre as nombreCliente,c.apellido1 as primerApellido, c.mail,c.telefono from Pedido p
inner join Cliente c on p.idCliente = c.idCliente
where p.estado = 'Entregado'

select *from pedidosEntregados

/*7.listar mediante una vista los pedidos que estan en espera*/
create view pedidosEnEspera
as
select p.idPedido,p.fechaEntrega,p.fechaEspera,p.fechaPedido,p.Total,c.idCliente,c.nombre as nombreCliente,c.apellido1 as primerApellido, c.mail,c.telefono from Pedido p
inner join Cliente c on p.idCliente = c.idCliente
where p.estado = 'Espera'

select *from pedidosEnEspera

/*8.listar los pedidos que fueron rechazados*/
create view pedidosRechazados
as
select p.idPedido,p.fechaEntrega,p.fechaEspera,p.fechaPedido,p.Total,c.idCliente,c.nombre as nombreCliente,c.apellido1 as primerApellido, c.mail,c.telefono from Pedido p
inner join Cliente c on p.idCliente = c.idCliente
where p.estado = 'Rechazado'

select *from pedidosRechazados

/*9.Mediante una consulta mostrar el Stock de los productos*/
select p.idProducto,p.descripcion,dp.tipo,dp.cantidadEnStock from Producto p
inner join DetalleDeProducto dp on p.idProducto = dp.idProducto
group by p.idProducto,p.descripcion,dp.tipo,dp.cantidadEnStock

/*10.Mediante una consulta mostrar el nombre,apellido1,dni de los clientes que fueron atendidos por el nombre del empleado pasado por parametros*/
create procedure aQuienAtendio
@nombre varchar(250),
@apellido1 varchar(250)
as
select e.idEmpleado, c.nombre as NombreCliente, c.apellido1 as Apellido1, c.dni as DNI
from Cliente c
inner join Atender a on c.idCliente = a.idCliente
inner join Empleado e on a.idEmpleado = e.idEmpleado
where e.nombre = @nombre and e.apellido1 = @apellido1

exec aQuienAtendio 'Juan','Pérez'

/*11.Mediante una consuta mostrar los clientes que recibieron tarde su producto*/
select p.fechaEspera,p.fechaEntrega,c.idCliente,c.nombre,c.apellido1,c.mail,c.telefono
from cliente c 
join Pedido p on c.idCliente = p.idCliente
where DATEDIFF(DAY,p.fechaEspera,p.fechaEntrega) >=1

/*12.Mediante una consulta mostrar los productos que tienen mas stock que el promedio */
SELECT p.descripcion AS Producto, d.cantidadEnStock AS Stock
FROM Producto p
JOIN DetalleDeProducto d ON p.idProducto = d.idProducto
WHERE d.cantidadEnStock > (SELECT AVG(cantidadEnStock) FROM DetalleDeProducto);

/*13. Mostrar detalle de producto y cantidad de ventas tiene por mes*/

CREATE PROCEDURE ObtenerVentasPorMes
@mes_ingresar int
as
SELECT descripcion, SUM(cantidad) AS total_vendido
FROM DetalleDeProducto p
JOIN Producto produ ON p.idProducto = produ.idProducto
JOIN DetalleDePedido dp ON produ.idProducto = dp.idProducto
JOIN Pedido pedido ON dp.idPedido = pedido.idPedido
WHERE MONTH(fechaPedido) = @mes_ingresar
GROUP BY descripcion; 

exec ObtenerVentasPorMes 5

/*14. Obtener la venta total de todos los productos mas los ingresos totales de todas las ventas*/

CREATE PROCEDURE ObtenerTotalIngresoPorMes
@mes_ingresar int
as
SELECT MONTH(fechaPedido) AS Mes,
       SUM(dp.cantidad) AS TotalProductosVendidos,
       SUM(dp.cantidad * dp.subTotal) AS IngresoTotal
FROM DetalleDePedido dp
JOIN Pedido pedido ON dp.idPedido = pedido.idPedido
JOIN Producto produ ON dp.idProducto = produ.idProducto
WHERE MONTH(fechaPedido) = @mes_ingresar
GROUP BY MONTH(fechaPedido);

exec ObtenerTotalIngresoPorMes 3

/*15. Obtener el empleado que mas ventas tuvo por mes*/

CREATE PROCEDURE ObtenerEmpleadoConMasVentas
@mes_ingresar int
as
SELECT TOP 1
    e.idEmpleado,
    e.nombre AS NombreEmpleado,e.apellido1 as Apellido,
    SUM(dp.cantidad) AS TotalVendido
FROM Empleado e
JOIN Atender a ON e.idEmpleado = a.idEmpleado
JOIN Cliente c ON a.idCliente = c.idCliente
JOIN Pedido pedido on c.idCliente = pedido.idCliente
JOIN DetalleDePedido dp ON pedido.idPedido = dp.idPedido
WHERE MONTH(pedido.fechaPedido) = @mes_ingresar
GROUP BY e.idEmpleado, e.nombre,e.apellido1
ORDER BY TotalVendido DESC;

exec ObtenerEmpleadoConMasVentas 7 

/*16. Calcular el profit por producto y año*/

CREATE PROCEDURE ObtenerProfitPorAnio
@anio_ingresar int
as
SELECT
    p.idProducto,
    p.Descripcion AS Producto,
    YEAR(pedido.fechaPedido) AS Anio,
    SUM(dped.cantidad) AS TotalVendido,
    SUM(dp.PrecioDeVenta - dp.PrecioDeProveedor) AS Profit
FROM DetalleDeProducto dp
JOIN Producto p ON dp.idProducto = p.idProducto
JOIN DetalleDePedido dped ON p.idProducto = dped.idProducto
JOIN Pedido pedido ON dped.idPedido = pedido.idPedido
WHERE YEAR(pedido.fechaPedido) = @anio_ingresar
GROUP BY p.idProducto, p.Descripcion, YEAR(pedido.fechaPedido);

exec ObtenerProfitPorAnio 2021

/*17. Obtener el metodo de pago mas utilizado por mes pasado por parametro*/
CREATE PROCEDURE ObtenerMetodoPagoMasUtilizadoPorMes
@mes_ingresar int
AS
SELECT TOP 1 fechaPedido AS Mes,
       MAX(detalle) AS MetodoPagoMasUtilizado,
       COUNT(*) AS CantidadPedidos
FROM Pedido
JOIN Cliente c ON pedido.idCliente = c.idCliente
JOIN Pago p ON c.idCliente = p.idCliente
JOIN FormaDePago f ON p.idFormaDePago = f.idFormaDePago
WHERE MONTH(fechaPedido) = @mes_ingresar
GROUP BY fechaPedido, detalle
ORDER BY CantidadPedidos DESC;

EXEC ObtenerMetodoPagoMasUtilizadoPorMes 5


/*18.generar una vista para mostrar los pagos disponibles en este momento*/
create view formaDePagoDisponible
as
select *from FormaDePago

select*from formaDePagoDisponible

/*19.generar un procedimineto mostrando el mail de contacto de un empleado con el nombre y apellido pasado por parametros*/
create procedure mostrarContactoEmpleado
@nombre varchar(25),
@apellido varchar(25)
as
select idEmpleado, mail from Empleado
where nombre =  @nombre and apellido1 = @apellido

exec mostrarContactoEmpleado 'Juan','Pérez'

/*20.Mediante un procedimiento almacenado mostrar los pagos de un cliente pasando el idCliente para parametro en caso de no tener pagos realizados mostrar "no hay pagos"*/
CREATE PROCEDURE VerificarPagosCliente
    @cliente_id INT
AS
SELECT idPago, totalPago
FROM Pago
WHERE idCliente = @cliente_id;

SELECT 'No hay pagos' AS mensaje
WHERE NOT EXISTS (SELECT 1 FROM Pago WHERE idCliente = @cliente_id);

exec VerificarPagosCliente 23

create procedure modificarDescripcionDeP
@idProducto int,
@descripcion varchar(250)
as
update Producto set descripcion = @descripcion where idProducto = @idProducto

exec modificarDescripcionDeP 1,'Chomba'
