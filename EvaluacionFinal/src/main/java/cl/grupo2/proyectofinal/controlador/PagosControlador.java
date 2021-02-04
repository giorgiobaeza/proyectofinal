package cl.grupo2.proyectofinal.controlador;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cl.grupo2.proyectofinal.modelo.Pagos;
import cl.grupo2.proyectofinal.servicio.PagosServicio;

@Controller
public class PagosControlador {

@Autowired
PagosServicio ps;

@RequestMapping(value="/listarPagos", method = RequestMethod.GET)
public String obtenerPagos(Model model) {
	List<Pagos> listaPagos = ps.obtenerPagos();
	model.addAttribute("lPagos", listaPagos);
	return "listarPagos";
}

@RequestMapping(value="/crearPagos", method = RequestMethod.GET)
public String crearPagos(Model model) {
	return "crearPagos";
}

@RequestMapping(value="/crearPagosProcesar", method = RequestMethod.POST)
public String crearPagoses(Model model,
	@RequestParam ("idPagos") int idPagos,
	@RequestParam ("capfecha") String fechaPago,
	@RequestParam ("caphora") int monto,
	@RequestParam ("caplugar") String mes,
	@RequestParam ("capduracion") String anio,
	@RequestParam ("cliente_rutcliente") int cliente_rutcliente ) {
	
	Pagos pag = new Pagos(idPagos, fechaPago, monto,
			mes, anio, cliente_rutcliente);
	boolean result = ps.crearPagos(pag);
	String titulo ="Crear Pagos";
	model.addAttribute("msgtitulo", titulo);		
	String mensaje ="";

	if (result) {
		mensaje = "Pagos Creados";
	}
	else {
		mensaje = "Problemas crear los Pagos";
	}
	model.addAttribute("msgmensaje", mensaje);
	String direccion = "/listarPagos";
	model.addAttribute("msgdireccion", direccion);
	return "msgcrear";
}


	
}
