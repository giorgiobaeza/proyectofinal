package cl.grupo2.proyectofinal.servicio;

import java.util.List;

import cl.grupo2.proyectofinal.modelo.Usuario;

public interface UsuarioServicio {
	
	
	public List<Usuario> obtenerUsuario();
	public boolean crearUsuario(Usuario usr);

}
