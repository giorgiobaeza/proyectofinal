package cl.grupo2.proyectofinal.controlador;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cl.grupo2.proyectofinal.modelo.DetalleChequeo;
import cl.grupo2.proyectofinal.modelo.Visita;
import cl.grupo2.proyectofinal.servicio.DetalleChequeoServicio;
import cl.grupo2.proyectofinal.servicio.VisitaServicio;

@Controller
public class DetalleChequeoControlador {
	
	@Autowired
	DetalleChequeoServicio ds;
	
	@Autowired
	VisitaServicio vs;
	
	@RequestMapping(value="/listarDetalleChequeo", method = RequestMethod.GET)
	public String obtenerChequeo(Model model) {
		List<DetalleChequeo> listacheq = ds.obtenerDetalleChequeo();
		model.addAttribute("dchequeo", listacheq);
		List<Visita> idvisita = vs.obtenerVisita();
		model.addAttribute("dchequeo", idvisita);
		return "listarDetalleChequeo";
	}

	
}
