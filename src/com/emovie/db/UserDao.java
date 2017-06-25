package com.emovie.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.emovie.model.User;
import com.mysql.jdbc.EscapeTokenizer;

public class UserDao {

	public static int save(User u) {
		// TODO Auto-generated method stub
		int status=0;
		String qry="insert into eticketuser values(?,?,?,?,?)";
		try {
			Connection con=Provider.getConnection();
			PreparedStatement stmt=con.prepareStatement(qry);
			stmt.setString(1, u.getName());
			stmt.setString(2, u.getEmail());
			stmt.setString(3, u.getMobile());
			stmt.setString(4, u.getPassword());
			stmt.setString(5, u.getType());
			status=stmt.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return status;
	}

	public static String validate(User u) {
		// TODO Auto-generated method stub
		String type="";
		String qry="select * from eticketuser where email=? and password=?";
		System.out.println(u.getEmail()+"\t"+u.getPassword());
		try {
			Connection con=Provider.getConnection();
			PreparedStatement stmt=con.prepareStatement(qry);
			stmt.setString(1, u.getEmail());
			stmt.setString(2, u.getPassword());
			ResultSet rs=stmt.executeQuery();
			while(rs.next())
			{
				type=rs.getString(5);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return type;
	}

}
