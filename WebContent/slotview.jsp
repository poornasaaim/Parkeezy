<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="Dbconn.dbconn"%>
      <%@page import="embed.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.FileInputStream" %>
<%@page import="java.io.IOException" %>
<%@page import="java.io.PrintWriter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css1/bootstrap.min.css">
<title>Insert title here</title>

<style>
body{
align-content: center;



}

/* .container div{

align-content: center;
position: absolute;left: 100px;

}
 */







</style>



</head>



<body style="background:lightblue;">
<center>
<div class="container" style="margin-left:500px; margin-top:150px;">
<div class="row">


       <%
       String team=request.getParameter("id");
       Connection con;
       
       
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `parkingslot`.`application` where id='"+team+"' ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	   String slotcount1=rs.getString(3);
    	   String slotcount2=rs.getString(4);
    	   String slotcount3=rs.getString(5);
    	   String slotcount4=rs.getString(6);
    	   String slotcount5=rs.getString(7);
    	   
    	   String slotcount=rs.getString(15);
    	String pin= rs.getString(10);
    	   
       %>
<div class="col-md-4">
<div class="card">
	

	  <div class="card-body">

	 <%--  <p class="card-text"><img class="card-img-top" src="Local/<%=image %>" width="40" height="150" alt="Card image cap"></p>
	  --%> 
    <p class="card-text">Parking Name : <%=rs.getString(2)%></p>
    <p class="card-text">Slot Count :<%=rs.getString(15)%></p>
    <p class="card-text">Location :<%=rs.getString(8)%></p>
    
    <%if(slotcount.equals("1")){  embedd.send("1"); %>
  
    <p class="card-text">Slot Name :<%=rs.getString(3)%>  ,<%=rs.getString(16) %>   <%if(rs.getString(16).equals("Available")){ %> ,<a href="selectslot.jsp?id=<%=rs.getString(1)%>&&slot=<%=rs.getString(3)%>&&num=1"><button class="btn btn-primary">Select </button></a><%} %></p>  
      
    <%} %>
     <%if(slotcount.equals("2")){   embedd.send("2");%>
     
    <p class="card-text">Slot1 Name :<%=rs.getString(3)%>  ,<%=rs.getString(16) %>,<%if(rs.getString(16).equals("Available")){ %> ,<a href="selectslot.jsp?id=<%=rs.getString(1)%>&&slot=<%=rs.getString(3)%>&&num=1"><button class="btn btn-primary">Select </button></a><%} %></p>    
      <p class="card-text">Slot2 Name :<%=rs.getString(4)%>  ,<%=rs.getString(17) %> <%if(rs.getString(17).equals("Available")){ %> ,<a href="selectslot.jsp?id=<%=rs.getString(1)%>&&slot=<%=rs.getString(4)%>&&num=2"><button class="btn btn-primary">Select </button></a><%} %></p>
    <%} %>
     <%if(slotcount.equals("3")){embedd.send("3"); %>
       
    <p class="card-text">Slot1 Name :<%=rs.getString(3)%>  ,<%=rs.getString(16) %> <%if(rs.getString(16).equals("Available")){ %> ,<a href="selectslot.jsp?id=<%=rs.getString(1)%>&&slot=<%=rs.getString(3)%>&&num=1"><button class="btn btn-primary">Select </button></a><%} %></p> 
      <p class="card-text">Slot2 Name :<%=rs.getString(4)%>  ,<%=rs.getString(17) %> <%if(rs.getString(17).equals("Available")){ %> ,<a href="selectslot.jsp?id=<%=rs.getString(1)%>&&slot=<%=rs.getString(4)%>&&num=2"><button class="btn btn-primary">Select </button></a><%} %></p>
        <p class="card-text">Slot3 Name :<%=rs.getString(5)%>  ,<%=rs.getString(18) %> <%if(rs.getString(18).equals("Available")){ %> ,<a href="selectslot.jsp?id=<%=rs.getString(1)%>&&slot=<%=rs.getString(5)%>&&num=3"><button class="btn btn-primary">Select </button></a><%} %></p>   
    <%} %>
     <%if(slotcount.equals("4")){  embedd.send("4");%>
      
    <p class="card-text">Slot1 Name :<%=rs.getString(3)%>  ,<%=rs.getString(16) %> <%if(rs.getString(16).equals("Available")){ %> ,<a href="selectslot.jsp?id=<%=rs.getString(1)%>&&slot=<%=rs.getString(3)%>&&num=1"><button class="btn btn-primary">Select </button></a><%} %></p> 
      <p class="card-text">Slot2 Name :<%=rs.getString(4)%>  ,<%=rs.getString(17) %> <%if(rs.getString(17).equals("Available")){ %> ,<a href="selectslot.jsp?id=<%=rs.getString(1)%>&&slot=<%=rs.getString(4)%>&&num=2"><button class="btn btn-primary">Select </button></a><%} %></p>
        <p class="card-text">Slot3 Name :<%=rs.getString(5)%>  ,<%=rs.getString(18) %> <%if(rs.getString(18).equals("Available")){ %> ,<a href="selectslot.jsp?id=<%=rs.getString(1)%>&&slot=<%=rs.getString(5)%>&&num=3"><button class="btn btn-primary">Select </button></a><%} %></p>   
		    <p class="card-text">Slot4 Name :<%=rs.getString(6)%>  ,<%=rs.getString(19) %> <%if(rs.getString(19).equals("Available")){ %> ,<a href="selectslot.jsp?id=<%=rs.getString(1)%>&&slot=<%=rs.getString(6)%>&&num=4"><button class="btn btn-primary">Select </button></a><%} %></p>
          
    <%} %>
     <%if(slotcount.equals("5")){   embedd.send("5");%>
     
   <p class="card-text">Slot1 Name :<%=rs.getString(3)%>  <%=rs.getString(16) %> <%if(rs.getString(16).equals("Available")){ %> ,<a href="selectslot.jsp?id=<%=rs.getString(1)%>&&slot=<%=rs.getString(3)%>&&num=1"><button class="btn btn-primary">Select </button></a><%} %></p> 
      <p class="card-text">Slot2 Name :<%=rs.getString(4)%> <%=rs.getString(17) %><%if(rs.getString(17).equals("Available")){ %> ,<a href="selectslot.jsp?id=<%=rs.getString(1)%>&&slot=<%=rs.getString(4)%>&&num=2"><button class="btn btn-primary">Select </button></a><%} %></p> 
        <p class="card-text">Slot3 Name :<%=rs.getString(5)%> <%=rs.getString(18) %><%if(rs.getString(18).equals("Available")){ %> ,<a href="selectslot.jsp?id=<%=rs.getString(1)%>&&slot=<%=rs.getString(5)%>&&num=3"><button class="btn btn-primary">Select </button></a><%} %></p>    
		 <p class="card-text">Slot4 Name :<%=rs.getString(6)%><%=rs.getString(19) %><%if(rs.getString(19).equals("Available")){ %> ,<a href="selectslot.jsp?id=<%=rs.getString(1)%>&&slot=<%=rs.getString(6)%>&&num=4"><button class="btn btn-primary">Select </button></a><%} %></p> 
            <p class="card-text">Slot5 Name :<%=rs.getString(7)%> <%=rs.getString(20) %><%if(rs.getString(20).equals("Available")){ %> ,<a href="selectslot.jsp?id=<%=rs.getString(1)%>&&slot=<%=rs.getString(7)%>&&num=5"><button class="btn btn-primary">Select </button></a><%} %></p>     
    <%} %><%-- 
     <a href="selectslot.jsp?id=<%=rs.getString(1)%>"><button class="btn btn-primary">Select </button></a> --%>
       <a href="<%=rs.getString(10)%>"><button class="btn btn-primary">View in Map </button></a>
     
    
      </div>
      </div>
      </div>

	<%} %>
	</div>
 </div></center>
 
</body>
</html>