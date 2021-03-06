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
 * Servlet implementation class InsertarActividad
 */
@WebServlet("/InsertarActividad")
public class InsertarActividad extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertarActividad() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//datuak jaso
		String nombre = request.getParameter("nombre");
		Date fecha_inicio = null;
		String dias_semana = request.getParameter("dias_semana");
		int horas = Integer.parseInt(request.getParameter("horas"));
		int max_participantes = Integer.parseInt(request.getParameter("max_participantes"));
		Double precio = Double.parseDouble(request.getParameter("precio"));
		
				//sortu acgividade objektu bat
		
		Actividad actividad = new Actividad();
				//jasotako datuekin setak egin
		actividad.setNombre(nombre);
		
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
		
		try {
			fecha_inicio = sdf.parse(request.getParameter("fecha_inicio"));
		} catch (ParseException e) {
			
			e.printStackTrace();
		}
		actividad.setFecha_inicio(fecha_inicio);
		actividad.setDias(dias_semana);
		actividad.setHoras(horas);
		actividad.setMaxParticipantes(max_participantes);
		actividad.setPrecio(precio);
		
		
		
				//modeloa sortu
				ModeloActividad ma = new ModeloActividad();
				//inserta egin
				ma.insert(actividad);
				
				//VerActividades kontrolatzaileari deitu
				
				
		
				
		
				response.sendRedirect("verActividades");
	}

	

}
