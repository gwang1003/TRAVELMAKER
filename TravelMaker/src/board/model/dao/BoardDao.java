package board.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import board.model.vo.Attachment;
import board.model.vo.Board;
import board.model.vo.Reply;

public class BoardDao {
	
	private Properties prop = new Properties();

	public BoardDao() {
		String fileName = BoardDao.class.getResource("/sql/board/board-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	public int getListCount(Connection con) {
		// TODO Auto-generated method stub
		return 0;
	}

	

	public Board selectBoard(Connection con, int bid) {
		// TODO Auto-generated method stub
		return new Board();
	}

	public Board selectBoardNoCnt(Connection con, int bid) {
		// TODO Auto-generated method stub
		return new Board();
	}

	public int deleteBoard(Connection con, int bid) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insertBoard(Connection con, Board b) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateBoard(Connection con, Board b) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	// 게시판 조회용 
	public ArrayList<Board> selectBList(Connection con) {
		Statement stmt = null;
		ResultSet rs = null;

		ArrayList<Board> list = null;

		String query = prop.getProperty("selectBList");

		try {
			stmt = con.createStatement();

			rs = stmt.executeQuery(query);

			list = new ArrayList<Board>();

			while (rs.next()) {
				list.add(new Board(rs.getInt("b_id"),
							rs.getInt("b_type"),
							rs.getInt("s_type"),
							rs.getString("title"),
							rs.getString("content"),
							rs.getString("writer"),
							rs.getInt("view_cnt"),
							rs.getInt("good"),
							rs.getInt("notgood"),
							rs.getDate("write_date"),
							rs.getDate("update_date"),
							rs.getString("l_code"),
							rs.getString("m_id"),
							rs.getString("status")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}
		return list;
	}

	public ArrayList selectFList(Connection con) {
		ArrayList<Attachment> list = new ArrayList<Attachment>();

		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = prop.getProperty("selectFList");

		try {
			pstmt = con.prepareStatement(query);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				Attachment at = new Attachment();
				at.setbId(rset.getInt("bid"));
				at.setChangeName(rset.getString("change_name"));

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

	public int insertThumbnail(Connection con, Board b, ArrayList<Attachment> fileList) {
		// TODO Auto-generated method stub
		return 0;
	}

	public ArrayList<Attachment> selectThumbnail(Connection con, int bId) {
		// TODO Auto-generated method stub
		return new ArrayList<Attachment>();
	}

	public ArrayList<Reply> selectReplyList(Connection con, int bId) {
		// TODO Auto-generated method stub
		return new ArrayList<Reply>();
	}

	public ArrayList<Reply> insertReply(Connection con) {
		// TODO Auto-generated method stub
		return new ArrayList<Reply>();
	}

	public ArrayList<Board> selectList(Connection con, int currentPage, int boardLimit) {
		// TODO Auto-generated method stub
		return null;
	}

	public int insertThBoard(Connection conn, Board b) {
		PreparedStatement pstmt = null;

		int result = 0;

		String query = prop.getProperty("insertThBoard");

		try {
			pstmt = conn.prepareStatement(query);

			pstmt.setString(1, b.getbTitle());
			pstmt.setString(2, b.getbContent());
			pstmt.setString(3, b.getbWriter());
			pstmt.setString(4, b.getlCode());
			pstmt.setInt(5, b.getsType());
			pstmt.setString(6, b.getmId());
			pstmt.setInt(7, b.getbType());

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	public int insertAttachment(Connection conn, ArrayList<Attachment> fileList) {
		PreparedStatement pstmt = null;

		int result = 0;

		String query = prop.getProperty("insertAttachment");

		try {

			for (int i = 0; i < fileList.size(); i++) {
				Attachment at = fileList.get(i);
				
				pstmt = conn.prepareStatement(query);
				
				pstmt.setString(1, at.getOriginName());
				pstmt.setString(2, at.getChangeName());
				pstmt.setString(3, at.getFilePath());
				pstmt.setInt(4, at.getFileLevel());

				result += pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}

		return result;
	}

}
