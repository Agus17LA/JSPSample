package servlets;

import java.io.IOException;
import java.io.Serial;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet (description = "Carga los datos que va a mostar el jsp", urlPatterns = "/showDataTag")
public class DataDispatcherTag extends HttpServlet {
	
	/**
	 * 
	 */
	@Serial
	private static final long serialVersionUID = 2319314504958811913L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			   throws ServletException, IOException {
		
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			   throws ServletException, IOException {
		
		List<InfoBean> infoList = new ArrayList<>();
		
		infoList.add(new InfoBean("Juan Perez", 25456789, Profesion.MEDICO));
		infoList.add(new InfoBean("Raul Lopez", 24587587, Profesion.EMPLEADO_PUBLICO));
		infoList.add(new InfoBean("Carlos Gutierrez", 23458745, Profesion.DEVELOPER));
		infoList.add(new InfoBean("Ernesto Pietra", 40457895, Profesion.MEDICO));
		infoList.add(new InfoBean("Nestor Torres", 39587456, Profesion.DEVELOPER));
		infoList.add(new InfoBean("Lucas Gonzales", 40856325, Profesion.EMPLEADO_PUBLICO));
		
		RequestDispatcher dispatcher =  getServletContext().getRequestDispatcher("/tagSample.jsp");
		request.setAttribute("infoData", infoList);
		dispatcher.forward(request, response);
	}
	
}
