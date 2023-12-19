package backendFinal.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import backendFinal.config.Conexion;
import backendFinal.modelos.Usuario;

public class UsuarioDAO {
	
	Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int respuesta;


	  //LISTAR USUARIO
    public List<Usuario> listar() {
        String sql = "select * from usuarios";
        List<Usuario> lista = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Usuario usuario = new Usuario();
                usuario.setId(rs.getInt(1));
                usuario.setNombre(rs.getString(2));
                usuario.setApellido(rs.getString(3));
                usuario.setEmail(rs.getString(4));
                usuario.setTema(rs.getString(5));
                lista.add(usuario);
            }
        } catch (Exception e) {
        }
        return lista;
    }

    //AGREGAR USUARIO
    public int agregar(Usuario usuario) {
        String sql = "insert into usuarios(nombre, apellido, email, tema )values(?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, usuario.getNombre());
            ps.setString(2, usuario.getApellido());
            ps.setString(3, usuario.getEmail());
            ps.setString(4, usuario.getTema());

            ps.executeUpdate();
        } catch (Exception e) {
        }
        return respuesta;
    }

    //LISTAR USUARIO POR ID
    public Usuario listarPorId(int id) {
        Usuario usuario = new Usuario();
        String sql = "select * from usuarios where id= ?" ;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                usuario.setNombre(rs.getString(2));
                usuario.setApellido(rs.getString(3));
                usuario.setEmail(rs.getString(4));
                usuario.setTema(rs.getString(5));
            }
        } catch (Exception e) {
        }
        return usuario;
    }

    //ACTUALIZAR USUARIO
    public int actualizar(Usuario usuario) {
        String sql = "update usuarios set nombre=? ,apellido=?, email=?, tema=? where id=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, usuario.getNombre());
            ps.setString(2, usuario.getApellido());
            ps.setString(3, usuario.getEmail());
            ps.setString(4, usuario.getTema());
            ps.setInt(5, usuario.getId());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return respuesta;
    }

    //BORRAR USUARIO
    public void borrar(int id) {
        String sql = "delete from usuarios where id= ?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            
            ps.setInt(1,id);
            
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

	
	
}
