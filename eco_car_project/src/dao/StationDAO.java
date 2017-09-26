package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.MemberDTO;
import dto.StationDTO;
import util.DBUtil;

public class StationDAO {
	public static List<StationDTO> nearbyStation(double lat, double longi) throws SQLException {
		Connection con = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<StationDTO> list = null;
		try {
			pstmt = con.prepareStatement("SELECT * FROM station WHERE (lat BETWEEN ? AND ?) AND (longi BETWEEN ? AND ?)");
			pstmt.setDouble(1, lat-0.03);
			pstmt.setDouble(2, lat+0.03);
			pstmt.setDouble(3, longi-0.03);
			pstmt.setDouble(4, longi+0.03);
			rs = pstmt.executeQuery();
			list = new ArrayList<>();
			while (rs.next()) {
				list.add(new StationDTO(rs.getInt("CPID"),rs.getString("CSNM"),rs.getString("ADDR"),rs.getDouble("LAT"),rs.getDouble("LONGI"),rs.getInt("CHARGETP")));
			}
		}finally {
			DBUtil.close(con, pstmt, rs);
		}
		return list;
	}
	
	public static List<StationDTO> searchStation(String name) throws SQLException{
		Connection con = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<StationDTO> list = null;
		try {
			pstmt = con.prepareStatement("SELECT * FROM station WHERE addr like ?");
			pstmt.setString(1, "%"+name+"%");
			rs = pstmt.executeQuery();
			list = new ArrayList<>();
			while (rs.next()) {
				list.add(new StationDTO(rs.getInt("CPID"),rs.getString("CSNM"),rs.getString("ADDR"),rs.getDouble("LAT"),rs.getDouble("LONGI"),rs.getInt("CHARGETP")));
			}
		}finally {
			DBUtil.close(con, pstmt, rs);
		}
		return list;
	}
	
	public static List<StationDTO> favoriteStation(MemberDTO member) throws SQLException{
		Connection con = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<StationDTO> list = null;
		try {
			pstmt = con.prepareStatement("SELECT s.cpid, s.csnm, s.addr, s.lat, s.longi, s.chargetp FROM member m JOIN member_station ms ON m.id=ms.id JOIN station s ON ms.cpid=s.cpid where m.id=?");
			pstmt.setString(1, member.getId());
			rs = pstmt.executeQuery();
			list = new ArrayList<>();
			while (rs.next()) {
				list.add(new StationDTO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDouble(4),rs.getDouble(5),rs.getInt(6)));
			}
		}finally {
			DBUtil.close(con, pstmt, rs);
		}
		return list;
	}
	
	public static void deleteFavorite(MemberDTO member, int cpid) throws SQLException{
		Connection con = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		try {
			pstmt = con.prepareStatement("DELETE member_station WHERE id = ? and cpid = ?");
			pstmt.setString(1, member.getId());
			pstmt.setInt(2, cpid);
			pstmt.execute();
		}finally {
			DBUtil.close(con, pstmt);
		}
	}
	
	public static void insertFavorite(MemberDTO member, int cpid) throws SQLException{
		Connection con = DBUtil.getConnection();
		PreparedStatement pstmt = null;
		try {
			pstmt = con.prepareStatement("INSERT INTO member_station VALUES(?,?)");
			pstmt.setString(1, member.getId());
			pstmt.setInt(2, cpid);
			pstmt.execute();
		}finally {
			DBUtil.close(con, pstmt);
		}
	}
}
