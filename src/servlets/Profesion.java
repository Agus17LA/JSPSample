package servlets;

public enum Profesion {
	
	EMPLEADO_PUBLICO ("Empleado Publico"),
	DEVELOPER ("Developer"),
	MEDICO ("Medico");
	
	private String description;
	
	private Profesion(String desc) {
		this.description = desc;
	}

	public String getDescription() {
		return description;
	}
}