package com.worldtime.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.worldtime.classes.TimeZoneAdapter;

public class TimeZoneServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String timeZone = request.getParameter("timeZoneId");
		TimeZoneAdapter driverObject = new TimeZoneAdapter();
		
		String[] resArray = driverObject.getTime(timeZone);
		request.setAttribute("time", resArray[0]);
		request.setAttribute("zoneID", resArray[1]);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("LocalTime.jsp");
		dispatcher.forward(request, response);
	}
}
