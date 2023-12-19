package backendFinal.modelos;

public class Usuario {
	
	private int id;
	private String nombre;
	private String apellido;
	private String email;
	private String tema;
	
	public Usuario(String nombre, String apellido, String email, String tema) {
		super();
		this.nombre = nombre;
		this.apellido = apellido;
		this.email = email;
		this.tema = tema;
	}
	
	public Usuario() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public String getTema() {
		return tema;
	}

	public void setTema(String tema) {
		this.tema = tema;
	}
	

}
