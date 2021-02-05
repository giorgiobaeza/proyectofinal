package cl.grupo2.proyectofinal.controlador;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cl.grupo2.proyectofinal.modelo.Cliente;
import cl.grupo2.proyectofinal.modelo.Visita;
import cl.grupo2.proyectofinal.servicio.ClienteServicio;
import cl.grupo2.proyectofinal.servicio.VisitaServicio;

@Controller
public class VisitaControlador {

	@Autowired
	VisitaServicio vs;
	
	@Autowired
	ClienteServicio cs;
	
	@RequestMapping(value="/listarVisitas", method = RequestMethod.GET)
	public String listarVisitas(Model model) {
		List<Visita> listvis = vs.obtenerVisita();
		model.addAttribute("lvisita", listvis);
		return "listarVisita";
	}
	
	@RequestMapping(value="/editarVisita/{idvisita}", method = RequestMethod.GET)
	public String editarVisita(Model model, @PathVariable int idvisita) {
		Visita idvis = vs.obtenerVisitaPorId(idvisita);
		model.addAttribute("vis", idvis);
		Cliente rutcli = cs.obtenerClientePorId(idvisita);
		model.addAttribute("clr", rutcli);
		return "editarVisista";
	}	
	
	@RequestMapping(value="/procesarEditarvisita", method = RequestMethod.POST)
	public String editarClientesProcesar(Model model, 
		@RequestParam ("txtidvisita") int idvisita,
		@RequestParam ("txtvisfecha") String visfecha,
		@RequestParam ("txtvishora") String vishora,
		@RequestParam ("txtvislugar") String vislugar,
		@RequestParam ("txtviscomentarios") String viscomentarios,
		@RequestParam ("txtcliente_rutcliente") int cliente_rutcliente) {
		
		Visita vis = new Visita(idvisita, visfecha, vishora, vislugar, viscomentarios, cliente_rutcliente);
		boolean result = vs.crearVisita(vis);
		String titulo ="Editar Visita";
		model.addAttribute("msgtitulo", titulo);
		String mensaje = "";
		
		if (result) {
			mensaje = "La visita fue editada correctamente";
		}
		else {
			mensaje = "No se pudo editar la visita";
		}
		model.addAttribute("msgmensaje", mensaje);
		String direccion = "/listarUsuarios";
		model.addAttribute("msgdireccion", direccion);
		return "msgcrear";
	}
}
