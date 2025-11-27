package com.servlet.adoption.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.servlet.adoption.dto.Admin;
import com.servlet.adoption.util.DBConnection;

public class AdminDAOImpl implements AdminDAO{
	Connection con=null;
	@Override
	public boolean registerAdmin(Admin admin) {
		con=DBConnection.getConnector();
		String register="INSERT into admin values(?,?,?)";
		try {
			PreparedStatement ps=con.prepareStatement(register);
			ps.setString(1, admin.getName());
			ps.setString(2, admin.getEmail());
			ps.setString(3, admin.getPassword());
			
			int count=ps.executeUpdate();
			if(count>0) {
				return true;
			}
		    } catch (SQLException e) {	
	           e.printStackTrace();
		      }
	return false;
}

	@Override
	public boolean emailExists(String email) {
		return false;
	}

	@Override
	public boolean loginAdmin(String email, String hashedpassword) {
		String login="SELECT *FROM Admin WHERE email=? AND password=?";
		Admin admin=null;
		try {
			con=DBConnection.getConnector();
			PreparedStatement ps=con.prepareStatement(login);
			ps.setString(1, email);
			ps.setString(2, hashedpassword);
			ResultSet rs=ps.executeQuery();
			
			if(rs.next()){
				//if record present we will set data from database into dto object
				admin=new Admin();
				admin.setName(rs.getString(1));
				admin.setEmail(rs.getString(2));
				admin.setPassword(rs.getString(3));
			}
			return rs.next();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

}
