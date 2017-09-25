package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.CarDTO;
import util.DBUtil;
/**
 * 
 * @author DG
 *
 */
public class CarDAO {
	public static List<CarDTO> viewCar() throws SQLException{
		Connection con = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		CarDTO car = null;
		ArrayList<CarDTO> list = null;
		
		String sql = "SELECT * FROM CAR";
		
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			car = new CarDTO(
					rs.getInt("code"),
					rs.getString("brand"),
					rs.getString("name"),
					rs.getInt("year"),
					rs.getString("price"),
					rs.getString("distance"),
					rs.getString("img")
					);
			list.add(car);
		}
		return list;
	} // end of viewCar()
} // end of class
