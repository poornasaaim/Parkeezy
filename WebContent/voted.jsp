<%@ page import="Dbconn.dbconn" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%@ page import="embed.*"%>
<%@ page import=" java.time.format.DateTimeFormatter" %>  
<%@ page import=" java.time.LocalDateTime"  %>
<%



String email=request.getParameter("hd").toString();
String id=request.getParameter("id").toString();
System.out.println(email);
//String deanorfac=request.getParameter("deanorfac");
String a="";
if(id.equals("1")){
	a="DMK";
}
else if(id.equals("2")){
	a="ADMK";
}

else if(id.equals("3")){
	a="BJP";
}

else if(id.equals("4")){
	a="NOTA";
}
else{
	response.sendRedirect("erroir.jsp?valid");
}

DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
LocalDateTime now = LocalDateTime.now();  
String time=dtf.format(now);  
String status="Voted";
try{
	
	Connection con=dbconn.create();
	Statement st=con.createStatement();
	st.executeUpdate("UPDATE jevoting.votinglist v SET  status='"+status+"' , Partiesname='"+a+"' , electiontime='"+time+"' where id='"+email+"' ");
	session.setAttribute("tovote", "hi");
	embedd.toclose();
	embedd.sending();
	response.sendRedirect("voting.jsp?valid");



}
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>