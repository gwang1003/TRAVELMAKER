package member.controller.plan;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import member.model.service.PlanService;
import member.model.vo.Member;
import member.model.vo.MyPlan;

/**
 * Servlet implementation class PlanInsertServlet
 */
@WebServlet("/insert.pl")
public class PlanInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PlanInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean isMulti = ServletFileUpload.isMultipartContent(request);
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		if(isMulti) {
			int maxSize = 1024 * 1024 * 10;
			String root = request.getSession().getServletContext().getRealPath("/");
			String saveDir = root + "resources/myplan_upload/";
			MultipartRequest multi = new MultipartRequest(request, saveDir, maxSize, "UTF-8", new DefaultFileRenamePolicy());
		
			String planName = multi.getParameter("plan-name");
			String startDate = multi.getParameter("plan-start-date");
			String endDate = multi.getParameter("plan-end-date");
			String planStartTime = multi.getParameter("plan-start-time");
			String planEndTime = multi.getParameter("plan-start-time");
			String fileName = multi.getFilesystemName("thumbnailImg1");
			int userSeq = loginUser.getM_seq();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date planStartDate = null;
			Date planEndDate = null;
			
			try {
				planStartDate = sdf.parse(startDate);
				planEndDate = sdf.parse(endDate);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			MyPlan p = new MyPlan(loginUser.getM_seq(), planName, planStartDate
						, planEndDate, planStartTime, planEndTime, fileName);
			
			 try {
				 int result = new PlanService().insertPlan(p, userSeq);
                 if (result > 0) {
                       ArrayList<MyPlan> list = new PlanService().selectAllPlan();
                       
                       request.setAttribute("planList", list);
                       response.sendRedirect(request.getContextPath() + "/views/myPage/PlanList.jsp");
                 } else {
                       response.sendRedirect(request.getContextPath() + "/views/myPage/PlanList.jsp");
                 }
           } catch (Exception e) {
                 e.printStackTrace();
           }
		}else {
			
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
