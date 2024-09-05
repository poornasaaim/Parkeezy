<%@ page import="Dbconn.dbconn" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%



String voteid=request.getParameter("voteid").toString();

	 session.setAttribute("voteid", voteid);
	 
		String thumb=request.getParameter("thumb");
		 session.setAttribute("thumbid", thumb);
		 
		
		 session.setAttribute("tovote", "hell");
		 
		 System.out.println("hi");
	response.sendRedirect("voting.jsp?valid");

	

%>