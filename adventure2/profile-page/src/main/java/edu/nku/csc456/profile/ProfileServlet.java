package edu.nku.csc456.profile;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class ProfileServlet extends HttpServlet {

	public void doPost(HttpServletRequest request,
			HttpServletResponse response)
			throws IOException {
		PrintWriter out = response.getWriter();
		String firstName = request.getParameter("first_name");
		String lastName = request.getParameter("last_name");
		String email = request.getParameter("email");
		out.println("<html> " +
			    "<body>"+
			    "<h1 align=center>Hello!!  " + firstName + "  " + lastName + "</h1>" +
				"<p> Your email is " + email + "</p>" +
			    "</body>"+"</html>");
	}

}