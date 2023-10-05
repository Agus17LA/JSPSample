package servlets;

import java.io.Serial;
import java.io.Serializable;

public class InfoBean implements Serializable {

	/**
	 * 
	 */
	@Serial
	private static final long serialVersionUID = -5513897237885402390L;
	
	private String nombre;
	
	private int dni;
	
	private Profesion profesion;
	
	public InfoBean() {
		this(null, -1, null);
	}
	
	public InfoBean(String n, int dni, Profesion p) {
		this.setNombre(n);
		this.setDni(dni);
		this.setProfesion(p);
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getDni() {
		return dni;
	}

	public void setDni(int dni) {
		this.dni = dni;
	}

	public Profesion getProfesion() {
		return profesion;
	}

	public void setProfesion(Profesion profesion) {
		this.profesion = profesion;
	}

}
