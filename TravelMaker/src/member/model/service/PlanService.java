package member.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.BoardDao;
import board.model.vo.Attachment;
import board.model.vo.Board;
import board.model.vo.Information;
import member.model.dao.MemberDao;
import member.model.dao.PlanDao;
import member.model.vo.Member;
import member.model.vo.MyPlan;

public class PlanService {
	// 계획 변경
	public int updatePlan(MyPlan p, int userSeq) {
		Connection conn = getConnection();
		
		int result = new PlanDao().updatePlan(conn, p, userSeq);

		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}

		close(conn);

		return result;
	}

	// 계획 삭제
	public int deletePlan(int pId, String mId) {
		Connection conn = getConnection();

		int result = new PlanDao().deletePlan(conn, pId, mId);

		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}

		close(conn);

		return result;
	}

}
