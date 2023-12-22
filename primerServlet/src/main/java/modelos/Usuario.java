package modelos;

import java.util.UUID;

public class Usuario {
	
	private static int contador;
	
	private int id;          //elegir este o
	private UUID idUsuario;  // este
	
	private String nombre;
	private String apellido;
	private String email;
	private String fecha;
	private String tema;
	
	//constructor
	public Usuario(String nombre, String apellido, String email, String fecha, String tema) {
		this.id = ++contador;	             //elegir este
		this.idUsuario = UUID.randomUUID();  //o este
		this.nombre = nombre;
		this.apellido = apellido;
		this.email = email;
		this.fecha = fecha;
		this.tema = tema;
	}
	
	public Usuario(int id, String nombre, String apellido, String email, String fecha, String tema) {
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
		this.email = email;
		this.fecha = fecha;
		this.tema = tema;
		
		this.idUsuario = UUID.randomUUID();
	}
	
	public String getNombre() {
		return nombre;
	}
	
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	

	public String getApellido() {
		return apellido;
	}
	
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getFecha() {
		return fecha;
	}
	
	public void setFecha(String fecha) {
		this.fecha = fecha;
	}
	
	public String getTema() {
		return tema;
	}
	
	public void setTema(String tema) {
		this.tema = tema;
	}
	
	public int getId() {
		return id;
	}
	
	public UUID getIdUsuario() {
		return idUsuario;
	}

	@Override
	public String toString() {
		return "Usuario [nombre=" + nombre + ", apellido=" + apellido + ", email=" + email + ", fecha=" + fecha
				+ ", tema=" + tema + "]";
	}

}
