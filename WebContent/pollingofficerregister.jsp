<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="embed.embedd" %>
 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
 <%@page import="jssc.SerialPort" %>

<%@page import="jssc.SerialPortException" %>
<%@page import="jssc.SerialPortList" %>
<%@page import="jssc.SerialPortEvent" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">body {
  font-family: system-ui;
background:black;
  color: white;
  text-align: center;
}
input {
  padding:10px 20px;
  margin: 10px 0;
}
span.required {
  color:red;
  font-size:20px;
}
#button {
  background:#173b54;
  border:none;
  color:white;
  box-shadow:0px 0px 6px 1px #bdc1c3fa;
  outline:none;
  padding:10px 20px;
  border-radius:10px;
  position: relative;
  animation:pulse 3s infinite ease-out;
}
a{
  color:#06aee4;
}


@keyframes pulse {
  from {
    box-shadow:0px 0px 6px 0px #bdc1c3fa;
  }
  to {
    box-shadow:0px 0px 6px 5px #bdc1c3fa;
  }
}</style>
</head>
<body>
<%-- <%
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
	       }}%> --%>
<!-- <script>

function passwordVerify() {
  pass1 = document.getElementById("password1").value;
  pass2 = document.getElementById("password2").value;
  emri = document.getElementById("name").value;
  username = document.getElementById("username").value;
  email = document.getElementById("email").value;
  if (emri == ""){
     alert("Name can not be blank");
  }
  else if (username == ""){
     alert("Username can not be blank");
  }
  else if (email == ""){
     alert("Email can not be blank ");
  }
  else if(pass1 == "") {
  alert("Enter password");
}
else if (pass2 == "") {
  alert("Enter password ");
}
  else if (pass1 != pass2){
    alert("Paswword should match!!!")
  }
  
  
 
  else {
  alert("Welcome :)");
   window.open("https://codepen.io/anxhi/pen/NWdwOjQ");
  }
}
</script> -->
<h1> Welcome to our page </h1>
<p> If you don't have an account please register...</p>
<h2> Fill in the fields! </h2>

<form action="pollingofficerregistration" method="post">
<div> 
 


 <input type="text" placeholder="Enter your name" name="name"> <span class="required"> *</span> </br>
<input type="text" placeholder="Enter your Mobile number" name="username"> <span class="required"> *</span> </br>
<input type="email" placeholder="Enter your email" name="email"> <span class="required"> *</span> </br>
<input type="text" placeholder="Vehicle type"  name="vehicle"> <span class="required"> *</span><!-- <input type="button" style="margin-right:-70px;" onclick="location.reload();" value="load"> --> </br>
<input type="text" placeholder="Vehicle number" name="number"> <span class="required"> *</span> <!-- <input type="button" onclick="location.reload();" style="margin-right:-70px;" value="load"> --></br>

<input type="password" placeholder="Enter your password" name="password1"> <span class="required"> *</span> </br> 
<input type="password" placeholder="Retype your password" name="password2"> <span class="required"> *</span> </br>

<button  type="submit" class="btn-success" id="button"> Sign Up </button>
</div>
</form>
<!-- <p>If you have an account click <a href="https://codepen.io/anxhi/pen/NWdwOjQ"> here </a> to login. </p> -->
</body>
</html>