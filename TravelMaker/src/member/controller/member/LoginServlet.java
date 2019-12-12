package member.controller.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.me")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String loginId = request.getParameter("loginId");
		String loginPass = request.getParameter("loginPass");
		
		Member loginUser = new MemberService().loginMember(loginId, loginPass);
		
		System.out.println(loginUser);
		
		if(loginUser != null) {
			HttpSession session = request.getSession();
			
			session.setAttribute("msg", "로그인에 성공하였습니다");
			session.setAttribute("loginUser", loginUser);
			
			response.sendRedirect(request.getContextPath());
			
		}else {
			request.getSession().setAttribute("msg", "로그인에 실패하였습니다");
			
			RequestDispatcher view = request.getRequestDispatcher(request.getContextPath());
			view.forward(request, response);
		}	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
