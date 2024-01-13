use weClover
go

--cargar cliente-
exec cargarCliente 'Alan','Orlando',null,45789878,'2003/02/14',1253,'Argentina','La Matanza','Buenos Aires',1134546487,'AOrlando@hotmail.com'
exec cargarCliente 'Jazmin','Martin','Selem',45778889,'2003/07/17',3457,'Argentina','Quilmes','Buenos Aires',1198348754,'JazminS12@gmail.com'
exec cargarCliente 'Oscar','villalba',null,24984576,'1974/04/21',1253,'Argentina','La Matanza','Buenos Aires',1122460967,'Oscar_villalba@yahoo.com'
exec cargarCliente 'Micaela','Fuentes','Padilla',45986734,'2004/10/02',6753,'Argentina','Belgrano','Buenos Aires',1189369867,'MFuentes@gmail.com'
exec cargarCliente 'Florencia','Borda','Servizuella',44789832,'2002/12/22',8976,'Argentina','Claypole','Buenos Aires',1134879809,'Flor_servi@BuenosAires.edu.ar'
exec cargarCliente 'Roman','Stella',null, 92456178,'1967/12/19',1881,'Argentina','San Francisco Solano','Buenos Aires',1122983409,'RomanStel@gmail.com'
exec cargarCliente 'Ana', 'García', 'López', 23456789, '1992/07/10', 2500, 'Argentina', 'Rosario', 'Santa Fe', 1122334455, 'ana.garcia@hotmail.com'
exec cargarCliente 'Pedro', 'Santos', 'Silva', 87654321, '1987/04/25', 3200, 'Argentina', 'San Nicolas', 'Rosario', 1144332211, 'pedro.santos@hotmail.com'
exec cargarCliente 'María', 'López', 'Fernández', 34567890, '1990/01/15', 4100, 'Uruguay', 'Colonia', 'Departamento de Colonia', 1577889900, 'maria.lopez@yahoo.com'
exec cargarCliente 'Juan', 'Martínez', 'Gómez', 45678901, '1988/09/05', 2800, 'Argentina', 'Cordoba', 'Cordoba Capital', 1188990011, 'juan.martinez@gamil.com'
exec cargarCliente 'Luis', 'Oliveira', 'Silva', 12345678, '1995/02/20', 3300, 'Paraguay', 'Asuncion', 'Manora', 1500112233, 'luis.oliveira@hotmail.com'
exec cargarCliente 'Sofía', 'Pérez', 'Rodríguez', 56789012, '1986/06/12', 4200, 'Uruguay', 'Montevideo', 'Departamento de Montevideo', 1122334455, 'sofia.perez@gmail.com'
exec cargarCliente 'Miguel', 'Fernández', null, 67890123, '1991/03/08', 2600, 'Argentina', 'Lomas De Zamora', 'Buenos Aires', 1144332211, 'miguel.fernandez@hotmail.com'
exec cargarCliente 'Isabel', 'Silva', 'Martins', 34567890, '1989/10/30', 3700, 'Argentina', 'Bahia Blanca', 'Buenos Aires', 1577889900, 'isabel.silva@hotmail.com'
exec cargarCliente 'Eduardo', 'Rodríguez', null, 90123456, '1994/05/22', 4300, 'Argentina', 'Las Grutas', 'Rio Negro', 1588990011, 'eduardo.rodriguez@hotmail.com'
exec cargarCliente 'Carla', 'Gómez', 'Fernández', 23456789, '1985/12/18', 2990, 'Argentina', 'Rosario', 'Santa Fe', 1500112233, 'carla.gomez@gmail.com'
exec cargarCliente 'Antonio', 'Santos', null, 56789012, '1993/08/14', 3400, 'Argentina', 'Corrientes', 'Corrientes Capital', 1122334455, 'antonio.santos@gmail.com'
exec cargarCliente 'Rosa', 'Pérez', 'García', 12345678, '1986/04/02', 4511, 'Uruguay', 'Montevideo', 'Departamento de Montevideo', 1144332211, 'rosa.perez@gmail.com'
exec cargarCliente 'Fernando', 'Martínez', 'López', 23456789, '1990/11/20', 3098, 'Argentina', 'Buenos Aires', 'Palermo', 1177889909, 'fernando.martinez@gmail.com'
exec cargarCliente 'Clara', 'Oliveira','Silva', 57654321, '1987/07/15', 3645, 'Argentina', 'Salta', 'San Lorenzo', 1188990011, 'clara.oliveira@gmail.com'
go

--datos de forma de pago
EXEC cargarFormaDePago 'Tarjeta de Credido'
EXEC cargarFormaDePago 'Tarjeta Debito'
EXEC cargarFormaDePago 'Tranferencia'
EXEC cargarFormaDePago 'Al Contado'
go

--cargar pago--
exec cargarPago 1,1,'2020-10-10',20000
exec cargarPago 1,1,'2022-05-15',15000
exec cargarPago 2,3,'2021-07-02',18000
exec cargarPago 5,2,'2023-01-20',22000
exec cargarPago 10,4,'2022-11-08',13000
exec cargarPago 15,1,'2021-09-30',25000
exec cargarPago 8,3,'2023-03-12',17000
exec cargarPago 12,2,'2022-08-05',19000
exec cargarPago 3,4,'2021-12-18',20000
exec cargarPago 6,1,'2023-02-25',16000
exec cargarPago 18,2,'2022-04-03',21000
exec cargarPago 4,3,'2021-10-14',23000
exec cargarPago 11,4,'2023-05-08',14000
exec cargarPago 7,1,'2022-06-22',26000
exec cargarPago 9,2,'2021-11-11',18000
exec cargarPago 14,3,'2023-04-01',17000
exec cargarPago 13,4,'2022-09-19',24000
exec cargarPago 20,1,'2021-08-08',20000
exec cargarPago 17,2,'2023-06-05',22000
exec cargarPago 16,3,'2022-03-27',16000
exec cargarPago 19,4,'2021-12-10',19000
exec cargarPago 19,4,'2023-11-20',19000
go
--cargar Pedido--
exec cargarPedido 1,'2020-10-10','2020-10-24','2020-10-24','Entregado',20000
exec cargarPedido 1,'2022-05-15','2022-05-20','2022-05-18','Entregado',15000
exec cargarPedido 2,'2021-07-02','2021-07-10','2021-07-08','Rechazado',18000
exec cargarPedido 5,'2023-01-20','2023-01-25','2023-01-23','Espera',22000
exec cargarPedido 10,'2022-11-08','2022-11-15','2022-11-12','Entregado',13000
exec cargarPedido 15,'2021-09-30','2021-10-05','2021-10-03','Espera',25000
exec cargarPedido 8,'2023-03-12','2023-03-18','2023-03-15','Rechazado',17000
exec cargarPedido 12,'2022-08-05','2022-08-10','2022-08-08','Espera',19000
exec cargarPedido 3,'2021-12-18','2021-12-25','2021-12-22','Entregado',20000
exec cargarPedido 6,'2023-02-25','2023-03-02','2023-02-28','Espera',16000
exec cargarPedido 18,'2022-04-03','2022-04-10','2022-04-08','Rechazado',21000
exec cargarPedido 4,'2021-10-14','2021-10-20','2021-10-18','Entregado',23000
exec cargarPedido 11,'2023-05-08','2023-05-15','2023-05-12','Espera',14000
exec cargarPedido 7,'2022-06-22','2022-06-28','2022-06-25','Rechazado',26000
exec cargarPedido 9,'2021-11-11','2021-11-18','2021-11-15','Espera',18000
exec cargarPedido 14,'2023-04-01','2023-04-08','2023-04-05','Entregado',17000
exec cargarPedido 13,'2022-09-19','2022-09-26','2022-09-23','Espera',24000
exec cargarPedido 20,'2021-08-08','2021-08-15','2021-08-12','Rechazado',20000
exec cargarPedido 17,'2023-06-05','2023-06-12','2023-06-10','Espera',22000
exec cargarPedido 16,'2022-03-27','2022-04-03','2022-03-30','Entregado',16000
exec cargarPedido 19,'2021-12-10','2021-12-18','2021-12-15','Rechazado',19000
exec cargarPedido 1,'2023-11-10','2021-11-20','2023-12-30','Entregado',19000

go

--cargar empleado--
exec cargarEmpleado 'Juan', 'Pérez', 'Gómez', 'juan.perez@weColver.com.ar'
exec cargarEmpleado 'María', 'González', 'López', 'maria.gonzalez@weColver.com.ar'
exec cargarEmpleado 'Carlos', 'Martínez', 'Fernández', 'carlos.martinez@weColver.com.ar'
exec cargarEmpleado 'Laura', 'López', 'Rodríguez', 'laura.lopez@weColver.com.ar'
exec cargarEmpleado 'Pedro', 'Sánchez', 'Hernández', 'pedro.sanchez@weColver.com.ar'
exec cargarEmpleado 'Ana', 'Ramírez', 'García', 'ana.ramirez@weColver.com.ar'
exec cargarEmpleado 'Luis', 'Díaz', 'Pérez', 'luis.diaz@weColver.com.ar'
exec cargarEmpleado 'Elena', 'Fernández', NULL, 'elena.fernandez@weColver.com.ar'
exec cargarEmpleado 'Miguel', 'Moreno', 'Jiménez', 'miguel.moreno@weColver.com.ar'
exec cargarEmpleado 'Carmen', 'Ruiz', 'Sánchez', 'carmen.ruiz@weColver.com.ar'
exec cargarEmpleado 'Javier', 'Gómez', NULL, 'javier.gomez@weColver.com.ar'
exec cargarEmpleado 'Rosa', 'Martín', 'Serrano', 'rosa.martin@weColver.com.ar'
exec cargarEmpleado 'Alejandro', 'Torres', NULL, 'alejandro.torres@weColver.com.ar'
exec cargarEmpleado 'Isabel', 'Ortega', 'Núñez', 'isabel.ortega@weColver.com.ar'
exec cargarEmpleado 'Sergio', 'Hernández', 'Vega', 'sergio.hernandez@weColver.com.ar'
exec cargarEmpleado 'Lucía', 'Morales', 'Silva', 'lucia.morales@weColver.com.ar'
exec cargarEmpleado 'Pablo', 'Vargas', 'Ramos', 'pablo.vargas@weColver.com.ar'
exec cargarEmpleado 'Eva', 'Jiménez', NULL, 'eva.jimenez@weColver.com.ar'
exec cargarEmpleado 'Antonio', 'López', 'Cabrera', 'antonio.lopez@weColver.com.ar'
exec cargarEmpleado 'Beatriz', 'García', NULL, 'beatriz.garcia@weColver.com.ar'

go

--cargar atender--
exec cargarAtender 1, 1
exec cargarAtender 3, 2
exec cargarAtender 5, 3
exec cargarAtender 7, 4
exec cargarAtender 9, 5
exec cargarAtender 11, 6
exec cargarAtender 1, 7
exec cargarAtender 13, 8
exec cargarAtender 15, 9
exec cargarAtender 3, 10
exec cargarAtender 2, 11
exec cargarAtender 5, 12
exec cargarAtender 7, 13
exec cargarAtender 1, 14
exec cargarAtender 11, 15
exec cargarAtender 13, 16
exec cargarAtender 15, 17
exec cargarAtender 17, 18
exec cargarAtender 19, 19
exec cargarAtender 1, 20
go

--cargar producto--
EXEC cargarProducto 'Camiseta'
EXEC cargarProducto 'Pantalones'
EXEC cargarProducto 'Chaqueta'
EXEC cargarProducto 'Vestido'
EXEC cargarProducto 'Camisa'
EXEC cargarProducto 'Bufanda'
EXEC cargarProducto 'Gorro'
EXEC cargarProducto 'Zapatillas'
EXEC cargarProducto 'Falda'
EXEC cargarProducto 'Abrigo'
EXEC cargarProducto 'Suéter'
EXEC cargarProducto 'Sandalias'
EXEC cargarProducto 'Ojotas'
EXEC cargarProducto 'Blusa'
EXEC cargarProducto 'Calzas'
EXEC cargarProducto 'Calcetines'
EXEC cargarProducto 'Traje De Baño'
EXEC cargarProducto 'Sombrero'
EXEC cargarProducto 'Chaleco'
EXEC cargarProducto 'Guantes'
EXEC cargarProducto 'Pijama'

go

--cargar gama--
EXEC cargarGama 'Casual';
EXEC cargarGama 'Formal';
EXEC cargarGama 'Deportivo';
EXEC cargarGama 'Elegante';
EXEC cargarGama 'Urbano';
EXEC cargarGama 'Bohemia';
EXEC cargarGama 'Retro';
EXEC cargarGama 'Moderna';
EXEC cargarGama 'Vintage';
EXEC cargarGama 'Minimalista';
EXEC cargarGama 'Colorida';
EXEC cargarGama 'Estacional';
EXEC cargarGama 'Ecuestre';
EXEC cargarGama 'Playera';
EXEC cargarGama 'Nocturna';
EXEC cargarGama 'Aventurera';
EXEC cargarGama 'Confortable';
EXEC cargarGama 'Chic';
EXEC cargarGama 'Sostenible';
EXEC cargarGama 'Edicion Limitada';

go

--cargar GamaXProducto--
exec cargarGamaXProducto 1, 1; -- Casual - Camiseta --
exec cargarGamaXProducto 5, 2; -- Urbano - Pantalones --
exec cargarGamaXProducto 3, 3; -- Deportivo - Chaqueta --
exec cargarGamaXProducto 4, 4; -- Elegante - Vestido --
exec cargarGamaXProducto 5, 5; -- Urbano - Camisa --
exec cargarGamaXProducto 6, 6; -- Bohemia - Bufanda --
exec cargarGamaXProducto 7, 7; -- Retro - Gorro --
exec cargarGamaXProducto 8, 8; -- Moderna - Zapatillas --
exec cargarGamaXProducto 9, 9; -- Vintage - Falda --
exec cargarGamaXProducto 10, 10; -- Minimalista - Abrigo --
exec cargarGamaXProducto 11, 11; -- Colorida - Suéter --
exec cargarGamaXProducto 12, 12; -- Estacional - Sandalias --
exec cargarGamaXProducto 13, 13; -- Ecuestre - Ojotas --
exec cargarGamaXProducto 14, 14; -- Playera - Blusa --
exec cargarGamaXProducto 15, 15; -- Nocturna - Calzas --
exec cargarGamaXProducto 16, 16; -- Aventurera - Calcetines --
exec cargarGamaXProducto 17, 17; -- Confortable - Traje De Baño --
exec cargarGamaXProducto 18, 18; -- Chic - Sombrero --
exec cargarGamaXProducto 19, 19; -- Sostenible - Chaleco --
exec cargarGamaXProducto 20, 20; -- Edicion Limitada - Guantes --
go

--cargar DetalleDeCategoria--
EXEC cargarDetalleDeCategoria 'Hombre'
EXEC cargarDetalleDeCategoria 'Mujer'
EXEC cargarDetalleDeCategoria 'Unisex'
go

--cargar detalle  de producto--
EXEC cargarDetalleDeProducto 1, 1, 'Jean', 'Azul', 'M', 50, 25000, 18000
EXEC cargarDetalleDeProducto 2, 2, 'Cuero', 'Negro', 'L', 30, 35000, 28000
EXEC cargarDetalleDeProducto 3, 3, 'Sintético', 'Rojo', 'S', 40, 18000, 12000
EXEC cargarDetalleDeProducto 4, 1, 'Tela', 'Verde', 'XL', 25, 30000, 22000
EXEC cargarDetalleDeProducto 5, 2, 'Denim', 'Blanco', 'S', 60, 28000, 20000
EXEC cargarDetalleDeProducto 6, 3, 'Algodón', 'Amarillo', 'M', 45, 22000, 15000
EXEC cargarDetalleDeProducto 7, 1, 'Lino', 'Gris', 'L', 35, 32000, 24000
EXEC cargarDetalleDeProducto 8, 2, 'Poliéster', 'Negro', 'XL', 28, 40000, 30000
EXEC cargarDetalleDeProducto 9, 3, 'Seda', 'Rosa', 'S', 20, 28000, 20000
EXEC cargarDetalleDeProducto 10, 1, 'Tejido', 'Azul Marino', 'M', 50, 25000, 18000
EXEC cargarDetalleDeProducto 11, 2, 'Denim', 'Vino', 'L', 30, 35000, 28000
EXEC cargarDetalleDeProducto 12, 3, 'Algodón', 'Blanco', 'S', 40, 18000, 12000
EXEC cargarDetalleDeProducto 13, 1, 'Lino', 'Negro', 'XL', 25, 30000, 22000
EXEC cargarDetalleDeProducto 14, 2, 'Sintético', 'Gris', 'S', 60, 28000, 20000
EXEC cargarDetalleDeProducto 15, 3, 'Tejido', 'Verde', 'M', 45, 22000, 15000
EXEC cargarDetalleDeProducto 16, 1, 'Denim', 'Marrón', 'L', 35, 32000, 24000
EXEC cargarDetalleDeProducto 17, 2, 'Poliéster', 'Beige', 'XL', 28, 40000, 30000
EXEC cargarDetalleDeProducto 18, 3, 'Algodón', 'Negro', 'S', 20, 28000, 20000
EXEC cargarDetalleDeProducto 19, 1, 'Sintético', 'Azul', 'M', 50, 25000, 18000
EXEC cargarDetalleDeProducto 20, 2, 'Denim', 'Blanco', 'L', 30, 35000, 28000
go

--cargcar detalle de pedido--
EXEC cargarDetalleDePedido 1, 1, 5, 20000
EXEC cargarDetalleDePedido 2, 2, 3, 15000
EXEC cargarDetalleDePedido 3, 3, 7, 18000
EXEC cargarDetalleDePedido 4, 4, 2, 22000
EXEC cargarDetalleDePedido 5, 5, 4, 13000
EXEC cargarDetalleDePedido 6, 6, 6, 25000
EXEC cargarDetalleDePedido 7, 7, 8, 17000
EXEC cargarDetalleDePedido 8, 8, 1, 19000
EXEC cargarDetalleDePedido 9, 9, 3, 20000
EXEC cargarDetalleDePedido 10, 10, 5, 16000
EXEC cargarDetalleDePedido 11, 11, 2, 21000
EXEC cargarDetalleDePedido 12, 12, 4, 23000
EXEC cargarDetalleDePedido 13, 13, 6, 14000
EXEC cargarDetalleDePedido 14, 14, 8, 26000
EXEC cargarDetalleDePedido 15, 15, 1, 18000
EXEC cargarDetalleDePedido 16, 16, 3, 17000
EXEC cargarDetalleDePedido 17, 17, 5, 24000
EXEC cargarDetalleDePedido 18, 18, 2, 20000
EXEC cargarDetalleDePedido 19, 19, 4, 22000
EXEC cargarDetalleDePedido 20, 20, 6, 16000
EXEC cargarDetalleDePedido 21, 20, 6, 16000

go
