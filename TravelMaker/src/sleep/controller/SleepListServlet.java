
package sleep.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sleep.model.service.SleepService;
import sleep.model.vo.Attachment;
import sleep.model.vo.Sleep;

/**
 * Servlet implementation class SleepListServlet
 */
@WebServlet("/list.sl")
public class SleepListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SleepListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SleepService sService = new SleepService();
		
		ArrayList<Sleep> slist = sService.selectList(1);
		ArrayList<Attachment> flist = sService.selectList(2);
		
		if (slist != null && flist != null) {
			request.setAttribute("slist", slist);
			request.setAttribute("flist", flist);
			request.getRequestDispatcher("views/Sleep/SleepAll.jsp").forward(request, response);

		} else {
			request.setAttribute("msg", "사진 게시판 조회 실패!!");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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
