package com.servlet.adoption.controller;

import java.io.IOException;

import com.servlet.adoption.dao.AdoptionDAO;
import com.servlet.adoption.dao.AdoptionDAOImpl;
import com.servlet.adoption.model.Adoption;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/adopt")
public class AdoptServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
        int petId = Integer.parseInt(req.getParameter("petId"));
        String fullName = req.getParameter("fullName");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String address = req.getParameter("address");
        String message = req.getParameter("message");

        Adoption adoption = new Adoption();
        adoption.setPetId(petId);
        adoption.setFullName(fullName);
        adoption.setEmail(email);
        adoption.setPhone(phone);
        adoption.setAddress(address);
        adoption.setMessage(message);

        AdoptionDAO dao = new AdoptionDAOImpl();
        boolean success = dao.saveAdoption(adoption);

        if (success) {
            resp.sendRedirect("success.jsp");
        } else {
            resp.sendRedirect("error.jsp");
        }

	}
	

}
