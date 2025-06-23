CREATE DATABASE TPI_BDII_GRUPO18

USE TPI_BDII_GRUPO18

Create table Marcas (
IDMarca int primary key not null identity(1,1),
NombreMarca varchar(50) not null unique

)
GO


Create table Categorias (
IDCategoria int primary key not null identity(1,1),
NombreCategoria varchar(50) not null unique

)
GO

Create table Colores (
IDColor int primary key not null identity(1,1),
NombreColor varchar(50) not null unique

)
GO


Create table Productos(
IDProducto int primary key not null identity(1,1),
NombreProducto varchar(50) not null,
Talle varchar(6) not null,
PrecioLista decimal (10,2) not null check (PrecioLista >= 1),
Stock int not null check (Stock >= 0 ),
IDCategoria int not null foreign key references Categorias(IDCategoria),
IDMarca int not null foreign key references Marcas(IDMarca),
IDColor int not null foreign key references Colores(IDColor)

)
GO


Create table Proveedores (
IDProveedor int primary key not null identity(1,1),
RazonSocial varchar(50) not null unique,
CUIT varchar(13) not null unique,
Direccion varchar(50) not null,
Email varchar(50) not null unique

)

GO

Create table Clientes (
    IDCliente int primary key identity(1,1),
    Nombre varchar(50) not null,
    Apellido varchar(50) not null,
    Telefono varchar(20) not null
)

GO
Create table FormasDePagos (
    IDFormaDePago TINYINT primary key identity(1,1),
    Pago varchar(50) not null
)
GO

Create table Ventas (
    IDVenta int primary key identity(1,1),
    FechaVenta date not null,
    TotalVenta decimal(10,2) not null CHECK(TotalVenta>=0),
	IDCliente int null foreign key references Clientes(IDCliente),
	IDFormaDePago TINYINT not null foreign key references FormasDePagos(IDFormaDePago)
)
GO

Create table DetallesVentas (
    CantidadVenta int not null check (CantidadVenta > 0),
    PrecioUnitario decimal(10,2) not null check (PrecioUnitario >= 0),
    SubTotalVenta decimal(10,2) not null check(SubTotalVenta >= 0),
	IDVenta int not null foreign key references Ventas(IDVenta),
	IDProducto INT not null foreign key references Productos(IDProducto),
    primary key (IDVenta,IDProducto),
)
GO

CREATE TABLE Compras (
    IDCompra int not null PRIMARY KEY IDENTITY (1,1),
    FechaCompra DATE NOT NULL,
    IDFormaDePago TINYINT not null FOREIGN KEY REFERENCES FormasDePagos(IDFormaDePago),
    IDProveedor INTEGER NOT NULL FOREIGN KEY REFERENCES Proveedores(IDProveedor),
    TotalCompra DECIMAL (10, 2) NOT NULL CHECK(TotalCompra>0)
)
GO
CREATE TABLE DetallesCompras(
    IDCompra int not NULL FOREIGN KEY REFERENCES Compras(IDCompra),
    IDProducto int not NULL FOREIGN KEY REFERENCES Productos(IDProducto),
    CantidadCompra int not null CHECK (CantidadCompra>0),
    CostoUnitario decimal (10,2) not null CHECK(CostoUnitario>=0),
    SubTotalCompra decimal (10,2) not null CHECK(SubTotalCompra>0),
    PRIMARY key (IDCompra, IDProducto)
)
GO


CREATE TABLE  ProveedoresProductos(
    IDProveedor INT NOT NULL FOREIGN KEY REFERENCES Proveedores(IDProveedor),
    IDProducto INT NOT NULL FOREIGN KEY REFERENCES Productos(IDProducto),
    PrecioRef DECIMAL (10,2) NOT NULL CHECK (PrecioRef>0), 
    PRIMARY KEY (IDProveedor, IDProducto)
)

GO

CREATE TABLE TiposMovimientos (
    IDTipoMovimiento TINYINT not null PRIMARY KEY IDENTITY (1,1),
    NombreMovimiento VARCHAR (50) not null,
    Motivo VARCHAR (50) not null
)
GO 
ALTER TABLE TiposMovimientos
ADD ImpactoStock SMALLINT not NULL  CHECK (ImpactoStock IN (1, -1)),
Estado BIT NOT NULL DEFAULT 1;

GO

CREATE TABLE MovimientosInventarios(
    IDMovimiento INTEGER NOT NULL PRIMARY KEY IDENTITY (1,1),
    IDProducto INTEGER NOT NULL FOREIGN KEY REFERENCES Productos(IDProducto),
    IDTipoMovimiento TINYINT NOT NULL FOREIGN KEY REFERENCES TiposMovimientos(IDTipoMovimiento),
    Cantidad INTEGER NOT NULL CHECK (Cantidad>0),
    FechaMovimiento DATE NOT NULL
	)



