<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Dbconn.dbconn"%>
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
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css1/bootstrap.min.css">
</head>
<style>
.mydiv{
font-size:20px;
text-decoration:none;
float:right;
}
.customers
</style>
<div class="mydiv">
<a href="chiefmainpage.jsp"><button class="btn btn-danger">Go back</button></a>
</div><br><br><br>
<body>
<% 
%>
<h1>Staff Details</h1>
<table class="table table-bordered">
  <thead>
    <tr>
    <th scope="col"> Id</th>
      <th scope="col"> Name</th>
      <th scope="col">slot1</th>
      <th scope="col"> slot2</th>
         
      <th scope="col">slot3</th>
         <th scope="col">slot4</th>
         <th scope="col">slot5</th>
         
         <th scope="col">location</th>
         <th scope="col">address</th>
    <th scope="col">pin</th>
  
    </tr>
  </thead>

       <%
       
       Connection con;
       
      
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `parkingslot`.`application` where status='Activate'");
       
       ResultSet rs=ps.executeQuery();
     
     while(rs.next())
       {
       	     	
    	String image=rs.getString(3);
    	  
    	   
       %>
 <tbody>
    <tr>
	

	
	  <%--      <td><img src="Local/<>" width="70" height="70"/></td> --%>
     
   <td> <p class="card-text"><%=rs.getString(1)%></p></td>
       

<td><p class="card-text"><%=rs.getString(2)%></p></td>
<td><p class="card-text"><%=rs.getString(3)%></p></td>
       
       <td><p class="card-text"><%=rs.getString(4)%></p></td>
       <td><p class="card-text"><%=rs.getString(5)%></p></td>
       <td><p class="card-text"><%=rs.getString(6)%></p></td>
       <td><p class="card-text"><%=rs.getString(7)%></p></td>
       <td><p class="card-text"><%=rs.getString(8)%></p></td>
       
        <td><p class="card-text"><%=rs.getString(9)%></p></td>
          <td><p class="card-text"><%=rs.getString(10)%></p></td>
    
   </tr>
   </tbody>

	<%} %>
</table>

</body>
</html>