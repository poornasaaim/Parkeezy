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
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>

</head>
<style>
.mydiv{
font-size:20px;
text-decoration:none;
float:right;
}
body{
width:90%;
margin-left:20px;
}
</style>
<div class="mydiv">
<button class="btn btn-danger" onclick="history.back()">Go back</button></a>
</div><br><br><br>
<body >
<form action="roomdepartdivisor.jsp" ng-app="">
<div class="choose" style="margin-left:20px;">
<h3>Choose Location:</h3></br>

Location: <input type="checkbox" value="room" name="room" ng-model="myVar">   <!-- Department:<input type="checkbox" value="depart" name="room" ng-model="myV">
<div style="padding:20px;" ng-show="myV">
<input type="text" placeholder="Enter the Department Name" name="departname" ><br></br>
<input type="text" placeholder="Enter the Program" name="progname" ><br></br>
<input type="text" placeholder="Enter the Year" name="year" ><br></br>
<input type="text" placeholder="Enter the class" name="classname" ><br></br>
<input type="submit"  value="submit" >
</div> -->
<div ng-show="myVar">
<input type="text" placeholder="Enter the Location" name="roomnum" >
<input type="submit"  value="submit" >
<h1></h1>
</div>
</div>
<%
String no=session.getAttribute("no").toString();
if(no.equals("2")){
	String b=session.getAttribute("deprom").toString();
System.out.println(b);
if(b.equals("room")){
	String roomnum=session.getAttribute("roomnum").toString();
	
%>
</br></br>
<h1>Parking Slot</h1></br>
<h3>Location: <%=roomnum.toUpperCase() %></h3>
        </br>
<table class="table table-bordered">
  <thead>
    <tr>
    
      <th scope="col">ID</th>
      <th scope="col">LOCATION</th>
      <th scope="col">PARKING SLOT NAME</th>
         <th scope="col">SLOT COUNT</th>
         <th scope="col">ADDRESS</th>
        <th scope="col">REMARK</th>
       
    </tr>
  </thead>

       <%
       
       Connection con;
       
      
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `parkingslot`.`application` where location LIKE '%"+roomnum+"%' ");
       
       ResultSet rs=ps.executeQuery();
     
     while(rs.next())
       {
       	     	
    	String image=rs.getString(3);
    	  
    	   
       %>
 <tbody>
    <tr>
	

	
	  <%--      <td><img src="Local/<>" width="70" height="70"/></td> --%>
     
   <td> <p class="card-text"><%=rs.getString(1)%></p></td>
       

<td><p class="card-text"><%=rs.getString(8)%></p></td>
<td><p class="card-text"><%=rs.getString(2)%></p></td>
       
       <td><p class="card-text"><%=rs.getString(15)%></p></td>
       <td><p class="card-text"><%=rs.getString(9)%></p></td>
       <td><a href="slotview.jsp?id=<%=rs.getString(1)%>"> View<i class='fa fa-trash-alt'></i></a></td>
   
 
   </tr>
   </tbody>

	<%}}}%>
	
	
</table>
</form>
</body>
</html>