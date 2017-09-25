package servlet;

import java.io.IOException;

import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CarDAO;
import net.sf.json.JSONArray;
//import net.sf.json.JSONArray;
/**
 * 
 * @author DG
 *
 */
public class CarServlet extends HttpServlet{
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		try {
			
			JSONArray jObject = JSONArray.fromObject(CarDAO.viewCar());
			request.getSession().setAttribute("list", jObject);
			response.sendRedirect("index.jsp#car");
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
}
