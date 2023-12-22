package infrastructure.persistence.mysql;

import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import infrastructure.persistence.IPersistencia;
import modelos.Usuario;

public class MysqlRepositoryImpl implements IPersistencia {

	private Connection connection;
	
	public MysqlRepositoryImpl() {
		connection = ConexionBD.getConnection();
	}
	
	
	@Override
	public void guardar(Usuario newUsuario) {
		
		String query = "INSERT INTO oradores (nombre, apellido, email, fecha, tema) VALUES (?,?,?,?,?)";
		// try with resources
		
		try {
			PreparedStatement statement = connection.prepareStatement(query);
			
			statement.setString(1 , newUsuario.getNombre());
			statement.setString(2 , newUsuario.getApellido());
			statement.setString(3 , newUsuario.getEmail());
			statement.setString(4 , newUsuario.getFecha());
			statement.setString(5 , newUsuario.getTema());
			
			statement.execute();
						
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public ArrayList<Usuario> listarUsuarios() {
		
		ArrayList<Usuario> oradores = new ArrayList<>();
		
		String query = "SELECT * FROM oradores";
		
		try {
			PreparedStatement statement = connection.prepareStatement(query);
			ResultSet resultSet = statement.executeQuery();
			
			while(resultSet.next()) {
								
				int id = resultSet.getInt("id");
				String nombre = resultSet.getString("nombre");
				String apellido = resultSet.getString("apellido");
				String email = resultSet.getString("email");
				String fecha = resultSet.getString("fecha");
				String tema = resultSet.getString("tema");
								
				Usuario usuario = new Usuario(id, nombre, apellido, email, fecha, tema);
				
				oradores.add(usuario);
				
			}
			
			connection.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return oradores;
	}

	@Override
	public Usuario getUsuarioPorId(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Usuario update(Usuario usuario) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public Usuario update(String usuario) {
		// TODO Auto-generated method stub
		return null;
	}

}
