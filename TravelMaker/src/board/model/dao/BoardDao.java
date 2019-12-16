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
import board.model.vo.Information;
import board.model.vo.Reply;
import member.model.vo.Member;

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

	

	public ArrayList selectBoard(Connection con, int bid) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Board b = null;
		Information i =null;
		Member m = null;

		String query = prop.getProperty("selectBoard");

		try {
			pstmt = con.prepareStatement(query);

			pstmt.setInt(1, bid);

			rset = pstmt.executeQuery();

			if (rset.next()) {
				b = new Board(rset.getInt("b_id") , rset.getDate("write_date") ,rset.getDate("update_date"), rset.getString("title"),
						rset.getString("content"), rset.getInt("view_cnt") ,rset.getString("writer"),  rset.getString("status"),rset.getInt("b_type"));
						
				m = new Member(rset.getString("nickname"));
						
				i = new Information(rset.getString("TO_CHAR(SDAY,'YYYYMMDD')"),rset.getString("TO_CHAR(EDAY,'YYYYMMDD')"),rset.getString("tel"),rset.getInt("price"),rset.getString("address"),
						rset.getString("pageaddress"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return b;
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
								rs.getDate("write_date"),
								rs.getDate("update_date"),
								rs.getString("title"),
								rs.getString("content"),
								rs.getInt("view_cnt"),
								rs.getInt("good"),
								rs.getInt("notgood"),
								rs.getString("writer"),
								rs.getString("status"),
								rs.getInt("l_code"),
								rs.getInt("s_type"),
								rs.getInt("b_type"),
								rs.getInt("m_seq")));
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

	public int insertThumbnail(Connection con, Board b, ArrayList<Attachment> fileList) {
		// TODO Auto-generated method stub
		return 0;
	}

	// 축제 디테일
	public ArrayList<Attachment> selectThumbnail(Connection con, int bId) {
		PreparedStatement pstmt= null;
		ResultSet rs = null;
		ArrayList<Attachment> list = null;
		
		String query = prop.getProperty("selectThumbnail");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, bId);
			
			rs = pstmt.executeQuery();
			
			list = new ArrayList<Attachment>();
			
			while(rs.next()) {
				Attachment at = new Attachment();
				at.setfId(rs.getInt("no"));
				at.setbId(rs.getInt("b_id"));
				at.setOriginName(rs.getString("originname"));
				at.setChangeName(rs.getString("newfilename"));
				at.setFilePath(rs.getString("filepath"));
				at.setCreateDate(rs.getDate("write_date"));
				
				list.add(at);
				
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		
		
		
		return list;
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
			pstmt.setInt(4, b.getlCode());
			pstmt.setInt(5, b.getmId());
			
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

	public int insertInformation(Connection conn, Information in) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = prop.getProperty("insertInformation");
		
		try {
			pstmt = conn.prepareStatement(query);
			 
			pstmt.setString(1,in.getsDay());
			pstmt.setString(2, in.geteDay());
			pstmt.setString(3, in.getTel());
			pstmt.setInt(4, in.getPrice());
			pstmt.setString(5, in.getAddress());
			pstmt.setString(6, in.getPage());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			
		}
		
		
		return result;
	}

}
