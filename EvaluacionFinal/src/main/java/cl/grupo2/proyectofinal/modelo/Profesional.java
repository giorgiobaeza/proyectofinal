package cl.grupo2.proyectofinal.modelo;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Profesional {

	
	private int run;
	private String nombres;
	private String apellidos;
	private int telefono;
	private String tituloProfesional;
	private String proyecto;
	@Id
	private int usuario_run;
	
	public int getRun() {
		return run;
	}

	public void setRun(int run) {
		this.run = run;
	}

	public String getNombres() {
		return nombres;
	}

	public void setNombres(String nombres) {
		this.nombres = nombres;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public int getTelefono() {
		return telefono;
	}

	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}

	public String getTituloProfesional() {
		return tituloProfesional;
	}

	public void setTituloProfesional(String tituloProfesional) {
		this.tituloProfesional = tituloProfesional;
	}

	public String getProyecto() {
		return proyecto;
	}

	public void setProyecto(String proyecto) {
		this.proyecto = proyecto;
	}

	public int getUsuario_run() {
		return usuario_run;
	}

	public void setUsuario_run(int usuario_run) {
		this.usuario_run = usuario_run;
	}

	@Override
	public String toString() {
		return "Profesional [run=" + run + ", nombres=" + nombres + ", apellidos=" + apellidos + ", telefono="
				+ telefono + ", tituloProfesional=" + tituloProfesional + ", proyecto=" + proyecto + ", usuario_run="
				+ usuario_run + "]";
	}

	public Profesional() {
		super();
	}

	public Profesional(int run, String nombres, String apellidos, int telefono, String tituloProfesional,
			String proyecto, int usuario_run) {
		super();
		this.run = run;
		this.nombres = nombres;
		this.apellidos = apellidos;
		this.telefono = telefono;
		this.tituloProfesional = tituloProfesional;
		this.proyecto = proyecto;
		this.usuario_run = usuario_run;
	}
	
	
	
}
