package cl.grupo2.proyectofinal.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.grupo2.proyectofinal.modelo.Pagos;
import cl.grupo2.proyectofinal.modelo.PagosRepositorio;

@Service
public class PagosServicioImpl implements PagosServicio {
	@Autowired
	PagosRepositorio ca;

	@Override
	public List<Pagos> obtenerPagos() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean crearPagos(Pagos pag) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean eliminarPagos(Pagos pag) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean editarPagos(Pagos pag) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Pagos obtenerPagosPorId(int idpagos) {
		// TODO Auto-generated method stub
		return null;
	}

}
