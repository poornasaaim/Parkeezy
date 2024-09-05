<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Dbconn.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="embed.embedd" %>
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
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<style>
.mydiv{
font-size:20px;
text-decoration:none;
float:right;
}
body{
width:90%;
margin-left:120px;
}
.table{
float:right;
margin-right:-600px;
margin-top:-350px;
}
.card{
border:none;
}
</style>
<div class="mydiv">
<button class="btn btn-danger" onclick="history.back()">Go back</button></a>
</div><br><br><br>
<body >
<%
 		
embedd ab=new embedd();
ab.connect(); 
	
	
	 embedd a=new embedd();

      String c=a.r;	 System.out.println("ans is"+c);
      String id="";
      String thumb="";
      if(c.contains("null")){
   	String m[]=c.split("null");
      for(String i: m){
   		if(m.length==1){
   		id=i;
   		}
   		else if(m.length==2){
   			id=m[0];
   			thumb=m[1];
   		}
   		else if(m.length>=2){
   			for(int j=0;j<m.length-3;j++){
   				
   			}
   			id=m[m.length-2];
   			thumb=m[m.length-1];
   		}
      }}
      
      
      else{
   	String m[]=c.split("");
      for(String i: m){
   		if(m.length==1){
   		id=i;
   		}
   		else if(m.length==2){
   			id=m[0];
   			thumb=m[1];
   		}
   		else if(m.length>=2){
   			for(int j=0;j<m.length-3;j++){
   				
   			}
   			id=m[m.length-2];
   			thumb=m[m.length-1];
   		}
      }}%>
<form action="votingdivisor.jsp" ng-app="">
<div class="choose" style="margin-left:20px;">
<h3>VOTERS DETAILS AND VERIFICATION</h3></br>

  Voter Id :
<div style="padding:10px;" >
<input type="password" placeholder="Scan Your Voter Id " value="<%=id %>" name="voteid" ><br></br>
</div>
 Voter Thumb:
 <div style="padding:10px;" >	
<input type="password" placeholder="Place Your Thumb" value="<%=thumb %>"  name="thumb" ><br></br>

<input type="submit"  value="submit" >
</div>

<%String an=session.getAttribute("tovote").toString();%>
<%if(an.equals("hell")){ %>
<%String thumbid=session.getAttribute("thumbid").toString();%>
<%String voteid=session.getAttribute("voteid").toString();%>
</br></br>
<div class="table">

<h3>VOTERS DETAILS</h3>
        
		<!-- <table class="table table-bordered">
		  <thead>
		    <tr>
		    
		      <th scope="col">Period1(8.30-9.20)</th>
		      <th scope="col"> Period2(9.20-10.10)</th>
		      <th scope="col">Period3(10.10-11.00)</th>
		         <th scope="col">Period4(11.00-11.50)</th>
		         <th scope="col">Period5(11.50 - 12.40)</th>
		         <th scope="col">Period6(12.40 - 01.30)</th>
		         <th scope="col">Period7(01.30 - 02.15)</th>
		         <th scope="col">Period8(02.15 - 03:00)</th>
		         <th scope="col">Period9(03:00 - 03:45)</th>
		       
		    </tr>
		  </thead> -->

       <%
       
       Connection con;
       
      
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `jevoting`.`votinglist` where thumb='"+thumbid+"' and voterid='"+voteid+"'	"  );
       
       ResultSet rs=ps.executeQuery();
     
     while(rs.next())
       {
       	     	
    	String image=rs.getString(4);
    	  System.out.println(image);
    	   
       %>
 <div class="col-md-4">
<div class="card">
	

	  <div class="card-body">
	 
	  <p class="card-text"><img class="card-img-top" src="product/<%=image%>" width="-20" height="100" alt="Card image cap"></p>
	  <p class="card-text" ><b>Voter Name </b>      :<%=rs.getString(2)%></p>    
   <p class="card-text"><b> Voter Email ID	</b>				: <%=rs.getString(3)%></p>
      <p class="card-text"><b> Vote ID</b>: <%=rs.getString(6)%></p>
         <p class="card-text"><b> Thumb ID</b>: <%=rs.getString(7	)%></p>
    <p class="card-text"><b>Aadhar Number</b>:<%=rs.getString(8)%></p>
    <p class="card-text"><b>Address</b>:<%=rs.getString(9)%></p>
    <p class="card-text"><b>Booth Name</b> :<%=rs.getString(11)%></p>
    <p class="card-text"><b>Booth Id</b> :<%=rs.getString(12)%></p>
    <p class="card-text"><b>Location </b>:<%=rs.getString(13)%></p>
         <p class="card-text"><b>Status</b> :<%=rs.getString(10)%></p>
<%if(rs.getString(10).equals("yettovote")){ %>
     
    <a href="vote.jsp?id=<%=rs.getString(1)%>&&cd=<%=1 %>"> Accept to Vote<i class='fa fa-trash-alt'></i></a>
     <%}else{ %>
 <a href="vote.jsp?id=<%=rs.getString(1) %>&&cd=<%=2 %>"><span style="color:red;	">Decline</span><i class='fa fa-trash-alt'></i></a>
    <%} %>
      </div>
      </div>
      </div>
      </div>
	<%}%>
	<a href="vote.jsp?cd=<%=3 %>"><span style="color:red;	">Decline</span><i class='fa fa-trash-alt'></i></a>
  
     <%}%>
	
	
</table>
</form>
</body>
</html>