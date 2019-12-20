package QA.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import QA.model.service.QAService;
import QA.model.vo.QA;
import member.model.vo.Member;

/**
 * Servlet implementation class QAUpdateServlet
 */
@WebServlet("/update.qa")
public class QAUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QAUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String content = request.getParameter("content");
		String title = request.getParameter("title");
		String type = request.getParameter("type");
		int qId = Integer.parseInt(request.getParameter("qId"));
		QA q = new QA(qId, type, title, content);
		
		int result = new QAService().updateQuestion(q);
		
		if(result > 0) {
			response.sendRedirect("detail.qa?qId=" + qId);
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
