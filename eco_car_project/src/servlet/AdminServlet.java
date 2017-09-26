package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import dto.MemberDTO;
import net.sf.json.JSONArray;

@WebServlet("/admin.do")
public class AdminServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
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
		}
	}
}
