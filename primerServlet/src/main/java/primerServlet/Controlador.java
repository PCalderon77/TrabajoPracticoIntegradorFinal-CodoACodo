package primerServlet;

import java.io.IOException;


import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelos.Usuario;

import infrastructure.persistence.*;
import infrastructure.persistence.mysql.MysqlRepositoryImpl;
import mappers.*;

public class Controlador extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private IPersistencia persistence = new MysqlRepositoryImpl();	
	private MapperJson mapper = new MapperJson();
	

    public Controlador() {
        // TODO Auto-generated constructor stub
    	
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ArrayList<Usuario> lista = persistence.listarUsuarios();
		String listaUsuariosJson = mapper.toJson(lista);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		
		response.getWriter().write(listaUsuariosJson);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nombre = request.getParameter("nombreOInput");
		String apellido = request.getParameter("apellidoOInput");
		String email = request.getParameter("emailOInput");
		String fecha = request.getParameter("fechaOInput");
		String tema = request.getParameter("temaOInput");
		
		Usuario usuario = new Usuario(nombre, apellido, email, fecha, tema);
		
		persistence.guardar(usuario);
		
		
		String usuarioJson = mapper.toJson(usuario);;
		/*response.getWriter().write(usuarioJson); agregamos que json vaya a una pagina de confirmación*/
		request.getRequestDispatcher("oradorGuardado.html").forward(request, response);
	}

}
