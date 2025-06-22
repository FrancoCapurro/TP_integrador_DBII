USE TPI_BDII_GRUPO18
CREATE VIEW VW_Top3ProductosMasVendidos_Mes AS
SELECT 
    Anio,
    Mes,
    IDProducto,
    NombreProducto AS Productos,
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
    FROM DetallesVentas dv
    JOIN Ventas v ON dv.IDVenta = v.IDVenta
    JOIN Productos p ON dv.IDProducto = p.IDProducto
    JOIN Marcas m ON p.IDMarca = m.IDMarca
    JOIN Categorias c ON p.IDCategoria = c.IDCategoria
    GROUP BY 
        YEAR(v.FechaVenta), 
        MONTH(v.FechaVenta), 
        p.IDProducto, 
        p.NombreProducto, 
        m.NombreMarca, 
        c.NombreCategoria
) AS TopMensual
WHERE Pos_maxima <= 3;

-- los top 3 productos más vendidos por mes
/*SELECT * FROM VW_Top3ProductosMasVendidos_Mes
ORDER BY Anio, Mes, TotalUnidadesVendidas DESC;*/

/*SELECT * FROM VW_Top3ProductosMasVendidos_Mes
WHERE Anio = 2025 AND Mes =5;*/

/*SELECT * FROM VW_Top3ProductosMasVendidos_Mes
WHERE Anio = 2025 AND NombreMarca ='Zara'
ORDER BY Mes, TotalUnidadesVendidas DESC;*/


-- SEGUNDA VISTA
CREATE VIEW VW_MejorPrecio_Categoria_Marca AS 
SELECT
    c.NombreCategoria,
    m.NombreMarca,
    p.IDProducto,
    p.NombreProducto AS Productos,
    p.Stock,
    pr.IDProveedor,
    pr.RazonSocial AS Proveedores,
    pp.PrecioRef AS MejorPrecioReferencia
FROM ProveedoresProductos pp
JOIN Productos p ON pp.IDProducto = p.IDProducto
JOIN Categorias c ON p.IDCategoria = c.IDCategoria
JOIN Marcas m ON p.IDMarca = m.IDMarca
JOIN Proveedores pr ON pp.IDProveedor = pr.IDProveedor
WHERE pp.PrecioRef = (
    SELECT MIN(pp2.PrecioRef)
    FROM ProveedoresProductos pp2
    JOIN Productos p2 ON pp2.IDProducto = p2.IDProducto
    WHERE p2.IDCategoria = p.IDCategoria
      AND p2.IDMarca = p.IDMarca
);

--LLAMADOS:
/*SELECT * FROM VW_MejorPrecio_Categoria_Marca
WHERE Stock > 50;*/



/*SELECT * FROM VW_MejorPrecio_Categoria_Marca
WHERE NombreMarca = 'Zara'
  AND NombreCategoria = 'pantalon'
  AND MejorPrecioReferencia <= 40000
  AND Stock > 10
ORDER BY MejorPrecioReferencia;*/


--TERCERA VISTA

CREATE VIEW VW_Proveedor_MasCompras_PrecioReferencia AS 
SELECT 
    pr.IDProveedor,
    pr.RazonSocial AS Proveedores,
    COUNT(DISTINCT c.IDCompra) AS CantidadCompras,
    SUM(dc.CantidadCompra) AS TotalProductosComprados,
    SUM(dc.SubTotalCompra) AS MontoTotalComprado,
    AVG(pp.PrecioRef) AS PrecioReferenciaPromedio
FROM Proveedores pr
JOIN Compras c ON pr.IDProveedor = c.IDProveedor
JOIN DetallesCompras dc ON c.IDCompra = dc.IDCompra
JOIN ProveedoresProductos pp ON pr.IDProveedor = pp.IDProveedor AND dc.IDProducto = pp.IDProducto
GROUP BY 
    pr.IDProveedor,
    pr.RazonSocial;


/*SELECT * FROM VW_Proveedor_MasCompras_PrecioReferencia
WHERE CantidadCompras >=1 AND TotalProductosComprados >500;*/

/*SELECT * FROM VW_Proveedor_MasCompras_PrecioReferencia
WHERE MontoTotalComprado > 8000000.00;*/

/*SELECT * FROM VW_Proveedor_MasCompras_PrecioReferencia
ORDER BY MontoTotalComprado DESC;*/
