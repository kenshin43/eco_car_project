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
		CarDTO car = null;
		ArrayList<NewsDTO> list = null;
		
		String sql = "SELECT * FROM NEWS";
		
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			NewsDTO news = new NewsDTO(
					rs.getString("title"),
					rs.getString("linkurl"),
					rs.getString("des")
					);
			list.add(news);
		}
		return list;
	} // end of selectNews()
} // end of class()
