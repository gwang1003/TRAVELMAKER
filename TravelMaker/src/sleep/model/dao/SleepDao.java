package sleep.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.*;
import java.sql.SQLException;
import java.util.*;
import java.sql.PreparedStatement;
import static common.JDBCTemplate.*;

import sleep.model.vo.Room;
import sleep.model.vo.Sleep;

public class SleepDao {

	
	//전체 리스트
	public ArrayList<Sleep> selectList(Connection conn) {
		ArrayList<Sleep> list = new ArrayList<>();
		
		
		
		
		
		return list;
	}
	
	// 삽입
	public int insertSleep(Connection conn, Sleep s) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		Properties prop = new Properties();
		try {
			prop.load(new FileReader("driver.properties"));
			String sql = prop.getProperty("insertSleep");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, s.getsId());
			pstmt.setString(2, s.getsType());
			pstmt.setString(3, s.getsName());
			pstmt.setString(4, s.getsContent());
			pstmt.setInt(5, s.getrId());
			pstmt.setInt(6, s.getlCode());
			
			result = pstmt.executeUpdate();

		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
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
	
	


}
