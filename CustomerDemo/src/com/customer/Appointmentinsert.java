package com.customer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Appointmentinsert")
public class Appointmentinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("uid");
		String doctorname = request.getParameter("dname");
		String specialization = request.getParameter("specialization");
		String appointmentdate = request.getParameter("adate");
		String appointmenttime = request.getParameter("atime");
		
		
	}

}
