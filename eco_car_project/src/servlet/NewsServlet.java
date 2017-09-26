package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.NewsDAO;
import dto.NewsDTO;
/**
 * 
 * @author DG
 *
 */
@WebServlet("/news")
public class NewsServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		try {
			List<NewsDTO> list = NewsDAO.selectNews();
			request.getSession().setAttribute("list", list);
			response.sendRedirect("index.jsp#news");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
