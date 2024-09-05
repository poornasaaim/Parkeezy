<%@ page import="Dbconn.dbconn" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%



String roomdepart=request.getParameter("room").toString();
System.out.println(roomdepart);
session.setAttribute("deprom", roomdepart);


try{
	if(roomdepart.equals("depart")){
	 String departname=request.getParameter("departname");
	 session.setAttribute("depana", departname);
	 
		String progname=request.getParameter("progname");
		 session.setAttribute("progname", progname);
		 
		String classname=request.getParameter("classname"); 
		 session.setAttribute("clana", classname);
		 
		String year=request.getParameter("year"); 
		 session.setAttribute("yearna", year);
		 
		 session.setAttribute("no", "2");
		 
		 System.out.println("hi");
	response.sendRedirect("roomwisetimetable.jsp?valid");
	}
	else if(roomdepart.equals("room")){
		String roomnum=request.getParameter("roomnum"); 
		session.setAttribute("roomnum", roomnum);
		session.setAttribute("no", "2");
		response.sendRedirect("searchparkingslot.jsp?valid");
	}
}
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>