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






