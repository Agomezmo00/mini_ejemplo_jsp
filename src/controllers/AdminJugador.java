package controllers;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import driverMySQL.MySQLConnection;
import models.Jugador;
import daos.JugadorDaoMySQLImp;


/**
 * Servlet implementation class AdminJugador
 */
@WebServlet("/AdminJugador")
public class AdminJugador extends HttpServlet {
	
	JugadorDaoMySQLImp jugadorDao;
	
	public AdminJugador() {
		super();
	}
	
	
	public void init() {
		
		try {
			System.out.println("inicia el dao");
			jugadorDao = new JugadorDaoMySQLImp();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Hola Servlet..");
		String action = request.getParameter("action");
		System.out.println(action);
		try {
			switch (action) {
			case "index":
				index(request, response);
				break;
			case "nuevo":
				nuevo(request, response);
				break;
			case "register":
				System.out.println("entro");
				registrar(request, response);
				break;
			case "mostrar":
				mostrar(request, response);
				break;
			case "showedit":
				showEditar(request, response);
				break;	
			case "editar":
				editar(request, response);
				break;
			case "eliminar":
				eliminar(request, response);
				break;
			default:
				break;
			}			
		} catch (SQLException e) {
			e.getStackTrace();
		}	
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Hola Servlet..");
		doGet(request, response);
	}
	
	private void index (HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException{
		mostrar(request, response);
		RequestDispatcher dispatcher= request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
	}
 
	private void registrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {

		Jugador jugador = new Jugador(0, request.getParameter("nombre"), request.getParameter("nombre_equipo"), request.getParameter("procedencia"), request.getParameter("altura"), request.getParameter("posicion"), Integer.parseInt(request.getParameter("peso")));
		jugadorDao.create(jugador);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
	}
	
	private void nuevo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/register.jsp");
		dispatcher.forward(request, response);
	}
	
	private void mostrar(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException , ServletException{
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/mostrar.jsp");
		List<Jugador> listaJugadores= jugadorDao.read();
		request.setAttribute("lista", listaJugadores);
		dispatcher.forward(request, response);
	}
	
	private void showEditar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
		System.out.println(request.getParameter("codigo"));
		Jugador jugador = jugadorDao.readOne(Integer.parseInt(request.getParameter("codigo")));
				
		request.setAttribute("jugador", jugador);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/editar.jsp");
		dispatcher.forward(request, response);
	}
	
	private void editar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException{
		Jugador jugador = new Jugador(Integer.parseInt(request.getParameter("codigo")), request.getParameter("nombre"), request.getParameter("nombre_equipo"), request.getParameter("procedencia"), request.getParameter("altura"), request.getParameter("posicion"), Integer.parseInt(request.getParameter("peso")));
		jugadorDao.update(jugador);
		index(request, response);
	}
	
	private void eliminar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException{
		Jugador jugador = jugadorDao.readOne(Integer.parseInt(request.getParameter("codigo")));
		jugadorDao.delete(jugador);
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
		
	}
	
	
	
}
