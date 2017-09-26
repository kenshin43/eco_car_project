package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ChangeDAO;
import dao.JoinDAO;
import dao.LoginDAO;
import dto.MemberDTO;

@WebServlet("/member.do")
public class MemberServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String type = request.getParameter("type");
		HttpSession session = request.getSession();
		MemberDTO member = (MemberDTO)session.getAttribute("member");
		if(type==null) {
			error(session,response,"알 수 없는 버그가 발생하였습니다.");
		} else if(type.equals("login")) {
			try {
				member = new MemberDTO(request.getParameter("id"),request.getParameter("pwd"));
				member = LoginDAO.login(member);
				if(member.getId()==null) {
					error(session,response,"아이디와 패스워드를 다시한번 확인해 주세요.");
				} else {
					session.setAttribute("member", member);
					response.sendRedirect("index.jsp");
				}
			} catch (Exception e) {
				e.printStackTrace();
				error(session,response,"알 수 없는 버그가 발생하였습니다.");
			}
		} else if(type.equals("join")) {
			try {
				member = new MemberDTO(request.getParameter("id"),request.getParameter("pwd"),request.getParameter("email"),0);
				JoinDAO.insertMem(member);
				response.sendRedirect("index.jsp");
			} catch (Exception e) {
				e.printStackTrace();
				error(session,response,"회원가입에 실패하였습니다.");
			}
		} else if(type.equals("change")) {
			try {
				member.setPwd(request.getParameter("pwd"));
				member.setEmail(request.getParameter("email"));
				ChangeDAO.changeMem(member);
				response.sendRedirect("index.jsp");
			} catch (Exception e) {
				error(session,response,"회원정보 수정에 실패하였습니다.");
			}
		} else if(type.equals("logout")) {
			session.setAttribute("member", null);
			response.sendRedirect("index.jsp");
		} else {
			error(session,response,"알 수 없는 에러가 발생하였습니다.");
		}
	}
	private void error(HttpSession session, HttpServletResponse response, String errorMsg) {
		session.setAttribute("error", errorMsg);
		try {
			response.sendRedirect("error.jsp");
		} catch (IOException e) {}
	}
}
