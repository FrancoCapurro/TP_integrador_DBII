CREATE DATABASE TPI_BDII_GRUPO18

USE TPI_BDII_GRUPO18

Create table Marca (
IDMarca int primary key not null identity(1,1),
NombreMarca varchar(50) not null unique

)
GO


Create table Categoria (
IDCategoria int primary key not null identity(1,1),
NombreCategoria varchar(50) not null unique

)
GO


Create table Producto(
IDProducto int primary key not null identity(1,1),
NombreProducto varchar(50) not null,
Talle varchar(6) not null,
Color varchar (25) not null,
PrecioLista decimal (10,2) not null check (PrecioLista >= 1),
Stock int not null check (Stock >= 0 ),
IDCategoria int not null foreign key references Categoria(IDCategoria),
IDMarca int not null foreign key references Marca(IDMarca)

)
GO


Create table Proveedor (
IDProveedor int primary key not null identity(1,1),
RazonSocial varchar(50) not null unique,
CUIT varchar(11) not null unique,
Direccion varchar(50) not null,
Email varchar(50) not null unique

)

GO

Create table Cliente (
    IDCliente int primary key identity(1,1),
    Nombre varchar(50) not null,
    Apellido varchar(50) not null,
    Telefono varchar(20) not null
)

GO
Create table FormaDePago (
    IDFormaDePago TINYINT primary key identity(1,1),
    Pago varchar(50) not null
)
GO

Create table Venta (
    IDVenta int primary key identity(1,1),
    FechaVenta date not null,
    TotalVenta decimal(10,2) not null CHECK(TotalVenta>0),
	IDCliente int null foreign key references Cliente(IDCliente),
	IDFormaDePago TINYINT not null foreign key references FormaDePago(IDFormaDePago)
)
GO

Create table DetalleVenta (
    CantidadVenta int not null check (CantidadVenta > 0),
    PrecioUnitario decimal(10,2) not null check (PrecioUnitario >= 0),
    SubTotalVenta decimal(10,2) not null check(SubTotalVenta >= 0),
	IDVenta int not null foreign key references Venta(IDVenta),
	IDProducto INT not null foreign key references Producto(IDProducto),
    primary key (IDVenta,IDProducto),
)
GO

CREATE TABLE Compra (
    IDCompra int not null PRIMARY KEY IDENTITY (1,1),
    FechaCompra DATE NOT NULL,
    IDFormaDePago TINYINT not null FOREIGN KEY REFERENCES FormaDePago(IDFormaDePago),
    IDProveedor INTEGER NOT NULL FOREIGN KEY REFERENCES Proveedor (IDProveedor),
    TotalCompra DECIMAL (10, 2) NOT NULL CHECK(TotalCompra>0)
)
GO
CREATE TABLE DetalleCompra(
    IDCompra int not NULL FOREIGN KEY REFERENCES Compra (IDCompra),
    IDProducto int not NULL FOREIGN KEY REFERENCES Producto(IDProducto),
    CantidadCompra int not null CHECK (CantidadCompra>0),
    CostoUnitario decimal (10,2) not null CHECK(CostoUnitario>=0),
    SubTotalCompra decimal (10,2) not null CHECK(SubTotalCompra>0),
    PRIMARY key (IDCompra, IDProducto)
)
GO


CREATE TABLE  ProveedorProducto(
    IDProveedor INT NOT NULL FOREIGN KEY REFERENCES Proveedor(IDProveedor),
    IDProducto INT NOT NULL FOREIGN KEY REFERENCES Producto(IDProducto),
    PrecioRef DECIMAL (10,2) NOT NULL CHECK (PrecioRef>0), 
    PRIMARY KEY (IDProveedor, IDProducto)
)

GO

CREATE TABLE TipoMovimiento (
    IDTipoMovimiento TINYINT not null PRIMARY KEY IDENTITY (1,1),
    NombreMovimiento VARCHAR (50) not null,
    Motivo VARCHAR (50) not null
)
GO

CREATE TABLE MovimientoInventario(
    IDMovimiento INTEGER NOT NULL PRIMARY KEY IDENTITY (1,1),
    IDProducto INTEGER NOT NULL FOREIGN KEY REFERENCES Producto(IDProducto),
    IDTipoMovimiento TINYINT NOT NULL FOREIGN KEY REFERENCES TipoMovimiento (IDTipoMovimiento),
    Cantidad INTEGER NOT NULL CHECK (Cantidad>0),
    FechaMovimiento DATE NOT NULL
	)



