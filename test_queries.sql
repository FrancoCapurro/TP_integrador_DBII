USE master
GO

USE TPI_BDII_GRUPO18

--SELECT nombreproducto AS 'Nombre de Producto', talle, color, preciolista as ' Precio de Lista', idcategoria as 'Categoria', idmarca as 'Marca' from producto

--Muestra las VENTAS con cliente y su forma de pago
-- SELECT 
--     V.IDVenta,
--     V.FechaVenta,
--     V.TotalVenta,
--     C.Nombre + ' ' + C.Apellido AS Cliente,
--     FP.Pago AS FormaDePago
-- FROM Venta V
-- JOIN Cliente C ON V.IDCliente = C.IDCliente
-- JOIN FormaDePago FP ON V.IDFormaDePago = FP.IDFormaDePago;


--Detalle de Venta
-- SELECT 
--     DV.IDVenta as'Venta', P.NombreProducto as'Nombre Producto', DV.CantidadVenta as'Cantidad de Ventas', DV.PrecioUnitario as' Precio Unitario', DV.SubTotalVenta
-- FROM DetalleVenta DV
-- JOIN Producto P ON DV.IDProducto = P.IDProducto
-- ORDER BY DV.IDVenta;

---Muestra total de Ventas
--SELECT COUNT(*) AS TotalVentas FROM Venta;

-- SELECT IDVenta,FechaVenta, TotalVenta, IDCliente, IDFormaDePago FROM Venta;

--SELECT  FechaVenta, IDCliente, IDFormaDePago FROM Venta;

-- DELETE FROM DetalleVenta
-- WHERE IDVenta IN (
--     SELECT IDVenta
--     FROM Venta
--     WHERE (FechaVenta = '2025-06-20' AND TotalVenta = 60000.00 AND IDCliente = 1 AND IDFormaDePago = 2)
--        OR (FechaVenta = '2025-06-19' AND TotalVenta = 85000.00 AND IDCliente = 2 AND IDFormaDePago = 3)
-- );

-- DELETE FROM Venta
-- WHERE (FechaVenta = '2025-06-20' AND TotalVenta = 60000.00 AND IDCliente = 1 AND IDFormaDePago = 2)
--    OR (FechaVenta = '2025-06-19' AND TotalVenta = 85000.00 AND IDCliente = 2 AND IDFormaDePago = 3);

--select * from venta

--SELECT * FROM Vista_Productos_Stock WHERE Stock = 0;
--SELECT * FROM Vista_Productos_Stock WHERE NombreMarca = 'Zara';
--SELECT * FROM Vista_Productos_Stock WHERE NombreMarca = 'Zara' AND NombreCategoria = 'Remera';
--SELECT * FROM Vista_Productos_Stock WHERE Stock > 50;

--SELECT * FROM Vista_Ventas_Clientes;

-- SELECT * FROM Vista_Ventas_Clientes
-- WHERE Cliente IS NOT NULL;

-- SELECT * FROM Vista_Ventas_Clientes
-- WHERE Cliente IS NULL;

-- SELECT * FROM Vista_Ventas_Clientes
-- WHERE FormaDePago = 'Transferencia';

-- SELECT FormaDePago, SUM(TotalVenta) AS TotalPorForma
-- FROM Vista_Ventas_Clientes
-- GROUP BY FormaDePago;

-- SELECT Cliente, TotalVenta
-- FROM Vista_Ventas_Clientes
-- WHERE Cliente IS NOT NULL
-- ORDER BY TotalVenta DESC;







