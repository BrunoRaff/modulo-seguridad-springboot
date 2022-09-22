create table USERS (
	id int primary key auto_increment not NULL,
	name varchar(255),
	lastname varchar(255),
	username varchar(20),
	pass varchar(100),
	tipDoc char(5),
	nroDoc varchar(20),
	enable int
)


#Inserts

insert into USERS (name,lastname,username,pass,tipDoc,nroDoc,enable)
('Jose','Zuniga','DNI73267854','12345','DNI','73267854',1)

insert into USERS (name,lastname,username,pass,tipDoc,nroDoc,enable)VALUES
('Maria','Santillan','DNI86789432','12345','DNI','86789432',1)

#UPDATES

update USERS set name ='Mariana' where username='DNI86789432';


#ELIMINAR

delete from USERS where USERNAME='DNI86789432';


#CONSULTAR
select * from USERS



#PROCEDURES

CREATE PROCEDURE validarLogin ( IN p_username varchar(20),IN p_pass varchar(100),OUT resultado INT)
	begin
		SELECT COUNT(*) into resultado FROM USERS
		WHERE username = p_username AND pass =p_pass;
	end


create procedure listarUserPerId(in p_id INT)
begin

	select * from USERS where id=p_id;
end


create procedure listarAllUsers()
begin

	select * from USERS;
END


#Probando store procedure

	CALL validarLogin('DNI86789432','12345', @outResult);
	select @outResult;