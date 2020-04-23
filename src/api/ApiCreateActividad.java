package api;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import modelo.bean.Actividad;
import modelo.dao.ModeloActividad;

/**
 * Servlet implementation class ApiCreateActividad
 */
@WebServlet("/ApiCreateActividad")
public class ApiCreateActividad extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApiCreateActividad() {
        super();
        // TODO Auto-generated constructor stub
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
		request.setCharacterEncoding("UTF-8");
		String jsonActividad = request.getParameter("actividad");
		
		
		System.out.println(jsonActividad);
		JSONObject jsonObject = new JSONObject(jsonActividad);
		
		Actividad actividad = new Actividad();
		actividad.setNombre(jsonObject.getString("nombre"));
		actividad.setFecha_inicio((Date) jsonObject.get("fecha_inicio"));
		actividad.setDias(jsonObject.getString("dias_semana"));
		actividad.setHoras(jsonObject.getInt("horas"));
		actividad.setMaxParticipantes(jsonObject.getInt("max_participantes"));
		actividad.setPrecio(jsonObject.getDouble("precio"));
		
		ModeloActividad mActividad = new ModeloActividad();
		mActividad.insert(actividad);
		
		try {
			mActividad.getConexion().close();
		} catch (SQLException e) {
			System.out.println("Errorea konexia iztean");
			e.printStackTrace();
		}
		
		response.setHeader("Access-Control-Allow-Origin", "*");
		response.setCharacterEncoding("UTF-8");
	}

}
