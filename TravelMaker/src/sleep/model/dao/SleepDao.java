package sleep.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.*;
import java.util.*;

import static common.JDBCTemplate.*;

import sleep.model.vo.Attachment;
import sleep.model.vo.Room;
import sleep.model.vo.Sleep;

public class SleepDao {
	private Properties prop = new Properties();
	
	public SleepDao() {
		String fileName = SleepDao.class.getResource("/sql/Sleep/Sleep-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch(IOException e) {
			e.printStackTrace();
		}
	}

	
	//전체 리스트
	public ArrayList<Sleep> selectList(Connection conn) {
		ArrayList<Sleep> list = new ArrayList<>();
		
		
		
		
		
		return list;
	}
	
	// 삽입
	public int insertSleep(Connection conn, Sleep s) throws FileNotFoundException, IOException {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("insertSleep");
		
		System.out.println(sql);
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, s.getsType());
			pstmt.setString(2, s.getsName());
			pstmt.setString(3, s.getsContent());	
			pstmt.setInt(4, s.getlCode());
			pstmt.setInt(5, s.getprice());
			
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	// 수정
	public int updateSleep(Connection conn, int sId, Sleep s) {
		Properties prop = null;
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = prop.getProperty("updateSleep");
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setInt(1, s.getsId());
			pstmt.setString(2, s.getsType());
			pstmt.setString(3, s.getsName());
			pstmt.setString(4, s.getsContent());
			pstmt.setInt(5, s.getrId());
			pstmt.setInt(6, s.getlCode());
			
			result = pstmt.executeUpdate();
			
			
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}

	// 삭제
	public int deleteSleep(Connection conn, int sId) {
		int result = 0;
		PreparedStatement pstmt = null;
		Properties prop = null;
		String sql = prop.getProperty("deleteSleep");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,sId);
			
			result=pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;

	}

	// 상세보기
	public Sleep detailSleep(Connection conn, int sId) {
		Sleep s =new Sleep();
		
		
		
		
		
		
		
		
		return s;
	}

	
	// 타입별 방보여주기(호텔,모텔,팬션)
	public ArrayList<Room> selectrList(Connection conn, String sName) {
		
		
		
		
		
		
		return null;
	}

	
	// 예약하기
	public int reservation(Connection conn, String mId, String rId) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	// 사진 게시판 게시글 리스트 조회
	public ArrayList<Sleep> selectSFist(Connection conn) {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<Sleep> selectSList(Connection conn, int currentPage, int boardLimit) {
		  PreparedStatement pstmt = null;
	      ResultSet rset = null;
	      ArrayList<Sleep> list = null;

	      String sql = prop.getProperty("selectBList");

	      try {
	    	  pstmt = conn.prepareStatement(sql);
	         
	     	int startRow = (currentPage - 1) * boardLimit + 1;
			int endRow = startRow + boardLimit - 1;

			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
	         list = new ArrayList<Sleep>();

	         while (rset.next()) {
	            list.add(new Sleep(rset.getInt("s_Id"), rset.getString("s_Type"), rset.getString("s_Name"),
	                  rset.getString("s_Content"),rset.getInt("l_Code")));
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         close(rset);
	         close(pstmt);
	      }

	      return list;
	   }
	

	public ArrayList selectFList(Connection conn, int currentPage, int boardLimit) {
	      ArrayList<Attachment> list = new ArrayList<Attachment>();
	      PreparedStatement pstmt = null;
	      ResultSet rset = null;

	      String sql = prop.getProperty("selectFList");

	      try {
	         pstmt = conn.prepareStatement(sql);
	         
	         int startRow = (currentPage - 1) * boardLimit + 1;
				int endRow = startRow + boardLimit - 1;

				pstmt.setInt(1, startRow);
				pstmt.setInt(2, endRow);
				
	         rset = pstmt.executeQuery();

	         while (rset.next()) {
	            Attachment at = new Attachment();
	            at.setbId(rset.getInt("b_id"));
	            at.setChangeName(rset.getString("newfilename"));

	            list.add(at);
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         close(rset);
	         close(pstmt);
	      }
	      return list;
	   }


	public int insertAttachment(Connection conn, ArrayList<Attachment> fileList) {
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String sql = prop.getProperty("insertAttachment");
		
		
			try {
				for(int i=0; i<fileList.size(); i++) {
			    Attachment at = fileList.get(i);
			
			    pstmt= conn.prepareStatement(sql);
			    pstmt.setString(1, at.getOriginName());
			    pstmt.setString(2, at.getChangeName());
			    pstmt.setString(3, at.getFilePath());
			    pstmt.setInt(4, at.getFileLevel());
			    
			    result += pstmt.executeUpdate();
			
				}
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				close(pstmt);
		}
			return result;
	}


	public int getListCount(Connection con) {
		int listCount = 0;
		
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("getListCount");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(sql);
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}		
		return listCount;
	}
		
		
		
		
		
		
		
	
	
}
	
	



