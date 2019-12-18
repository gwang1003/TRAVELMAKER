package member.controller.plan;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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

import member.model.service.MemberService;
import member.model.service.PlanService;
import member.model.vo.Member;
import member.model.vo.MyPlan;

/**
 * Servlet implementation class PlanUpdateServlet
 */
@WebServlet("/update.pl")
public class PlanUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PlanUpdateServlet() {
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
			String planName = request.getParameter("plan-name");
			String planContent = request.getParameter("plan-content");
			String startDate = request.getParameter("plan-start-date");
			String endDate = request.getParameter("plan-end-date");
			String planStartTime = request.getParameter("plan-start-time");
			String planEndTime = request.getParameter("plan-start-time");
			String fileName = request.getParameter("plan-image");
			
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
			
			MyPlan p = new MyPlan(loginUser.getM_seq(), planName, planContent, planStartDate
						, planEndDate, planStartTime, planEndTime, fileName);
			int maxSize = 1024 * 1024 * 10;
			ServletContext context = getServletContext();
			String saveDir = context.getRealPath("myplan_upload");
			MultipartRequest multi = new MultipartRequest(request, saveDir, maxSize, "UTF-8", new DefaultFileRenamePolicy());
			
			int result = new PlanService().updatePlan(p, userSeq);
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
