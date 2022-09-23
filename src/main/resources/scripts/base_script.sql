CREATE TABLE ALUMNO(
	alu_id INT primary key NOT NULL AUTO_INCREMENT,
	alu_nombre VARCHAR(100) NOT NULL,
	alu_usuario VARCHAR(100) not null,
	alu_password VARCHAR(50) not null,
	alu_direccion VARCHAR(100) NOT NULL,
	alu_telefono VARCHAR(20) NULL,
	alu_email VARCHAR(50) NULL
)
;

INSERT INTO ALUMNO(alu_nombre,alu_usuario,alu_password,alu_direccion,alu_telefono,alu_email)
VALUES('YESENIA VIRHUEZ','U_YESENIAVIRHUEZ','12345','LOS OLIVOS','986412345','yesenia@hotmail.com'),
('OSCAR ALVARADO FERNANDEZ','U_OSCARALVARADO','12345','MIRAFLORES',NULL,'oscar@gmail.com'),
('GLADYS REYES CORTIJO','U_GLADYSREYES','12345','SAN BORJA','875643562','gladys@hotmail.com'),
('SARA RIEGA FRIAS','U_SARARIEGA','12345','SAN ISIDRO',NULL,'sara@yahoo.com'),
('JHON VELASQUEZ DEL CASTILLO','U_JHONVELASQUEZ','12345','LOS OLIVOS','78645345','jhon@movistar.com'),
('MARIA EULALIA VELASQUEZ TORVISCO','U_MARIAEULALIA','12345','SURCO','6573456','mvelasques@gmail.com'),
('FIORELLA LIZET VITELLA REYES','U_FIORELLALIZET','12345','SAN BORJA','5468790','fvitela@outlook.com')
;


select * from ALUMNO;


#PROCEDURES

create procedure updateAlumno(in p_alu_nombre varchar(100), in p_new_alu_nombre varchar(100))
	begin
		update ALUMNO set alu_nombre = p_new_alu_nombre where alu_nombre = p_alu_nombre;
	end



#CALLS

 	  call updateAlumno('YESENIA VILCHEZ', 'YESENIA VIRHUEZ');