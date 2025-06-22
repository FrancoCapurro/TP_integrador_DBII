USE TPI_BDII_GRUPO18 

insert into Categorias (NombreCategoria) values
('REMERA'),
('PANTALON'),
('VESTIDO');

insert into Marcas (NombreMarca) values
('Lululemon'),
('Zara'),
('Adidas'),
('M&M');

INSERT INTO Colores (NombreColor) VALUES
('Azul'),
('Verde'),
('Negro'),
('Blanco'),
('Rojo');


INSERT INTO Productos (NombreProducto, Talle, IDColor, PrecioLista, Stock, IDCategoria, IDMarca) VALUES
('Pantalones azul entallada', 'M', 1, 18438.49, 0, 2, 4),
('Pantalones verde de verano', 'L', 2, 35457.88, 0, 2, 2),
('Vestidos negro ajustado', 'XL', 3, 48885.70, 0, 3, 4),
('Pantalones azul de algodón', 'M', 1, 43716.58, 0, 2, 2),
('Remeras verde ajustado', 'XL', 2, 45153.05, 0, 1, 4),
('Remeras blanco de algodón', 'XL', 4, 41051.02, 0, 1, 2),
('Pantalones rojo clásico', 'XL', 5, 44318.86, 0, 2, 2),
('Vestidos azul oversize', 'M', 1, 36151.54, 0, 3, 2),
('Remeras verde clásico', 'L', 2, 13500.25, 0, 1, 2),
('Remeras blanco oversize', 'XL', 4, 41364.49, 0, 1, 2),
('Remeras negro de algodón', 'M', 3, 20477.00, 0, 1, 2),
('Remeras negro ajustado', 'L', 3, 10482.82, 0, 1, 4),
('Vestidos blanco de verano', 'M', 4, 25224.32, 0, 3, 2),
('Vestidos rojo ajustado', 'XL', 5, 38599.78, 0, 3, 4),
('Pantalones rojo clásico', 'S', 5, 41118.56, 0, 2, 2),
('Pantalones blanco de verano', 'S', 4, 25065.51, 0, 2, 2),
('Pantalones azul clásico', 'S', 1, 32305.75, 0, 2, 2),
('Vestidos azul entallada', 'L', 1, 47416.58, 0, 3, 4),
('Pantalones azul de algodón', 'XL', 1, 43266.59, 0, 2, 2),
('Vestidos blanco de verano', 'XL', 4, 26428.11, 0, 3, 2),
('Vestidos deportiva rojo deportivo', 'XL', 5, 26516.62, 0, 3, 1),
('Remeras deportiva rojo deportivo', 'L', 5, 38011.49, 0, 1, 3),
('Vestidos deportiva verde movimiento libre', 'L', 2, 32426.17, 0, 3, 1),
('Pantalones deportiva negro deportivo', 'S', 3, 48890.09, 0, 2, 3),
('Remeras deportiva verde dry-fit', 'XL', 2, 19153.81, 0, 1, 3),
('Vestidos deportiva verde gym', 'S', 2, 23531.97, 0, 3, 1),
('Vestidos deportiva negro deportivo', 'XL', 3, 28548.08, 0, 3, 1),
('Remeras deportiva azul running', 'XL', 1, 12307.73, 0, 1, 3),
('Vestidos deportiva negro stretch', 'S', 3, 14979.28, 0, 3, 1),
('Remeras deportiva rojo gym', 'S', 5, 23605.54, 0, 1, 3),
('Remeras deportiva verde fitness', 'L', 2, 15667.22, 0, 1, 3),
('Remeras deportiva negro gym', 'S', 3, 45501.90, 0, 1, 3),
('Vestidos deportiva negro alta resistencia', 'XL', 3, 39416.93, 0, 3, 1),
('Pantalones deportiva azul deportivo', 'M', 1, 10257.94, 0, 2, 3),
('Vestidos deportiva azul fitness', 'L', 1, 44586.69, 0, 3, 1),
('Vestidos deportiva rojo dry-fit', 'L', 5, 11580.01, 0, 3, 1),
('Vestidos deportiva blanco fitness', 'M', 4, 24486.99, 0, 3, 1),
('Pantalones deportiva azul transpirable', 'S', 1, 11407.66, 0, 2, 3),
('Remeras deportiva azul movimiento libre', 'M', 1, 21678.26, 0, 1, 3),
('Remeras deportiva negro entrenamiento', 'M', 3, 45605.65, 0, 1, 3);

insert into FormasDePagos (Pago) values
('Efectivo'),
('Debito'),
('Credito'),
('Transferencia');

insert into Proveedores (RazonSocial, CUIT, Direccion, Email) values
('Azul y Oro', '24-31057997-8', 'Cochabamba 3141-CABA', 'azulyoro@contacto.com'),
('Del oeste', '34-72555705-3', 'Uruguay 210-Moron', 'deloeste@business.com'),
('De Limache', '24-47069195-2', 'Alamos 272-CABA', 'Limaches@contacto.com');

insert into ProveedoresProductos (IDProveedor, IDProducto, PrecioRef) values
(3,	21,	15909.97),
(3,	22,	22806.89),
(3,	23,	19455.70),
(3,	24,	29334.05),
(3,	25,	11492.29),
(3,	26,	14119.18),
(3,	27,	17128.85),
(3,	28,	7384.64),
(3,	29,	8987.57),
(3,	30,	14163.32),
(3,	31,	9400.33),
(3,	32,	27301.14),
(3,	33,	23650.16),
(3,	34,	6154.76),
(3,	35,	26752.01),
(3,	36,	6948.01),
(3,	37,	14692.19),
(3,	38,	6844.60),
(3,	39,	13006.96),
(3,	40,	27363.39),
(1,	1,	9219.25),
(1,	2,	17728.94),
(1,	3,	24442.85),
(1,	4,	21858.29),
(1,	5,	22576.53),
(1,	6,	20525.51),
(1,	7,	22159.43),
(1,	8,	18075.77),
(1,	9,	6750.13),
(1,	10,	20682.25),
(1,	11,	12286.20),
(1,	12,	6289.69),
(1,	13,	15134.59),
(1,	14,	23159.87),
(1,	15,	24671.14),
(1,	16,	15039.31),
(1,	17,	19383.45),
(1,	18,	28449.95),
(1,	19,	25959.95),
(1,	20,	15856.87),
(2,	1,	11063.09),
(2,	2,	21274.73),
(2,	3,	29331.42),
(2,	4,	26229.95),
(2,	5,	27091.83),
(2,	6,	24630.61),
(2,	7,	26591.32),
(2,	8,	21690.92),
(2,	9,	8100.15),
(2,	10,	24818.69),
(2,	11,	10238.50),
(2,	12,	5241.41),
(2,	13,	12612.16),
(2,	14,	19299.89),
(2,	15,	20559.28),
(2,	16,	12532.76),
(2,	17,	16152.88),
(2,	18,	23708.29),
(2,	19,	21633.30),
(2,	20,	13214.06);


-- PARA PROBAR PROCEDIMIENTOS VENTA
UPDATE Productos SET Stock = 100

INSERT INTO Clientes (Nombre, Apellido, Telefono) VALUES
('Martín', 'Gómez', '1134567890'),
('Sofía', 'Rodríguez', '1145678901'),
('Lucas', 'Fernández', '1156789012'),
('Valentina', 'López', '1167890123'),
('Mateo', 'Pérez', '1178901234');
INSERT INTO Clientes (Nombre, Apellido, Telefono) VALUES -- SE AGREGA MAS CLIENTES PARA VISTAS
('Martina', 'Suárez', '6666666666'),
('Federico', 'Quiroga', '7777777777'),
('Sofía', 'Fernández', '8888888888'),
('Diego', 'Torres', '9999999999'),
('Valentina', 'Castro', '1010101010'),
('Gabriel', 'Mendoza', '1212121212'),
('Lucía', 'Silva', '1313131313'),
('Emilia', 'Rojas', '1414141414'),
('Mateo', 'Herrera', '1515151515'),
('Camila', 'Morales', '1616161616'),
('Julián', 'Sosa', '1717171717'),
('Isabela', 'Aguilar', '1818181818');


-- Venta 
INSERT INTO Ventas (FechaVenta, TotalVenta, IDCliente, IDFormaDePago)
VALUES ('2025-06-20', 60000.00, 3, 4);

-- Venta 
INSERT INTO Ventas (FechaVenta, TotalVenta, IDCliente, IDFormaDePago)
VALUES ('2025-06-19', 85000.00, 2, 3)

--NUEVOS DATOS PARA VISTAS
INSERT INTO Ventas (FechaVenta, TotalVenta, IDCliente, IDFormaDePago) VALUES
('2025-06-01', 36876.98, 1, 1),
('2025-06-01', 48885.70, 2, 2),
('2025-06-02', 45153.05, 3, 3),
('2025-06-02', 41051.02, 4, 4),
('2025-06-03', 36151.54, 5, 1);
INSERT INTO Ventas (FechaVenta, TotalVenta, IDCliente, IDFormaDePago) VALUES
('2025-05-01',20965.64,2,4),
('2025-05-01',50448.64,9,1),
('2025-05-02',115799.34,5,3),
('2025-05-02',123355.68,14,2),
('2025-05-02',25065.51,13,4),
('2025-05-03',64611.5,6,1),
('2025-05-03',47416.58,3,2),
('2025-05-03',129799.77,10,3),
('2025-05-04',52856.22,7,4),
('2025-05-04',26516.62,1,2),
('2025-05-04',114034.47,8,3),
('2025-05-05',97278.51,12,1),
('2025-05-05',97780.18,11,4),
('2025-05-05',19153.81,17,2),
('2025-05-06',23531.97,15,1),
('2025-05-06',57096.16,4,3),
('2025-05-07',36923.19,16,4),
('2025-05-07',44937.84,2,1),
('2025-05-07',47211.08,9,2),
('2025-05-08',15667.22,13,3),
('2025-05-08',91003.8,5,4),
('2025-05-09',118250.79,6,2),
('2025-05-09',20515.88,3,1),
('2025-05-09',44586.69,10,3);

INSERT INTO DetallesVentas (CantidadVenta, PrecioUnitario, SubTotalVenta, IDVenta, IDProducto) VALUES
(2, 18438.49, 36876.98, 1, 1),
(1, 48885.70, 48885.70, 2, 3),
(1, 45153.05, 45153.05, 3, 5),
(1, 41051.02, 41051.02, 4, 6),
(1, 36151.54, 36151.54, 5, 8);
INSERT INTO DetallesVentas (CantidadVenta, PrecioUnitario, SubTotalVenta, IDVenta, IDProducto) VALUES
(2,10482.82,20965.64,8,12),
(2,25224.32,50448.64,9,13),
(3,38599.78,115799.34,10,14),
(3,41118.56,123355.68,11,15),
(1,25065.51,25065.51,12,16),
(2,32305.75,64611.5,13,17),
(1,47416.58,47416.58,14,18),
(3,43266.59,129799.77,15,19),
(2,26428.11,52856.22,16,20),
(1,26516.62,26516.62,17,21),
(3,38011.49,114034.47,18,22),
(3,32426.17,97278.51,19,23),
(2,48890.09,97780.18,20,24),
(1,19153.81,19153.81,21,25),
(1,23531.97,23531.97,22,26),
(2,28548.08,57096.16,23,27),
(3,12307.73,36923.19,24,28),
(3,14979.28,44937.84,25,29),
(2,23605.54,47211.08,26,30),
(1,15667.22,15667.22,27,31),
(2,45501.9,91003.8,28,32),
(3,39416.93,118250.79,29,33),
(2,10257.94,20515.88,30,34),
(1,44586.69,44586.69,31,35);

INSERT INTO Compras (FechaCompra, IDFormaDePago, IDProveedor, TotalCompra) VALUES
('2025-05-01',1,1,7404999.4),
('2025-05-01',1,2,7520304.8),
('2025-06-01',4,3,9686880.54);

INSERT INTO DetallesCompras (IDCompra, IDProducto, CantidadCompra, CostoUnitario, SubTotalCompra) VALUES
(1,1,20,9219.25,184385),
(1,2,20,17728.94,354578.8),
(1,3,20,24442.85,488857),
(1,4,20,21858.29,437165.8),
(1,5,20,22576.53,451530.6),
(1,6,20,20525.51,410510.2),
(1,7,20,22159.43,443188.6),
(1,8,20,18075.77,361515.4),
(1,9,20,6750.13,135002.6),
(1,10,20,20682.25,413645),
(1,11,20,12286.2,245724),
(1,12,20,6289.69,125793.8),
(1,13,20,15134.59,302691.8),
(1,14,20,23159.87,463197.4),
(1,15,20,24671.14,493422.8),
(1,16,20,15039.31,300786.2),
(1,17,20,19383.45,387669),
(1,18,20,28449.95,568999),
(1,19,20,25959.95,519199),
(1,20,20,15856.87,317137.4),
(2,1,20,11063.09,221261.8),
(2,2,20,21274.73,425494.6),
(2,3,20,29331.42,586628.4),
(2,4,20,26229.95,524599),
(2,5,20,27091.83,541836.6),
(2,6,20,24630.61,492612.2),
(2,7,20,26591.32,531826.4),
(2,8,20,21690.92,433818.4),
(2,9,20,8100.15,162003),
(2,10,20,24818.69,496373.8),
(2,11,20,10238.5,204770),
(2,12,20,5241.41,104828.2),
(2,13,20,12612.16,252243.2),
(2,14,20,19299.89,385997.8),
(2,15,20,20559.28,411185.6),
(2,16,20,12532.76,250655.2),
(2,17,20,16152.88,323057.6),
(2,18,20,23708.29,474165.8),
(2,19,20,21633.3,432666),
(2,20,20,13214.06,264281.2),
(3,21,30,15909.97,477299.16),
(3,22,30,22806.89,684206.82),
(3,23,30,19455.70,583671.06),
(3,24,30,29334.05,880021.62),
(3,25,30,11492.29,344768.58),
(3,26,30,14119.18,423575.46),
(3,27,30,17128.85,513865.44),
(3,28,30,7384.64,221539.14),
(3,29,30,8987.57,269627.04),
(3,30,30,14163.32,424899.72),
(3,31,30,9400.33,282009.96),
(3,32,30,27301.14,819034.2),
(3,33,30,23650.16,709504.74),
(3,34,30,6154.76,184642.92),
(3,35,30,26752.01,802560.42),
(3,36,30,6948.01,208440.18),
(3,37,30,14692.19,440765.82),
(3,38,30,6844.60,205337.88),
(3,39,30,13006.96,390208.68),
(3,40,30,27363.39,820901.7);





