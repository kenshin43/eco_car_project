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
import javax.servlet.http.HttpSession;

import dao.StationDAO;
import dto.MemberDTO;
import dto.StationDTO;
import net.sf.json.JSONArray;

@WebServlet("/station.do")
public class StationServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		MemberDTO member = (MemberDTO) session.getAttribute("member");
		List<StationDTO> favoriteStation = (List<StationDTO>) session.getAttribute("favoriteStation");
		if(member!=null&&favoriteStation==null) {
			try {
				favoriteStation = StationDAO.favoriteStation(member);
			} catch (SQLException e) {
				e.printStackTrace();
				out.println("데이터 베이스 서버에 오류가 발생하였습니다.");
			}
		}
		String type = request.getParameter("type");
		if(type.equals("recentStation")) {
			try {
				List<StationDTO> nearbyList = StationDAO.nearbyStation(Double.valueOf(request.getParameter("lat")), Double.valueOf(request.getParameter("longi")));
				JSONArray jsonArray = JSONArray.fromObject(nearbyList);
				out.println(jsonArray);
			} catch (NumberFormatException e) {
				e.printStackTrace();
				out.println("google Map 위치정보를 가져오는데 실패하였습니다.");
			} catch (SQLException e) {
				e.printStackTrace();
				out.println("데이터 베이스 서버에 오류가 발생하였습니다.");
			}
		} else if(type.equals("searchStation")) {
			try {
				List<StationDTO> searchedlist = StationDAO.searchStation(request.getParameter("name"));
				JSONArray jsonArray = JSONArray.fromObject(searchedlist);
				out.println(jsonArray);
			} catch (SQLException e) {
				e.printStackTrace();
				out.println("데이터 베이스 서버에 오류가 발생하였습니다.");
			}
		} else if(member!=null&&type.equals("insertFavorite")) {
			if (favoriteStation.size() <= 5) {
				try {
					StationDAO.insertFavorite(member, Integer.valueOf(request.getParameter("cpid")));
					favoriteStation = StationDAO.favoriteStation(member);
				} catch (NumberFormatException | SQLException e) {
					e.printStackTrace();
					out.println("데이터 베이스 서버에 오류가 발생하였습니다.");
				}
			} else {
				out.println("관심 주유소를 5개 등록 할 수 없습니다.");
			}
		} else if(member!=null&&type.equals("deleteFavorite")) {
			try {
				StationDAO.deleteFavorite(member, Integer.valueOf(request.getParameter("cpid")));
				favoriteStation = StationDAO.favoriteStation(member);
			} catch (NumberFormatException | SQLException e) {
				e.printStackTrace();
				out.println("데이터 베이스 서버에 오류가 발생하였습니다.");
			}
		} else {
			out.println("로그인이 필요한 서비스 입니다.");
		}
	}
}
