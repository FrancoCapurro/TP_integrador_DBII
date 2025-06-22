USE master
GO
USE TPI_BDII_GRUPO18

CREATE VIEW Vista_Productos_Stock AS
SELECT 
    p.IDProducto, p.NombreProducto AS Producto, c.NombreCategoria, m.NombreMarca, p.Talle, p.Color, p.PrecioLista, p.Stock
FROM Producto p
JOIN Categoria c ON p.IDCategoria = c.IDCategoria
JOIN Marca m ON p.IDMarca = m.IDMarca;

CREATE VIEW Vista_Ventas_Clientes AS
SELECT 
    v.IDVenta, v.FechaVenta, v.IDCliente,
   CONCAT(cl.Nombre, ' ', cl.Apellido) AS Cliente,
    f.Pago AS FormaDePago, v.TotalVenta
FROM Venta v
LEFT JOIN Cliente cl ON v.IDCliente = cl.IDCliente
JOIN FormaDePago f ON v.IDFormaDePago = f.IDFormaDePago;

--select * from Vista_Productos_Stock
--select * from Vista_Ventas_Clientes




