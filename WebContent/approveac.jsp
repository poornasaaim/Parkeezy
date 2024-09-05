<%@ page import="Dbconn.dbconn" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%




String id=request.getParameter("id");



String status="Activate";
try{
	
	Connection con=dbconn.create();
	Statement st=con.createStatement();
	st.executeUpdate("UPDATE `parkingslot`.`application` set status='"+status+"' where id='"+id+"' ");
	response.sendRedirect("pollingofficerslist.jsp?valid");

}
catch(Exception e){
	response.sendRedirect("error.jsp?invalid");
System.out.println(e);
}
%>