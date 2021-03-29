package cl.grupo2.proyectofinal.modelo;

import java.time.OffsetTime;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Capacitacion {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int idCapacitacion;
	@Temporal(TemporalType.DATE)
	private Date capFecha;
	@Temporal(TemporalType.TIME)
	private OffsetTime capHora;
	private String capLugar;
	private int capDuracion;
	private int cliente_RutCliente;
	
	public Capacitacion() {
		super();
	}

	public Capacitacion(int idCapacitacion, Date capFecha, OffsetTime capHora, String capLugar, int capDuracion,
			int cliente_RutCliente) {
		super();
		this.idCapacitacion = idCapacitacion;
		this.capFecha = capFecha;
		this.capHora = capHora;
		this.capLugar = capLugar;
		this.capDuracion = capDuracion;
		this.cliente_RutCliente = cliente_RutCliente;
	}

	public int getIdCapacitacion() {
		return idCapacitacion;
	}

	public void setIdCapacitacion(int idCapacitacion) {
		this.idCapacitacion = idCapacitacion;
	}

	public Date getCapFecha() {
		return capFecha;
	}

	public void setCapFecha(Date capFecha) {
		this.capFecha = capFecha;
	}

	public OffsetTime getCapHora() {
		return capHora;
	}

	public void setCapHora(OffsetTime capHora) {
		this.capHora = capHora;
	}

	public String getCapLugar() {
		return capLugar;
	}

	public void setCapLugar(String capLugar) {
		this.capLugar = capLugar;
	}

	public int getCapDuracion() {
		return capDuracion;
	}

	public void setCapDuracion(int capDuracion) {
		this.capDuracion = capDuracion;
	}

	public int getCliente_rutCliente() {
		return cliente_RutCliente;
	}

	public void setCliente_rutCliente(int cliente_rutCliente) {
		this.cliente_RutCliente = cliente_rutCliente;
	}

	@Override
	public String toString() {
		return "Capacitacion [idCapacitacion=" + idCapacitacion + ", capFecha=" + capFecha + ", capHora=" + capHora
				+ ", capLugar=" + capLugar + ", capDuracion=" + capDuracion + ", cliente_RutCliente="
				+ cliente_RutCliente + "]";
	}
	
	
	
	

}
