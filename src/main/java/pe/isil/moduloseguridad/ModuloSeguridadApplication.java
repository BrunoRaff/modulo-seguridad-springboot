package pe.isil.moduloseguridad;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.sql.*;

@SpringBootApplication
public class ModuloSeguridadApplication {

	public static void main(String[] args) throws Exception {
		SpringApplication.run(ModuloSeguridadApplication.class, args);

		//Load driver

		Class.forName("com.mysql.jdbc.Driver");

		//Crear Conexion
		Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/educa",
				"root",
				"root");

		//Statement - Listar

			Statement statement = conexion.createStatement();
			ResultSet result = statement.executeQuery("Select * from ALUMNO");

			//Recorrer lista
			System.out.println("----------------------Listar----------------------------");

			while (result.next()) {
				System.out.println(result.getString("alu_id"));
				System.out.println(result.getString("alu_nombre"));
				System.out.println(result.getString("alu_usuario"));
				System.out.println(result.getString("alu_direccion"));
				System.out.println(result.getString("alu_telefono"));

			}
			System.out.println("----------------------------Fin - Listar------------------");

			//PreparedStatment - DELETE
			System.out.println("----------------------DELETE----------------------------");

			PreparedStatement preparedStatement =
				conexion.prepareStatement("DELETE FROM ALUMNO WHERE alu_id=?");
				preparedStatement.setInt(1,1);
				int filasAfectadas = preparedStatement.executeUpdate();
			System.out.println("Filas afectadas: " + filasAfectadas);
		 System.out.println("----------------------------Fin - DELETE------------------");
		 //CallableStatment
		System.out.println("----------------------UPDATE----------------------------");
			CallableStatement callSp = conexion.prepareCall("{Call updateAlumno(?,?)}");
			callSp.setString(1,"YESENIA VIRHUEZ");
			callSp.setString(2,"YESENIA VILCHEZ");
			int filasAfectadas2 = callSp.executeUpdate();
		System.out.println("Filas afectadas: " + filasAfectadas2);
		System.out.println("----------------------------Fin - UPDATE------------------");
	}
	}

