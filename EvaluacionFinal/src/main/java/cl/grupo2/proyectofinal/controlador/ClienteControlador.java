package cl.grupo2.proyectofinal.controlador;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cl.grupo2.proyectofinal.servicio.ClienteServicio;


@Controller
public class ClienteControlador {
	
	@Autowired
	ClienteServicio cs;
	
	@RequestMapping(value="/listarClientes", method = RequestMethod.GET)
	public String listarClientes() {
		return "listarClientes";
	}
	

}
