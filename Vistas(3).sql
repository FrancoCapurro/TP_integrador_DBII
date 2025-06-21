--USE TPI_BDII_GRUPO18

CREATE VIEW VW_Top5ProductosMasVendidos_Mes AS
SELECT 
    Anio,
    Mes,
    IDProducto,
    NombreProducto AS Producto,
    NombreMarca,
    NombreCategoria,
    TotalUnidadesVendidas
FROM (
    SELECT 
        YEAR(v.FechaVenta) AS Anio,
        MONTH(v.FechaVenta) AS Mes,
        p.IDProducto,
        p.NombreProducto,
        m.NombreMarca,
        c.NombreCategoria,
        SUM(dv.CantidadVenta) AS TotalUnidadesVendidas,
        ROW_NUMBER() OVER (
            PARTITION BY YEAR(v.FechaVenta), MONTH(v.FechaVenta)
            ORDER BY SUM(dv.CantidadVenta) DESC
        ) AS Pos_maxima
    FROM DetalleVenta dv
    JOIN Venta v ON dv.IDVenta = v.IDVenta
    JOIN Producto p ON dv.IDProducto = p.IDProducto
    JOIN Marca m ON p.IDMarca = m.IDMarca
    JOIN Categoria c ON p.IDCategoria = c.IDCategoria
    GROUP BY 
        YEAR(v.FechaVenta), 
        MONTH(v.FechaVenta), 
        p.IDProducto, 
        p.NombreProducto, 
        m.NombreMarca, 
        c.NombreCategoria
) AS TopMensual
WHERE Pos_maxima <= 5;

-- los top 5 productos más vendidos por mes
/*SELECT * FROM VW_Top5ProductosMasVendidos_Mes
ORDER BY Anio, Mes, TotalUnidadesVendidas DESC;*/

/*SELECT * FROM VW_Top5ProductosMasVendidos_Mes
WHERE Anio = 2025 AND Mes = 5;*/

/*SELECT * FROM VW_Top5ProductosMasVendidos_Mes
WHERE Anio = 2025 AND NombreMarca = 'Zara'
ORDER BY Mes, TotalUnidadesVendidas DESC;*/


-- SEGUNDA VISTA
CREATE VIEW VW_MejorPrecio_Categoria_Marca AS 
SELECT
    c.NombreCategoria,
    m.NombreMarca,
    p.IDProducto,
    p.NombreProducto AS Producto,
    --p.Stock,
    pr.IDProveedor,
    pr.RazonSocial AS Proveedor,
    pp.PrecioRef AS MejorPrecioReferencia
FROM ProveedorProducto pp
JOIN Producto p ON pp.IDProducto = p.IDProducto
JOIN Categoria c ON p.IDCategoria = c.IDCategoria
JOIN Marca m ON p.IDMarca = m.IDMarca
JOIN Proveedor pr ON pp.IDProveedor = pr.IDProveedor
WHERE pp.PrecioRef = (
    SELECT MIN(pp2.PrecioRef)
    FROM ProveedorProducto pp2
    JOIN Producto p2 ON pp2.IDProducto = p2.IDProducto
    WHERE p2.IDCategoria = p.IDCategoria
      AND p2.IDMarca = p.IDMarca
);

--LLAMADOS:
/*SELECT * FROM VW_MejorPrecio_Categoria_Marca
WHERE Stock > 0;*/

/*SELECT * FROM VW_MejorPrecio_Categoria_Marca
WHERE Stock < 10;*/

/*SELECT * FROM VW_MejorPrecio_Categoria_Marca
WHERE NombreMarca = 'Zara'
  AND NombreCategoria = 'REMERA'
  AND MejorPrecioReferencia <= 40000
  --AND Stock > 0
ORDER BY MejorPrecioReferencia;*/

/*SELECT * FROM VW_MejorPrecio_Categoria_Marca
WHERE Stock < 10;*/

--TERCERA VISTA

CREATE VIEW VW_Proveedor_MasCompras_PrecioReferencia AS 
SELECT 
    pr.IDProveedor,
    pr.RazonSocial AS Proveedor,
    COUNT(DISTINCT c.IDCompra) AS CantidadCompras,
    SUM(dc.CantidadCompra) AS TotalProductosComprados,
    SUM(dc.SubTotalCompra) AS MontoTotalComprado,
    AVG(pp.PrecioRef) AS PrecioReferenciaPromedio
FROM Proveedor pr
JOIN Compra c ON pr.IDProveedor = c.IDProveedor
JOIN DetalleCompra dc ON c.IDCompra = dc.IDCompra
JOIN ProveedorProducto pp ON pr.IDProveedor = pp.IDProveedor AND dc.IDProducto = pp.IDProducto
GROUP BY 
    pr.IDProveedor,
    pr.RazonSocial;


/*SELECT * FROM VW_Proveedor_MasCompras_PrecioReferencia
WHERE CantidadCompras >=1;*/

/*SELECT * FROM VW_Proveedor_MasCompras_PrecioReferencia
WHERE MontoTotalComprado > 7600000.00;*/

/*SELECT * FROM VW_Proveedor_MasCompras_PrecioReferencia
ORDER BY CantidadCompras DESC;*/