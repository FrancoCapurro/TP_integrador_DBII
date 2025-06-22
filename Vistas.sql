USE master
GO
USE TPI_BDII_GRUPO18

CREATE VIEW Vista_Productos_Stock AS
SELECT 
    p.IDProducto, p.NombreProducto AS Productos, c.NombreCategoria, m.NombreMarca, p.Talle, co.NombreColor, p.PrecioLista, p.Stock
FROM Productos p
JOIN Categorias c ON p.IDCategoria = c.IDCategoria
JOIN Marcas m ON p.IDMarca = m.IDMarca
INNER JOIN Colores co ON p.IDColor = co.IDColor

--select * from Vista_Productos_Stock
--SELECT * FROM Vista_Productos_Stock WHERE Stock = 0;
--SELECT * FROM Vista_Productos_Stock WHERE NombreMarca = 'Zara';
--SELECT * FROM Vista_Productos_Stock WHERE Stock > 50;


create VIEW Vista_Ventas_Clientes AS
SELECT 
    v.IDVenta, v.FechaVenta, v.IDCliente,
   CONCAT(cl.Nombre, ' ', cl.Apellido) AS Clientes,
    f.Pago AS FormasDePagos, v.TotalVenta
FROM Ventas v
LEFT JOIN Clientes cl ON v.IDCliente = cl.IDCliente
JOIN FormasDePagos f ON v.IDFormaDePago = f.IDFormaDePago;


--select * from Vista_Ventas_Clientes

-- SELECT * FROM Vista_Ventas_Clientes
-- WHERE Cliente IS NOT NULL;

-- SELECT * FROM Vista_Ventas_Clientes
-- WHERE Cliente IS NULL;

-- SELECT * FROM Vista_Ventas_Clientes
-- WHERE FormaDePago = 'Transferencia';



