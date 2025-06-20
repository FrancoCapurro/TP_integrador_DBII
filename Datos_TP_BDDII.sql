USE TPI_BDII_GRUPO18 

insert into Categoria (NombreCategoria) values
('REMERA'),
('PANTALON'),
('VESTIDO');

insert into Marca (NombreMarca) values
('Lululemon'),
('Zara'),
('Adidas'),
('M&M');

insert into Producto (NombreProducto, Talle, Color, PrecioLista, Stock, IDCategoria, IDMarca) values
('Pantalones azul entallada', 'M', 'Azul', 18438.49, 0, 2, 4),
('Pantalones verde de verano', 'L', 'Verde', 35457.88, 0, 2, 2),
('Vestidos negro ajustado', 'XL', 'Negro', 48885.70, 0, 3, 4),
('Pantalones azul de algodón', 'M', 'Azul', 43716.58, 0, 2, 2),
('Remeras verde ajustado', 'XL', 'Verde', 45153.05, 0, 1, 4),
('Remeras blanco de algodón', 'XL', 'Blanco', 41051.02, 0, 1, 2),
('Pantalones rojo clásico', 'XL', 'Rojo', 44318.86, 0, 2, 2),
('Vestidos azul oversize', 'M', 'Azul', 36151.54, 0, 3, 2),
('Remeras verde clásico', 'L', 'Verde', 13500.25, 0, 1, 2),
('Remeras blanco oversize', 'XL', 'Blanco', 41364.49, 0, 1, 2),
('Remeras negro de algodón', 'M', 'Negro', 20477.00, 0, 1, 2),
('Remeras negro ajustado', 'L', 'Negro', 10482.82, 0, 1, 4),
('Vestidos blanco de verano', 'M', 'Blanco', 25224.32, 0, 3, 2),
('Vestidos rojo ajustado', 'XL', 'Rojo', 38599.78, 0, 3, 4),
('Pantalones rojo clásico', 'S', 'Rojo', 41118.56, 0, 2, 2),
('Pantalones blanco de verano', 'S', 'Blanco', 25065.51, 0, 2, 2),
('Pantalones azul clásico', 'S', 'Azul', 32305.75, 0, 2, 2),
('Vestidos azul entallada', 'L', 'Azul', 47416.58, 0, 3, 4),
('Pantalones azul de algodón', 'XL', 'Azul', 43266.59, 0, 2, 2),
('Vestidos blanco de verano', 'XL', 'Blanco', 26428.11, 0, 3, 2),
('Vestidos deportiva rojo deportivo', 'XL', 'Rojo', 26516.62, 0, 3, 1),
('Remeras deportiva rojo deportivo', 'L', 'Rojo', 38011.49, 0, 1, 3),
('Vestidos deportiva verde movimiento libre', 'L', 'Verde', 32426.17, 0, 3, 1),
('Pantalones deportiva negro deportivo', 'S', 'Negro', 48890.09, 0, 2, 3),
('Remeras deportiva verde dry-fit', 'XL', 'Verde', 19153.81, 0, 1, 3),
('Vestidos deportiva verde gym', 'S', 'Verde', 23531.97, 0, 3, 1),
('Vestidos deportiva negro deportivo', 'XL', 'Negro', 28548.08, 0, 3, 1),
('Remeras deportiva azul running', 'XL', 'Azul', 12307.73, 0, 1, 3),
('Vestidos deportiva negro stretch', 'S', 'Negro', 14979.28, 0, 3, 1),
('Remeras deportiva rojo gym', 'S', 'Rojo', 23605.54, 0, 1, 3),
('Remeras deportiva verde fitness', 'L', 'Verde', 15667.22, 0, 1, 3),
('Remeras deportiva negro gym', 'S', 'Negro', 45501.90, 0, 1, 3),
('Vestidos deportiva negro alta resistencia', 'XL', 'Negro', 39416.93, 0, 3, 1),
('Pantalones deportiva azul deportivo', 'M', 'Azul', 10257.94, 0, 2, 3),
('Vestidos deportiva azul fitness', 'L', 'Azul', 44586.69, 0, 3, 1),
('Vestidos deportiva rojo dry-fit', 'L', 'Rojo', 11580.01, 0, 3, 1),
('Vestidos deportiva blanco fitness', 'M', 'Blanco', 24486.99, 0, 3, 1),
('Pantalones deportiva azul transpirable', 'S', 'Azul', 11407.66, 0, 2, 3),
('Remeras deportiva azul movimiento libre', 'M', 'Azul', 21678.26, 0, 1, 3),
('Remeras deportiva negro entrenamiento', 'M', 'Negro', 45605.65, 0, 1, 3);

insert into FormaDePago (Pago) values
('Efectivo'),
('Debito'),
('Cretito'),
('Transferencia');

insert into Proveedor (RazonSocial, CUIT, Direccion, Email) values
('Azul y Oro', '24-31057997-8', 'Cochabamba 3141-CABA', 'azulyoro@contacto.com'),
('Del oeste', '34-72555705-3', 'Uruguay 210-Moron', 'deloeste@business.com'),
('De Limache', '24-47069195-2', 'Alamos 272-CABA', 'Limaches@contacto.com');

insert into ProveedorProducto (IDProveedor, IDProducto, PrecioRef) values
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
UPDATE Producto SET Stock = 100

INSERT INTO Cliente (Nombre, Apellido, Telefono) VALUES
('Martín', 'Gómez', '1134567890'),
('Sofía', 'Rodríguez', '1145678901');

INSERT INTO Venta (FechaVenta, TotalVenta, IDCliente, IDFormaDePago)
VALUES ('2025-06-20', 60000.00, 3, 4);

-- Venta 2
INSERT INTO Venta (FechaVenta, TotalVenta, IDCliente, IDFormaDePago)
VALUES ('2025-06-19', 85000.00, 2, 3)
