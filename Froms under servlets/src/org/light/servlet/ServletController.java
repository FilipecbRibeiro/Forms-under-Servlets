package org.light.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletController
 */
@WebServlet("/ServletController")
public class ServletController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
	
		out.print("Name: ");
		out.println(request.getParameter("fullname")+"<br>");
		out.print("Gender: ");
		out.println(request.getParameter("gender")+"<br>");
		String[] progLanguages= request.getParameterValues("language");
		out.print("Programming:<br> ");
		if(progLanguages!=null)
		for(int i=0;i<progLanguages.length;i++) {
			
			out.print("->"+progLanguages[i]+"<br>");
		}else
			out.print("It wasn't selected any kind of programming languages <br>");
		out.print("Level: ");
		out.println(request.getParameter("level")+"<br>");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			}

}
