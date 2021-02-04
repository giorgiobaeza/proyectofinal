package cl.grupo2.proyectofinal.controlador;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cl.grupo2.proyectofinal.modelo.Profesional;
import cl.grupo2.proyectofinal.servicio.ProfesionalServicio;

@Controller
public class ProfesionalControlador {
	
	@Autowired
	ProfesionalServicio ps;
	
	@RequestMapping(value="/editarProfesional/{usuario_run}", method = RequestMethod.GET)
	public String editarProfesional(Model model, @PathVariable int usuario_run) {
		Profesional rutpro = ps.obtenerProfesionalPorId(usuario_run);
		model.addAttribute("pro", rutpro);
		return "editarProfesional";
	}	
	
	@RequestMapping(value="/procesarEditarProfesional", method = RequestMethod.POST)
	public String editarProfesionalsProcesar(Model model, 
		@RequestParam ("txtrutProfesional") int rutProfesional,
		@RequestParam ("txtproNombres") String proNombres,
		@RequestParam ("txtproApellidos") String proApellidos,
		@RequestParam ("txtproTelefono") int proTelefono,
		@RequestParam ("txtprotituloprofesional") String proTituloProfesional,
		@RequestParam ("txtproProyecto") String proProyecto,
		@RequestParam ("txtusuariorun") int usuario_run) {
		
		Profesional pro = new Profesional(rutProfesional, proNombres,
				proApellidos, proTelefono, proTituloProfesional, proProyecto, usuario_run);
		boolean result = ps.editarProfesional(pro);
		String titulo ="Editar Profesional";
		model.addAttribute("msgtitulo", titulo);
		String mensaje = "";
		
		if (result) {
			mensaje = "El Profesional fue editado correctamente";
		}
		else {
			mensaje = "No se pudo editar Profesional";
		}
		model.addAttribute("msgmensaje", mensaje);
		String direccion = "/listarUsuarios";
		model.addAttribute("msgdireccion", direccion);
		return "msgcrear";
	}
}
