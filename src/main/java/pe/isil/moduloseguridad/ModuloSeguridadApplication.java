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
		Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/moduloseg",
				"root",
				"root");

		//Crear Statement
		Statement statement = conexion.createStatement();
		PreparedStatement pt = conexion.prepareStatement("SELECT * FROM USERS WHERE id = ? and username = ?");
		pt.setInt(1,1);
		pt.setString(2,"DNI73267854");

		//Ejecutar sentencia

		ResultSet resultado = pt.executeQuery();

		//Recorrer resultado
		while (resultado.next()){
			System.out.println(resultado.getString("name"));
		}
	}

}
