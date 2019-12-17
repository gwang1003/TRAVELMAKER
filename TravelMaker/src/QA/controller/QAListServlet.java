package QA.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import QA.model.service.QAService;
import QA.model.vo.QA;
import member.model.vo.Member;

/**
 * Servlet implementation class QASelectServlet
 */
@WebServlet("/select.qa")
public class QAListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QAListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		if(loginUser.getmId().equals("admin")) {
			ArrayList<QA> list = new QAService().selectAllQAList();
			request.setAttribute("list", list);		
			request.getRequestDispatcher("views/myPage/ManagerQA.jsp").forward(request, response);
		}else {
		int mSeq = Integer.parseInt(request.getParameter("mSeq"));
		ArrayList<QA> list = new QAService().selectQAList(mSeq);
		request.setAttribute("list", list);
		request.getRequestDispatcher("views/QA/QAmyListView.jsp").forward(request, response);
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
