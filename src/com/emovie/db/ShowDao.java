package com.emovie.db;

import java.sql.Connection;



import java.sql.PreparedStatement;

import com.emovie.model.Show;
import com.emovie.model.Theater;


public class ShowDao {

	public static int save(Show s) {
		// TODO Auto-generated method stub
		int status=0;
		String qry="insert into movieshow values(?,?,?,?,?,?,?,?,?,?,?,?)";
		
		try{
			
			Connection con=Provider.getConnection();
			PreparedStatement stmt=con.prepareStatement(qry);
			stmt.setString(1,s.getShid());
			stmt.setString(2,s.getMovienm());
			stmt.setString(3,s.getCity());
			stmt.setString(4,s.getTheaternm());
			stmt.setInt(5,s.getScreen());
			stmt.setInt(6,s.getSeat());
			stmt.setString(7,s.getStrttime());
			stmt.setString(8,s.getEndtime());
			stmt.setString(9,s.getDate());
			stmt.setInt(10,s.getPlatinumrt());
			stmt.setInt(11,s.getGoldrt());
			stmt.setInt(12,s.getSilverrt());
			status=stmt.executeUpdate();
			
			
		}catch(Exception e){
			e.printStackTrace();
		 
		}
		return status;
	}

	public static int update(Show s) {
		// TODO Auto-generated method stub
		int status=0;
		String qry="update movieshow set moviename=?,city=?,theatername=?,screen=?,seat=?,strtime=?,endtime=?,date=?,platinumrt=?,goldrt=?,silverrt=? where showid=?";
		try {
			Connection con=Provider.getConnection();
			PreparedStatement stmt=con.prepareStatement(qry);
			stmt.setString(1, s.getMovienm());
			stmt.setString(2, s.getCity());
			stmt.setString(3, s.getTheaternm());
			stmt.setInt(4, s.getScreen());
			stmt.setInt(5, s.getSeat());
			stmt.setString(6, s.getStrttime());
			stmt.setString(7, s.getEndtime());
			stmt.setString(8, s.getDate());
			stmt.setInt(9, s.getPlatinumrt());
			stmt.setInt(10, s.getGoldrt());
			stmt.setInt(11, s.getSilverrt());
			stmt.setString(12, s.getShid());
			status=stmt.executeUpdate();
		}catch (Exception e) {
			// TODO: handle exception
		}
		return status;
	}
}

