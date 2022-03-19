CREATE DATABASE EmpleadosMunicipales;

CREATE TABLE EmpleadosMunicipales.Municipalidad (
	muni_id int NOT NULL,
	localidad varchar(255),
PRIMARY KEY (muni_id),
);

CREATE TABLE EmpleadosMunicipales.Empleado (
	emp_id int NOT NULL,
	nombre varchar(255)NOT NULL,
apellido varchar(255)NOT NULL,
	telefono varchar(255),
     mail varchar(255),
	salario float,
	antiguedad int,
     puesto varchar(255),
PRIMARY KEY (emp_id),
     FOREIGN KEY (muni_id) 
     REFERENCES EmpleadosMunicipales.Municipalidad(muni_id)
);


SELECT e.nombre, e.apellido, e.telefono, e.mail, e.puesto, m.id
FROM  Empleado AS e, Municipalidad AS m
WHERE (e.salario > 70000) AND 
              (e.antiguedad BETWEEN 10 AND 15) AND
              (e.id_muni = m.id_muni)
ORDER BY e.apellido, e.nombre ASC
