package cl.grupo2.proyectofinal.controlador;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cl.grupo2.proyectofinal.modelo.Usuario;
import cl.grupo2.proyectofinal.servicio.UsuarioServicio;

@Controller
public class UsuarioControlador {

	@Autowired
	UsuarioServicio us;
	
	@RequestMapping(value="/listarUsuarios", method = RequestMethod.GET)
	public String obtenerUsuarios(Model model) {
		List<Usuario> listausuarios = us.obtenerUsuario();
		model.addAttribute("lusuarios", listausuarios);
		return "listarUsuarios";	
	}
	
	
}
