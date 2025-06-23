use TPI_BDII_GRUPO18
CREATE TRIGGER TR_BajaLogica_TiposMovimientos
ON TiposMovimientos
INSTEAD OF DELETE
AS
BEGIN
    -- Validar que todos los ID a eliminar sean 5 o 6 (ajustes manuales)
    IF EXISTS (
        SELECT 1
        FROM deleted
        WHERE IDTipoMovimiento NOT IN (5, 6)
    )
    BEGIN
        RAISERROR('Solo se permite la baja lógica de tipos de movimiento con ID 5 o 6 (ajustes manuales).', 16, 1);
        RETURN;
    END

    -- Realizar la baja lógica: cambiar Estado a 0 (Inactivo)
    UPDATE TM
    SET Estado = 0
    FROM TiposMovimientos TM
    INNER JOIN deleted D ON TM.IDTipoMovimiento = D.IDTipoMovimiento
    WHERE TM.Estado = 1;
END;
GO

--select * from tiposmovimientos

--delete from TiposMovimientos
--where IDTipoMovimiento=1

--delete from TiposMovimientos
--where IDTipoMovimiento=5

--update TiposMovimientos
--set Estado=1
--where IDTipoMovimiento=5