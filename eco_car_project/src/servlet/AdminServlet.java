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

import dao.MemberDAO;
import dao.StationDAO;
import dto.MemberDTO;
import dto.StationDTO;
import net.sf.json.JSONArray;

@WebServlet("/admin.do")
public class AdminServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String type = request.getParameter("type");
		if(type==null) {
			out.println("에러가 발생하였습니다.");
		} else if(type.equals("member")){
			try {
				out.println(JSONArray.fromObject(MemberDAO.memberTable()));
			} catch (Exception e) {
				out.println(e.getMessage()+"에러가 발생하였습니다. 서버 관리자에게 문의하세요.");
				e.printStackTrace();
			}
		} else if(type.equals("withdrawal")) {
			try {
				MemberDAO.withdrawal(request.getParameter("id"));
				out.println("심판하였습니다.");
			} catch (SQLException e) {
				out.println("에러가 발생하였습니다.");
			}
		} else if(type.equals("existStation")) {
			try {
				out.print(StationDAO.existStation(Integer.parseInt(request.getParameter("cpid"))));
			} catch (NumberFormatException | SQLException e) {
				out.print(e.getMessage()+"에러가 발생하였습니다. 서버 관리자에게 문의하세요.");
				e.printStackTrace();
			}
		} else if(type.equals("updateStation")) {
			try {
				StationDAO.updateStation(new StationDTO(
							Integer.valueOf(request.getParameter("cpid")),
							request.getParameter("csnm"),
							request.getParameter("addr"),
							Double.valueOf(request.getParameter("lat")),
							Double.valueOf(request.getParameter("longi")),
							Integer.valueOf(request.getParameter("chargetp"))
						));
				out.println("수정에 성공하였습니다.");
			} catch (NumberFormatException | SQLException e) {
				out.print(e.getMessage()+"에러가 발생하였습니다. 서버 관리자에게 문의하세요.");
				e.printStackTrace();
			}
		} else if(type.equals("insertStation")) {
			try {
				StationDAO.insertStation(new StationDTO(
							Integer.valueOf(request.getParameter("cpid")),
							request.getParameter("csnm"),
							request.getParameter("addr"),
							Double.valueOf(request.getParameter("lat")),
							Double.valueOf(request.getParameter("longi")),
							Integer.valueOf(request.getParameter("chargetp"))
						));
				out.println("목록에 추가되었습니다.");
			} catch (NumberFormatException | SQLException e) {
				out.print(e.getMessage()+"에러가 발생하였습니다. 서버 관리자에게 문의하세요.");
				e.printStackTrace();
			}
		} else {
			out.println("에러가 발생하였습니다.");
		}
	}
}
