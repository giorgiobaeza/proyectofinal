package cl.grupo2.proyectofinal.modelo;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Pagos {

	@Id
	private int idPagos;
	private String fechaPago;
	private int monto;
	private String mes;
	private String año;
	private int cliente_rutcliente;
	


	public int getIdPagos() {
		return idPagos;
	}

	public void setIdPagos(int idPagos) {
		this.idPagos = idPagos;
	}

	public String getFechaPago() {
		return fechaPago;
	}

	public void setFechaPago(String fechaPago) {
		this.fechaPago = fechaPago;
	}

	public int getMonto() {
		return monto;
	}

	public void setMonto(int monto) {
		this.monto = monto;
	}

	public String getMes() {
		return mes;
	}

	public void setMes(String mes) {
		this.mes = mes;
	}

	public String getAño() {
		return año;
	}

	public void setAño(String año) {
		this.año = año;
	}

	public int getCliente_rutcliente() {
		return cliente_rutcliente;
	}

	public void setCliente_rutcliente(int cliente_rutcliente) {
		this.cliente_rutcliente = cliente_rutcliente;
	}

	@Override
	public String toString() {
		return "Pagos [idPagos=" + idPagos + ", fechaPago=" + fechaPago + ", monto=" + monto + ", mes=" + mes + ", a�o="
				+ año + ", cliente_rutcliente=" + cliente_rutcliente + "]";
	}

	public Pagos() {
		super();
	}

	public Pagos(int idPagos, String fechaPago, int monto, String mes, String año, int cliente_rutcliente) {
		super();
		this.idPagos = idPagos;
		this.fechaPago = fechaPago;
		this.monto = monto;
		this.mes = mes;
		this.año = año;
		this.cliente_rutcliente = cliente_rutcliente;
	}

	
}
