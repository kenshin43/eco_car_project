package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import util.DBUtil;
/**
 * 
 * @author DG
 *
 */
public class ParseDAO {
	public static void insertNews(String title, String link, String des) throws SQLException {
		Connection con = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		pstmt = con.prepareStatement("INSERT INTO NEWS VALUES(ncode.nextval,?,?,?)");
		pstmt.setString(1, title);
		pstmt.setString(2, link);
		pstmt.setString(3, des);
		pstmt.executeUpdate();
	}
}
