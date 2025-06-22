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

INSERT INTO DetallesVentas (CantidadVenta, PrecioUnitario, SubTotalVenta, IDVenta, IDProducto) VALUES
(2, 18438.49, 36876.98, 1, 1),
(1, 48885.70, 48885.70, 2, 3),
(1, 45153.05, 45153.05, 3, 5),
(1, 41051.02, 41051.02, 4, 6),
(1, 36151.54, 36151.54, 5, 8);

--SELECT * FROM DetallesVentas
