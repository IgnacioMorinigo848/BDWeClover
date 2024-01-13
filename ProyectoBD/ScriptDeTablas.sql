create database weClover
GO
use weClover

create table Cliente(
	idCliente int primary key identity(1,1),
	nombre varchar(25) not null,
	apellido1 varchar(25) not null,
	apellido2 varchar(25),
	dni int not null,
	fechaDeNacimineto date not null,
	codigoPostal int not null,
	pais varchar(25) not null,
	cuidad varchar(25) not null,
	region varchar(25) not null,
	telefono int not null,
	mail varchar(250) not null

);

create table Empleado(
	idEmpleado int primary key identity(1,1),
	nombre varchar(25) not null,
	apellido1 varchar(25) not null,
	apellido2 varchar(25),
	mail varchar(250) not null
);

create table Atender(
	idAtender int primary key identity(1,1),
	idCliente int not null,
	idEmpleado int not null,
	constraint FK_cliente foreign key (idCliente) references Cliente(idCliente),
	constraint FK_empleado foreign key (idEmpleado) references Empleado(idEmpleado)
);

create table FormaDePago(
	idFormaDePago int primary key identity(1,1),
	detalle varchar(50) not null
	constraint CK_detalle check (detalle in ('Tarjeta de Credido','Tarjeta Debito','Tranferencia','Al Contado'))
);

create table Pago(
	idPago int primary key identity(1,1),
	idCliente int not null,
	idFormaDePago int not null,
	fechaPago date not null,
	totalPago int not null
	constraint CK_TotalPago check (totalPago >= 1),
	constraint FK_formaDePago foreign key (idFormaDePago) references FormaDePago(idFormaDePago),
	constraint FK_idClienteP foreign key (idCliente) references Cliente(idCliente)
);
create table Gama(
	idGama int primary key identity(1,1),
	tipoGama varchar(250) not null

);

create table Producto(
	idProducto int primary key identity(1,1),
	descripcion varchar(250) not null
); 

create table GamaXProducto(	
	idGamaXProducto int primary key identity(1,1),
	idGama int not null,
	idProducto int not null
	constraint FK_Gama foreign key (idGama) references Gama(idGama),
	constraint FK_ProductoG foreign key (idProducto) references Producto(idProducto)
);


create table DetalleDeCategoria(
	idCategoria int primary key identity(1,1),
	nombreCategoria varchar(25) not null
);

create table DetalleDeProducto(
	idDetalleDeProducto int primary key identity(1,1),
	idProducto int not null,
	idCategoria int not null,
	tipo varchar(100) not null,
	estilo varchar(100) not null,
	talle varchar(25) not null,
	cantidadEnStock int not null,
	precioDeVenta int  not null,
	precioDeProveedor int not null,
	constraint CK_Talle check (talle in ('XS','S','M','L','XL','XXL')),
	constraint CK_CantidadEnStock check (cantidadEnStock > -1),
	constraint CK_precioDeVenta check (precioDeVenta >= 1),
	constraint CK_PDeProveedor check (precioDeProveedor >= 1),
	constraint FK_Producto foreign key(idProducto) references Producto(idProducto) on delete cascade,
	constraint FK_CategoriaDet foreign key (idCategoria) references DetalleDeCategoria (idCategoria)
);


create table Pedido(
	idPedido int primary key identity(1,1),
	idCliente int not null,
	fechaPedido date not null,
	fechaEspera date not null,
	fechaEntrega date not null,
	estado varchar(25),
	Total int
	constraint CK_total check (total >= 1),
	constraint CK_estado check (estado in ('Espera','Entregado','Rechazado')),
	constraint FK_idCliente foreign key (idCliente) references Cliente(idCliente) 
);

create table DetalleDePedido(
	idDetallePedido int primary key identity(1,1),
	idPedido int not null,
	idProducto int not null,
	cantidad int not null,
	subTotal int not null,
	constraint CK_cantidad check (cantidad >= 1),
	constraint CK_subTotal check (subTotal >= 1),
	constraint FK_idProducto foreign key (idProducto) references Producto(idProducto),
	constraint FK_Pedido foreign key (idPedido) references Pedido(idPedido)
);


select *from Pedido