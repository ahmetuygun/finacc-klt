package de.c24.finacc.klt.rest.serv;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Process extends HttpServlet {
	 @Override
	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		 
	        request.getRequestDispatcher("/WEB-INF/jsp/process.jsp").forward(request, response);
	    }

	    @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	        request.getRequestDispatcher("/WEB-INF/jsp/process.jsp").forward(request, response);
	    }
}
