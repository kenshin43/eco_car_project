package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;
import dto.MemberDTO;
import util.DBUtil;
import util.SHAUtil;

public class JoinDAO {
	public static void insertMem(MemberDTO member) throws Exception {
		Connection con = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		try {
			pstmt = con.prepareStatement("INSERT INTO member values(?,?,?,?,?)");
			List<String> list = SHAUtil.encodePwd(member.getPwd());
			pstmt.setString(1, member.getId());
			System.out.println(list.get(1));
			System.out.println(list.get(0));
			pstmt.setString(2, list.get(1));
			pstmt.setString(3, list.get(0));
			pstmt.setString(4, member.getEmail());
			pstmt.setInt(5, member.getIsAdmin());
			pstmt.executeUpdate();
		} finally {
			DBUtil.close(con, pstmt);
		}
	}
}
