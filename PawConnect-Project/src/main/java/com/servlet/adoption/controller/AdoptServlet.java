package com.servlet.adoption.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import com.servlet.adoption.dao.AdoptionDAO;
import com.servlet.adoption.dao.AdoptionDAOImpl;
import com.servlet.adoption.model.Adoption;
import com.servlet.adoption.util.DBConnection;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/AdoptServlet")
public class AdoptServlet extends HttpServlet {
	private AdoptionDAO adoptionDAO = new AdoptionDAOImpl();

	@Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

		 try {
	            int petId = Integer.parseInt(req.getParameter("petId"));
	            String petName = req.getParameter("petName");
	            String fullName = req.getParameter("fullName");
	            String email = req.getParameter("email");
	            long phone = Long.parseLong(req.getParameter("phone"));
	            String address = req.getParameter("address");
	            String message = req.getParameter("message");
	            
	            Adoption adoption = new Adoption();
	            adoption.setPetId(petId);
	            adoption.setPetName(petName);
	            adoption.setFullName(fullName);
	            adoption.setEmail(email);
	            adoption.setPhone(phone);
	            adoption.setAddress(address);
	            adoption.setMessage(message);
	            
	            boolean saved = adoptionDAO.saveAdoption(adoption);

	            System.out.println("SAVE RESULT: " + saved);

	            if (saved) {
	                req.getSession().setAttribute("petName", petName);
	                req.getSession().setAttribute("fullName", fullName);
	                req.getSession().setAttribute("email", email);
	                req.getSession().setAttribute("phone", phone);
	                req.getSession().setAttribute("address", address);
	                req.getSession().setAttribute("message", message);

	                res.sendRedirect("adoption-success.jsp");
	            } else {
	            	res.sendRedirect("pets.jsp?error=notSaved");
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	            res.sendRedirect("pets.jsp?error=exception");
	        }

	    String petName = req.getParameter("petName");
	    String fullName = req.getParameter("fullName");
	    String email = req.getParameter("email");
	    String phone = req.getParameter("phone");
	    String address = req.getParameter("address");
	    String message = req.getParameter("message");

	    try {
	        Connection con = DBConnection.getConnector();
	        String sql = "INSERT INTO adoptions (pet_name, full_name, email, phone, address, message) VALUES (?, ?, ?, ?, ?, ?)";
	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setString(1, petName);
	        ps.setString(2, fullName);
	        ps.setString(3, email);
	        ps.setString(4, phone);
	        ps.setString(5, address);
	        ps.setString(6, message);

	        ps.executeUpdate();

	        // store email in session for My-Adoptions
	        req.getSession().setAttribute("email", email);

	        res.sendRedirect("My-adoptions.jsp");

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}

}
