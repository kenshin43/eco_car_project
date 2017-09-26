package dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.CarDTO;
import dto.NewsDTO;
import util.DBUtil;
/**
 * 
 * @author DG
 *
 */
public class NewsDAO {
	
	public static List<NewsDTO> selectNews() throws SQLException {
		Connection con = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<NewsDTO> list = null;
		try {
			pstmt = con.prepareStatement("SELECT * FROM NEWS");
			rs = pstmt.executeQuery();
			list = new ArrayList<>();
			while(rs.next()){
				NewsDTO news = new NewsDTO(
						rs.getInt("code"),
						rs.getString("title"),
						rs.getString("linkurl"),
						rs.getString("des")
						);
				list.add(news);
			}
		} finally {
			DBUtil.close(con, pstmt, rs);
		}
		return list;
	} // end of selectNews()
} // end of class()
