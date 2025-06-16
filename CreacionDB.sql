CREATE DATABASE TPI_BDII_GRUPO18

USE TPI_BDII_GRUPO18

Create table Marca (
IDMarca int primary key not null identity(1,1),
NombreMarca varchar(50) not null unique

)


Create table Categoria (
IDCategoria int primary key not null identity(1,1),
NombreCategoria varchar(50) not null unique

)


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


Create table Proveedor (
IDProveedor int primary key not null identity(1,1),
RazonSocial varchar(50) not null unique,
CUIT varchar(11) not null unique,
Direccion varchar(50) not null,
Email varchar(50) not null unique

)

Create table Cliente (
    IDCliente int primary key identity(1,1),
    Nombre varchar(50) not null,
    Apellido varchar(50) not null,
    Telefono varchar(20)
)

Create table FormaDePago (
    IDFormaDePago TINYINT primary key identity(1,1),
    Pago varchar(50) not null
)

Create table Venta (
    IDVenta int primary key identity(1,1),
    FechaVenta date not null,
    IDCliente int null,
    IDFormaDePago tinyint not null,
    foreign key references Cliente(IDCliente),
    foreign key references FormaDePago(IDFormaDePago)
)

Create table DetalleVenta (
    IDDetalleVenta int primary key identity(1,1),
    IDVenta int not null,
    IDProducto int not null,
    CantidadVenta int not null,
    PrecioUnitario decimal(10,2) not null,
    SubTotal as (CantidadVenta * PrecioUnitario) persisted,
    foreign key references Venta (IDVenta),
    foreign key references Producto(IDProducto)
)





