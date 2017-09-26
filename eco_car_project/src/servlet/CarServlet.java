package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CarDAO;
import dto.CarDTO;
import dto.NewsDTO;
import net.sf.json.JSONArray;
/**
 * 
 * @author DG
 *
 */
@WebServlet("/car.do")
public class CarServlet extends HttpServlet{
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			List<CarDTO> list = CarDAO.viewCar();
			JSONArray jsonArray = JSONArray.fromObject(list);
			out.println(jsonArray);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
}
