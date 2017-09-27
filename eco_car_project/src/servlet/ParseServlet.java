package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import dao.ParseDAO;
import parse.News;
import util.DBUtil;
/**
 * 
 * @author DG
 *
 */
@WebServlet("/parseServlet.do")
public class ParseServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		JSONParser jsonParser = new JSONParser();
		JSONObject jsonObject = null;
		net.sf.json.JSONArray jArray = null;
		try {
			jArray = News.insertNews();
			for (int i = 0; i < jArray.size(); i++) {
				jsonObject = (JSONObject) jsonParser.parse(jArray.get(i).toString());
				String title = (String) jsonObject.get("title");
				String link = (String) jsonObject.get("link");
				String des = (String) jsonObject.get("description");
				ParseDAO.insertNews(title, link, des);
			}
		} catch (Exception e) {
			response.getWriter().println("에러가 발생하였습니다.");
			e.printStackTrace();
		}
	}
} // end of class
