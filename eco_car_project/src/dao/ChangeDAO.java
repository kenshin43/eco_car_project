package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;
import dto.MemberDTO;
import util.DBUtil;
import util.SHAUtil;

public class ChangeDAO {
	public static void changeMem(MemberDTO member) throws Exception {
		Connection con = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		try {
			List<String> list = SHAUtil.encodePwd(member.getPwd());
			pstmt = con.prepareStatement("UPDATE member SET pwd=?, salt=?, email= ? WHERE id=?");
			pstmt.setString(1, list.get(1));
			pstmt.setString(2, list.get(0));
			pstmt.setString(3, member.getEmail());
			pstmt.setString(4, member.getId());
			pstmt.executeUpdate();
		} finally {
			DBUtil.close(con, pstmt);
		}
	} // end of changeMem()
} // end of class
