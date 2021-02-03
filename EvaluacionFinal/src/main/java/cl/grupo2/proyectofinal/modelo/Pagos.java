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
	private String a�o;
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

	public String getA�o() {
		return a�o;
	}

	public void setA�o(String a�o) {
		this.a�o = a�o;
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
				+ a�o + ", cliente_rutcliente=" + cliente_rutcliente + "]";
	}

	public Pagos() {
		super();
	}

	public Pagos(int idPagos, String fechaPago, int monto, String mes, String a�o, int cliente_rutcliente) {
		super();
		this.idPagos = idPagos;
		this.fechaPago = fechaPago;
		this.monto = monto;
		this.mes = mes;
		this.a�o = a�o;
		this.cliente_rutcliente = cliente_rutcliente;
	}

	
}
