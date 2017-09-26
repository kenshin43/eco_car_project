package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import dto.MemberDTO;
import util.DBUtil;
import util.SHAUtil;

public class LoginDAO {
	public static MemberDTO login(MemberDTO member) throws Exception {
		Connection con = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean result = false;
		try {
			pstmt = con.prepareStatement("SELECT * FROM member WHERE id = ?");
			pstmt.setString(1, member.getId());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = SHAUtil.decodePwd(rs.getString("pwd"),rs.getString("salt"),member.getPwd());
				if(result) {
					member = new MemberDTO(rs.getString("id"),rs.getString("pwd"),rs.getString("salt"),rs.getString("email"),rs.getInt("isAdmin"));
				} else {
					member.setId(null);
				}
			} else{
				member.setId(null);
			}
		}finally {
			DBUtil.close(con, pstmt, rs);
		}
		return member;
	}
}
