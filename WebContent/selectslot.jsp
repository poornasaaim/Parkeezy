<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.Date" %>
<%@page import="java.util.*" %>
<%@page import="java.io.FileInputStream" %>
<%@page import="java.io.IOException" %>
<%@page import="java.io.PrintWriter" %>
    <%@page import="java.util.*" %>
          <%@page import="embed.*"%>
               <%@page import="Dbconn.dbconn"%>
              <%@page import ="java.text.SimpleDateFormat"%>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href=css1/bootstrap.min.css>
<title>Insert title here</title>

<style>

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  /* background-color: #ff0000; */
  background-image: linear-gradient(to right, orange , blue,green);
}

li {
  float: right;
  padding-right:95px;
}

li a {
  display: block;
  color: white;
  text-align: center;
  text-style:bold;
  padding: 14px 16px;
  text-decoration: none;
}

.myDiv2 {
  font-size:25px;  
  font-style: bold;
font-weight: bold;
color:red; 
 margin: 26px 38px 19px 77px;
}
}

table {
  
  width: 30%;
}
td {
  height: 60px;
   text-align: center;
}

#categ{
width:100px;
height:30px;
border-radius:2px;

}

.backtag{
padding: 10px 20px;
  text-align: center;
float:right;
margin-right:50px;
font-size:20px;
/* background-color: #ff89ff; */
text-color: white;
  text-decoration: none;
  border-radius:8px;
}

select{
 align-items: center;
 justify-content: center;
}


</style>


</head>

<% 
String ids=request.getParameter("id");
String slot=request.getParameter("slot");
String num=request.getParameter("num");
session.setAttribute("num", num);
embedd.send(num);
embedd ab=new embedd();
ab.connect(); 


embedd a=new embedd();

  String c=a.r;	 System.out.println("ans is"+c);
  String id="";
  String thumb="";
  if(c.contains("null")){
	String m[]=c.split("null");
	System.out.println("removed null data"+m[0]);
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
			System.out.println("removed null data"+id+"fj");
			thumb=m[m.length-1];
		}
  }}
  
  
  else{
	String m[]=c.split("@");
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
			System.out.println(id);
			thumb=m[m.length-1];
			System.out.println("hi"+thumb);
		}
  }} 
  
  
  SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
  Date date = new Date();  
  System.out.println(formatter.format(date));  
 String time=formatter.format(date);
  Connection con;
       
       
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `parkingslot`.`application` where id='"+ids+"' ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	  %>
<body>
<div class="backtag">
<button onclick="history.back();" class="btn btn-primary" >Back</button>
</div>


<br><br>
<center>
<div class="myDiv2">
SHARE FROM TEAMMEMBER 
</div>




<br><br>
<form action="payment.jsp" method="post" >

<table class="table table-bordered">
<input type="hidden" name="id" value=<%=ids %> placeholder=" Title" style="width:280px;height:40px;border-radius: 1px;text-align:center;" required><br>

 <tr>
<td><b>Current Time:</b></td>
<td><input type="text" name="time" value=<%=time %> placeholder=" Title" style="width:280px;height:40px;border-radius: 1px;text-align:center;" required><br></td>
</tr>
 <tr>
<td><b>Parking Name</b></td>
<td><input type="text" name="pname" value=<%=rs.getString(2) %> placeholder=" Title" style="width:280px;height:40px;border-radius: 1px;text-align:center;" required><br></td>
</tr> 

 <tr>
<td><b>Location</b></td>
<td><input type="text" name="location" value=<%=rs.getString(8) %> placeholder=" Description" style="width:280px;height:40px;border-radius: 1px;text-align:center;"><br></td>
</tr> 

 <tr>
<td><b>Address</b></td>
<td><input type="show" name="address" value=<%=rs.getString(9) %> placeholder=" Description" style="width:280px;height:40px;border-radius: 1px;text-align:center;"></td>
</tr> 

 <tr>
<td><b>Pin</b></td>
<td><input type="show" name="pin" value=<%=rs.getString(10) %> placeholder=" Description" style="width:280px;height:40px;border-radius: 1px;text-align:center;"></td>
</tr> 

<tr>
<td><b>Slot</b></td>
<td><input type="text"  value=<%=slot %> name="slot" style="width:280px;height:40px;text-align:center;"><br><br></td>
</tr>

<tr>
<td><b>Cost</b></td>
<td><input type="text"  value="<%=rs.getString(12) %>" name="cost" style="width:280px;height:40px;text-align:center;"><br><br></td>
</tr>
 <%if(id.equals("@B")||(thumb.equals("@B"))) {%> 
<tr>
<td colspan="2"><input type="submit" value="Submit" style="width:180px;height:40px;border-radius: 1px;background-color: #00ccff;margin-left:50dp; text-align: center;"><br><br></td>
</tr>

</table>
</form>

</center>
<%}} %>
</body>
</html>