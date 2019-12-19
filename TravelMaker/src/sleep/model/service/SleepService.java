package sleep.model.service;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.BoardDao;

import static common.JDBCTemplate.*;

import sleep.model.dao.SleepDao;
import sleep.model.vo.Attachment;
import sleep.model.vo.Room;
import sleep.model.vo.Sleep;

public class SleepService {
	
	// 전체리스트
	public ArrayList selectList(int flag,int currentPage, int boardLimit){
		Connection conn=getConnection();
		ArrayList list = null;
		
		SleepDao sDao = new SleepDao();
		if(flag == 1) {
			list = sDao.selectSList(conn,currentPage,boardLimit);
		}else {
			list = sDao.selectFList(conn,currentPage,boardLimit);
		}
		
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
	public int insertSleep(Sleep s, ArrayList<Attachment> fileList){
		Connection conn = getConnection();
		SleepDao sdao = new SleepDao();
		
		int result1 = 0;
		try {
			result1 = sdao.insertSleep(conn,s);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int result2 = sdao.insertAttachment(conn,fileList);
		
		
		if(result1 > 0 && result2 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result1;
		
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

	// 1. 게시글 리스트 갯수 조회용 서비스 메소드
		public int getListCount() {
			Connection con = getConnection();
			int result = new SleepDao().getListCount(con);
			
			close(con);

			return result;
		}


	
	

}
