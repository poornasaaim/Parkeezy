<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
    <%@page import="Dbconn.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="embed.*" %>
<%@page import="embed.embedd" %>
<%@page import="java.io.FileInputStream" %>
<%@page import="java.io.IOException" %>
<%@page import="java.io.PrintWriter" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String b=request.getParameter("cd").toString();




 if(b.equals("1")){
	 String a=request.getParameter("id").toString();
	 session.setAttribute("selectedid", a);
embedd.toclose();
	//sendtoard.gone();
	embedd.sending();
	if(embedd.toclose()){
		response.sendRedirect("readyvoting.jsp?valid");
	}
}
 else {
		
		if(embedd.toclose()) {
			embedd.sending();
		 session.setAttribute("tovote", "hi");
		 response.sendRedirect("voting.jsp?valid");
	}}

%>
</body>
</html>