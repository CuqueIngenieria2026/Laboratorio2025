CREATE DATABASE FIXO_SA;
USE FIXO_SA;

CREATE TABLE direccion(
	idDireccion INT(11) PRIMARY KEY,
    Direccion VARCHAR(45),
    Ciudad VARCHAR(45),
    Pais VARCHAR(45)
);
INSERT INTO direccion VALUES (1,"Petén","Petén","Guatemala");
INSERT INTO direccion VALUES (2,"Calle Río Lerma","Ciudad de Mexico","Mexico");
INSERT INTO direccion VALUES (3,"Colonia Palmira","Capital de Honduras","Honduras");
INSERT INTO direccion VALUES (4,"Residencial Las Colinas","Managua","Nicaragua");
INSERT INTO direccion VALUES (5,"Avenida Provincia 1234","Santiago","Chile");

CREATE TABLE categoria(
    id_categoria INT(11) PRIMARY KEY,
    nombre VARCHAR(45)
);
INSERT INTO categoria VALUES (1,"Comedia");
INSERT INTO categoria VALUES (2,"Drama");
INSERT INTO categoria VALUES (3,"Aventura");
INSERT INTO categoria VALUES (4,"Fantasia");
INSERT INTO categoria VALUES (5,"Musical");


CREATE TABLE peliculas(
	id_peliculas INT (11) PRIMARY KEY,
    Nombre VARCHAR(45),
    Duracion INT (19),
    Descripcion TEXT,
    Año INT(11),
    Categoria_idCategoria INT(11),
    FOREIGN KEY (Categoria_idCategoria) REFERENCES categoria(id_categoria)
);
INSERT INTO peliculas VALUES (1, "Toy Story","81","Pelicula divertida de comedia",1995,1);
INSERT INTO peliculas VALUES (2, "Laberinto 1986","101","Una chica busca salvar a su hermano en un laberinto",1986,3);
INSERT INTO peliculas VALUES (3, "Pokemon1", "96","Pelicula de pokemon",1998,4);
INSERT INTO peliculas VALUES (4, "Sueño de fuga","142","Un hombre es envido a la carcel injustamente",1994,2);
INSERT INTO peliculas VALUES (5, "El jorobado de Notre Dame","91","Un joven gitano que vive en un campanario quiere conocer el mundo de afuera",1996,5);


CREATE TABLE inventario(
	idCopiasPeliculas INT (11) PRIMARY KEY,
    peliculas_idPeliculas INT(11),
    FOREIGN KEY (peliculas_idPeliculas ) REFERENCES peliculas(id_Peliculas),Disponible TINYINT
);
INSERT INTO inventario VALUES (1,1,1);
INSERT INTO inventario VALUES (2,2,1);
INSERT INTO inventario VALUES (3,2,0);
INSERT INTO inventario VALUES (4,2,0);
INSERT INTO inventario VALUES (5,3,1);
CREATE TABLE interes(
	id_interes INT PRIMARY KEY,
    nombre VARCHAR(17),
    Target VARCHAR(17),
    Año INT (14),
    Origen VARCHAR(20),
    Ventas INT (13),
    Interes VARCHAR (23)
);

INSERT INTO interes VALUES (1, "Pokemon", "infantil", 1998, "Japones", 1500, "Mucho");
INSERT INTO interes VALUES (2, "Laberinto", "juvenil", 1986, "Estadounidense", 200, "Poco");
INSERT INTO interes VALUES (3, "Toy Story", "infantil", 1995, "Estadounidense", 5000, "Bastante");
INSERT INTO interes VALUES (4, "Sueño de fuga", "maduro", 1994, "Estadounidense", 800, "Medio");
INSERT INTO interes VALUES (5, "Notre Dame", "infantil", 1996, "Estadounidense", 400, "Medio Bajo");

CREATE TABLE Presupuesto(
	Id_Presupuesto INT PRIMARY KEY,
    Nombre VARCHAR (19),
    año INT (12),
    Presupuesto VARCHAR(90)
);
INSERT INTO Presupuesto VALUES (1, "Pokemon",1998, "20 millones");
INSERT INTO Presupuesto VALUES (2, "Laberinto", 1986,"40 millones");
INSERT INTO Presupuesto VALUES (3, "Toy Story", 1995, "50 millones");
INSERT INTO Presupuesto VALUES (4, "Sueño de fuga", 1994, "80 millones");
INSERT INTO Presupuesto VALUES (5, "Notre Dame", 1996, "60 millones");

CREATE TABLE cliente(
	id_Clientes INT(11) PRIMARY KEY,
    Nombre VARCHAR (45),
    Apellido VARCHAR(45),
    Edad INT(11),
    Direccion_idDireccion INT(19),
    FOREIGN KEY (Direccion_idDireccion) REFERENCES Direccion(idDireccion)
);
INSERT INTO cliente VALUES (1,"Juliana","Castellanos",24,"1");
INSERT INTO cliente VALUES (2,"Samanta","Jonas",18,"2");
INSERT INTO cliente VALUES (3,"Alex","Lopez",34,"3");
INSERT INTO cliente VALUES (4,"Carlos","Herrera",22,"4");
INSERT INTO cliente VALUES (5,"María","Ruíz",19,"5");

CREATE TABLE renta(
	id_Renta INT(11) PRIMARY KEY,
    Fecha_Renta DATE,
    Fecha_Entrega DATE,
    Inventario_idCopiasPeliculas int,
    FOREIGN KEY(Inventario_idCopiasPeliculas) REFERENCES inventario(idCopiasPeliculas),
    Cliente_idCliente INT (11),
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(id_Clientes)
);
INSERT INTO renta VALUES (1, '2025-01-10', '2025-01-12', 2, 1);
INSERT INTO renta VALUES (2, '2025-02-01', '2025-02-05', 3, 2);
INSERT INTO renta VALUES (3, '2025-03-05', '2025-03-10', 4, 3);
INSERT INTO renta VALUES (4, '2025-03-15', '2025-03-18', 5, 4);
INSERT INTO renta VALUES (5, '2025-04-01', '2025-04-04', 1, 5);


SELECT * FROM cliente WHERE Nombre = 'Juliana';
SELECT * FROM FIXO_SA.direccion;

SELECT * FROM categoria ORDER BY Nombre ASC;

SELECT * FROM peliculas ORDER BY Año DESC;


