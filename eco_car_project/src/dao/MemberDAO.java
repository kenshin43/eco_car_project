package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.MemberDTO;
import util.DBUtil;

public class MemberDAO {
	public static List<MemberDTO> memberTable() throws Exception {
		Connection con = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<MemberDTO> list = null;
		try {
			pstmt = con.prepareStatement("SELECT * FROM member");
			rs = pstmt.executeQuery();
			list = new ArrayList<>();
			while (rs.next()) {
					list.add(new MemberDTO(rs.getString("id"),rs.getString("pwd"),rs.getString("salt"),rs.getString("email"),rs.getInt("isAdmin")));
			}
		}finally {
			DBUtil.close(con, pstmt, rs);
		}
		return list;
	}
	public static void withdrawal(String id) throws SQLException {
		Connection con = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		try {
			pstmt = con.prepareStatement("DELETE member WHERE id = ?");
			pstmt.setString(1, id);
			pstmt.execute();
		}finally {
			DBUtil.close(con, pstmt);
		}
	}
}
