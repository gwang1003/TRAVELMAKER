package board.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;

import board.model.vo.Board;
import common.MyFileRenamePolicy;
import member.model.vo.Member;

/**
 * Servlet implementation class FestivalInsertServlet
 */
@WebServlet("/insert.fe")
public class FestivalInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FestivalInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		if(ServletFileUpload.isMultipartContent(request)) {
			int maxSize = 1024 * 1024 * 10;
			
			String root = request.getSession().getServletContext().getRealPath("/");
			
			String savePath = root + "/resources/festival_uploadFile/";
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			ArrayList<String> changeFiles = new ArrayList<String>();
			ArrayList<String> originFiles = new ArrayList<String>();
			
			Enumeration<String> files = multiRequest.getFileNames();
			// -> 전송 순서 역순으로 쌓여 있음
			
			while(files.hasMoreElements()) {
				
				//files에 담겨있는 파일 리스트들의 name 값을 반환
				String name = files.nextElement();
				
				// 해당 파일이 null이 아닌 경우
				if(multiRequest.getFilesystemName(name) != null) {
					// getFilesystemName() - MyRenamePolicy의 rename 메소드에서
					// 작성한대로 rename 된 파일명
					String changeName = multiRequest.getFilesystemName(name);
					
					// getOriginalFileName() - 실제 사용자가 업로드 할 때 파일명
					String originName = multiRequest.getOriginalFileName(name);
					
					changeFiles.add(changeName);
					originFiles.add(originName);
				}
			}
			
			// 3_1. 파일 외에 게시판 제목, 내용, 작성자 회원 번호 받아와서 Board 객체 생성
			String title = multiRequest.getParameter("title");
			String content = multiRequest.getParameter("content");
			String sdate = multiRequest.getParameter("sdate");
			String edate = multiRequest.getParameter("edate");
			String tel = multiRequest.getParameter("tel");
			int price = Integer.parseInt(multiRequest.getParameter("price"));
			String address = multiRequest.getParameter("address");
			String home = multiRequest.getParameter("home");
			String bWriter = String.valueOf(((Member)request.getSession().getAttribute("loginUser")).geM_seq());
			
			Board b = new Board();
			b.setbTitle(title);
			b.setbContent(content);
			b.setbWriter(bWriter);
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
