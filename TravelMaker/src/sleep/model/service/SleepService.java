package sleep.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static common.JDBCTemplate.*;

import sleep.model.dao.SleepDao;
import sleep.model.vo.Room;
import sleep.model.vo.Sleep;

public class SleepService {
	
	// 전체리스트
	public ArrayList<Sleep> selectList(){
		Connection conn=getConnection();
		ArrayList<Sleep> list = new SleepDao().selectList(conn);
		
		close(conn);
		
		return list;
		
	}
	
	// 타입별 방보여주기
	public ArrayList<Room> selectrList(String sName){
		Connection conn = getConnection();
		ArrayList<Room> rlist = new SleepDao().selectrList(conn,sName);
		
		close(conn);
		return rlist;
		
	}
	
	
	
	
	// 숙박 상세
	public Sleep detailSleep(int sId) {
		Connection conn = getConnection();
		SleepDao sdao = new SleepDao();
		Sleep s = sdao.detailSleep(conn,sId);
		
		return s;
	}
	
	
	// insert하는 부분
	public int insertSleep(Sleep s) {
		Connection conn = getConnection();
		SleepDao sdao = new SleepDao();
		int result = 0;
		
		result = sdao.insertSleep(conn,s);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
		
	}
	
	// 수정부분
	public int updateSleep(int sId , Sleep s) {
		Connection conn = getConnection();
		SleepDao sdao = new SleepDao();
		int result = 0;
		result = sdao.updateSleep(conn, sId, s);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
	
	// 삭제
	public int deleteSleep(int sId) {
		Connection conn = getConnection();
		SleepDao sdao = new SleepDao();
		int result =0;
		result = sdao.deleteSleep(conn,sId);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
	// 예약하기
	public int reservation(String mId, String rId ) {
		Connection conn = getConnection();
		SleepDao sdao = new SleepDao();
		int result = 0;
		result = sdao.reservation(conn,mId,rId);
		
		
		return result;
		
	}
	
	

}
