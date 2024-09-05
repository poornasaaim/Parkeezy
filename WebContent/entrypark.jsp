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
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>input[type=text], [type=email], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: mediumpurple;
  color: white;
  padding: 12px 20px;
  border: none;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: deeppink;
}


.contactform {
  position: relative;    
  border-radius: 50px;
  background-color: #f2f2f2;
  padding: 5px;
  z-index:2;
  display: block;
  margin-left: auto;
  margin-right: auto;
  margin-bottom:auto;
  margin-top:3%;    
  width: 50%;
  animation-name: gradient;
  animation-duration: 3s;
  animation-iteration-count: infinite;  
    
}
    
.contactform:hover { 
 animation-name: gradient;
 animation-duration: 15s;
 animation-iteration-count: infinite;    
    
   
}


.column {
  float: center;
  width: 50%;
  margin-top: 6px;
  padding: 20px;
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 40%;
    
}

.row:after {
  content: "";
  display: table;
  clear: both;
}

@media screen and (max-width: 600px) {
  .column, input[type=submit] {
    width: auto;
    margin-top:0;
  }
}


@keyframes gradient {
  0%   {background-color: #D78DDB;}
  20%   {background-color: #7AF2C3;}
  40%  {background-color: #759CEC;}
  60%   {background-color: #23F2EB;}
  80%  {background-color: #F27723;}       
  100% {background-color: #AD3BD7;}
}</style>
<body>
<
<div class="contactform">
  <div style="text-align:center">
    <h1>Get In </h1>
    <p>Welcome... </p>
  </div>
  
  <%  embedd.send("8");
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
 String mail=session.getAttribute("username").toString();
 
 Connection con;
 String key="";
 String number="";
 con=dbconn.create();
 PreparedStatement ps=con.prepareStatement("SELECT * FROM `parkingslot`.`payment` where usermail='"+mail+"' and presenttime='' ");
 
 ResultSet rs=ps.executeQuery();
 
 while(rs.next())
 {
	 key=rs.getString(15);
	 number=rs.getString(16);
 %>
  <div class="row">
    <div class="column">
      <form action="verification.jsp">
        <label for="fname">Current Time</label>
        <input type="text" value="<%=time %>" id="fname" name="time" placeholder="Your name..">

        <label for="lname">Email id</label>
        <input type="text" value="<%=mail %>" id="lname" name="lastname" placeholder="Your last name.."> 

        <label for="email">Slot Name:</label>
        <input type="text" value="<%=rs.getString(8) %>" id="email" name="email" placeholder="Your Email..">
       
        <label for="lname">Location</label>
        <input type="text" value="<%=rs.getString(5) %>"  id="lname" name="lastname" placeholder="Your last name.."> 

        <label for="email">Address:</label>
        <input type="text" value="<%=rs.getString(6) %>"  id="email" name="email" placeholder="Your Email..">
        <input type="hidden" value="<%=rs.getString(15) %>"  id="email" name="pin" placeholder="Your Email..">
        <input type="hidden" value="<%=rs.getString(1) %>"  id="email" name="id" placeholder="Your Email..">
       
       <label for="email">To Track:</label>
       <a href="<%=rs.getString(7)%>">Track Location</a><br></br>
<%if(id.equals("@A")||thumb.equals("@A")){ %>
        <label for="subject"></label>
         <button type="submit" value="Submit">Submit</button>
      </form>
    </div>
  </div>
</div><%}}Thread.sleep(3000);
 
 embedd.send(number); %>
        </form>  
</body>
</html>