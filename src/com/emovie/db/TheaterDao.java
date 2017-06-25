package com.emovie.db;

import java.sql.Connection;


import java.sql.PreparedStatement;

import com.emovie.model.Theater;

public class TheaterDao {

	public static int save(Theater t) {
		// TODO Auto-generated method stub
		int status=0;
		String qry="insert into theater values(?,?,?,?,?,?,?)";
		
		
		try {
			Connection con=Provider.getConnection();
			PreparedStatement stmt=con.prepareStatement(qry);
			stmt.setString(1, t.getThid());
			stmt.setString(2, t.getThname());
			stmt.setString(3, t.getCity());
			stmt.setString(4, t.getAddress());
			stmt.setInt(5, t.getPincode());
			stmt.setInt(6, t.getNos());
			stmt.setInt(7, t.getSeat());
			status=stmt.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return status;
	}

	public static int update(Theater t) {
		// TODO Auto-generated method stub
		int status=0;
		String qry="update theater set theatername=?,city=?,address=?,pin=?,screen=?,seat=? where theaterid=?";
		try {
			Connection con=Provider.getConnection();
			PreparedStatement stmt=con.prepareStatement(qry);
			
			stmt.setString(1, t.getThname());
			stmt.setString(2, t.getCity());
			stmt.setString(3, t.getAddress());
			stmt.setInt(4, t.getPincode());
			stmt.setInt(5, t.getNos());
			stmt.setInt(6, t.getSeat());
			stmt.setString(7, t.getThid());
			status=stmt.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return status;
	}
}













