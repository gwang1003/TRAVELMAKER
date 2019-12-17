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

	public Board selectBoard(Connection con, int bid) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Board b = null;

		String query = prop.getProperty("selectBoard");

		try {
			pstmt = con.prepareStatement(query);

			pstmt.setInt(1, bid);

			rset = pstmt.executeQuery();

			if (rset.next()) {
				b = new Board(rset.getInt("b_id"), rset.getDate("write_date"), rset.getDate("update_date"),
						rset.getString("title"), rset.getString("content"), rset.getInt("view_cnt"),
						rset.getString("writer"), rset.getString("status"), rset.getInt("b_type"));

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
	public ArrayList<Board> selectBList(Connection con, int currentPage, int boardLimit) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Board> list = null;

		String query = prop.getProperty("selectBList");

		try {
			pstmt = con.prepareStatement(query);
			
			int startRow = (currentPage - 1) * boardLimit + 1;
			int endRow = startRow + boardLimit - 1;

			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);

			rs = pstmt.executeQuery();

			list = new ArrayList<Board>();

			while (rs.next()) {
				list.add(new Board(rs.getInt("b_id"), rs.getDate("write_date"), rs.getDate("update_date"),
						rs.getString("title"), rs.getString("content"), rs.getInt("view_cnt"), rs.getInt("good"),
						rs.getInt("notgood"), rs.getString("writer"), rs.getString("status"), rs.getInt("l_code"),
						rs.getInt("s_type"), rs.getInt("b_type"), rs.getInt("m_seq")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}

	public ArrayList selectFList(Connection con, int currentPage, int boardLimit) {
		ArrayList<Attachment> list = new ArrayList<Attachment>();

		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = prop.getProperty("selectFList");

		try {
			pstmt = con.prepareStatement(query);
			
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

	public int insertThumbnail(Connection con, Board b, ArrayList<Attachment> fileList) {
		// TODO Auto-generated method stub
		return 0;
	}

	// 축제 디테일
	public ArrayList<Attachment> selectThumbnail(Connection con, int bId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Attachment> list = null;

		String query = prop.getProperty("selectThumbnail");

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, bId);

			rs = pstmt.executeQuery();

			list = new ArrayList<Attachment>();

			while (rs.next()) {
				Attachment at = new Attachment();
				at.setfId(rs.getInt("no"));
				at.setbId(rs.getInt("b_id"));
				at.setOriginName(rs.getString("originname"));
				at.setChangeName(rs.getString("newfilename"));
				at.setFilePath(rs.getString("filepath"));
				at.setCreateDate(rs.getDate("write_date"));

				list.add(at);

			}
			System.out.println("ㅁ너아ㅣ런ㅇㄹ  : " + list);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}

		return list;
	}

	public Information selectInformtion(Connection con, int bId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Information in = null;

		String query = prop.getProperty("selectInformation");

		try {
			pstmt = con.prepareStatement(query);

			pstmt.setInt(1, bId);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				in = new Information();
				in.setsDay(rs.getString("to_char(sday)"));
				in.seteDay(rs.getString("to_char(eday)"));
				in.setTel(rs.getString("tel"));
				in.setPrice(rs.getInt("price"));
				in.setAddress(rs.getString("address"));
				in.setPage(rs.getString("pageaddress"));

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}

		return in;
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
		ArrayList<Board> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			int startRow = (currentPage-1) * boardLimit +1;
			int endRow = startRow + boardLimit -1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Board(rset.getInt(2), rset.getDate(3), rset.getDate(4),rset.getString(5),rset.getString(6), rset.getInt(7),rset.getInt(8),rset.getInt(9),rset.getString(10),rset.getString(11),rset.getInt(12),rset.getInt(13),rset.getInt(14),rset.getInt(15)));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		
		
		return list;
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
		} finally {
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

			pstmt.setString(1, in.getsDay());
			pstmt.setString(2, in.geteDay());
			pstmt.setString(3, in.getTel());
			pstmt.setInt(4, in.getPrice());
			pstmt.setString(5, in.getAddress());
			pstmt.setString(6, in.getPage());

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);

		}

		return result;
	}

	public int increaseCount(Connection con, int bid) {
		PreparedStatement pstmt = null;

		int result = 0;

		String query = prop.getProperty("increaseCount");

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, bid);

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

}
