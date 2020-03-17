package controlador;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.bean.Actividad;
import modelo.dao.ModeloActividad;

/**
 * Servlet implementation class ModificarActividad
 */
@WebServlet("/ModificarActividad")
public class ModificarActividad extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModificarActividad() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		
		String nombre = request.getParameter("nombre");
		String dias_semana = request.getParameter("dias_semana");
		Date fecha_inicio = null;
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
		
		try {
			fecha_inicio = sdf.parse(request.getParameter("fecha_inicio"));
		} catch (ParseException e) {
			
			e.printStackTrace();
		}
		int horas = Integer.parseInt(request.getParameter("horas"));
		int max_participantes = Integer.parseInt(request.getParameter("max_participantes"));
		Double precio = Double.parseDouble(request.getParameter("precio"));
		
		Actividad actividad = new Actividad();
		
		actividad.setId(id);
		
		actividad.setNombre(nombre);
		actividad.setDias(dias_semana);
		actividad.setFecha_inicio(fecha_inicio);
		actividad.setHoras(horas);
		actividad.setMaxParticipantes(max_participantes);
		actividad.setPrecio(precio);
		
		ModeloActividad mActividad = new ModeloActividad();
		mActividad.update(actividad);
		
		
		response.sendRedirect("verActividades");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
