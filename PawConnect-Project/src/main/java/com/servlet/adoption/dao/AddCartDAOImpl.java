package com.servlet.adoption.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.servlet.adoption.model.AddCart;
import com.servlet.adoption.util.DBConnection;

public class AddCartDAOImpl implements AddCartDAO{

	@Override
	public boolean addToCart(AddCart cart) {
		
		try{
         	Connection con=DBConnection.getConnector();
 			PreparedStatement ps=con.prepareStatement("INSERT INTO cart (fullName, product, price, quantity) VALUES (?, ?, ?, ?)");
                ps.setString(1, cart.getFullName());
	            ps.setString(2, cart.getProduct());
	            ps.setDouble(3, cart.getPrice());
	            ps.setInt(4, cart.getQuantity());

	            return ps.executeUpdate() > 0;

	        } catch (Exception e) {
	            e.printStackTrace();
	            return false;
	        }

	}

}
