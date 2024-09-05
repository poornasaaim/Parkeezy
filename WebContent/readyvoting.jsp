	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page import="embed.*" %>
             <%@page import="Bean.*" %>
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
<style>
/* Declare variables */
:root {
  --main-color: black;
}
/* import google fonts */
@import url(https://fonts.googleapis.com/css?family=Roboto:400,300,600,400italic);
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
/* body styling */
body {
  font-family: "Roboto", Helvetica, Arial, sans-serif;
  font-weight: 100;
  font-size: 12px;
  line-height: 30px;
  background-color: var(--main-color);
  color: var(--main-color);
}
/* container styling */
.container {
  max-width: 400px;
  width: 90%;
  margin: 0 auto;
  position: relative;
}
/* input styling */
#form button[type="submit"],
#form input[type="email"] {
  font: 400 12px/16px "Roboto", Helvetica, Arial, sans-serif;
}
#form input[type="text"] {
  width: 100%;
  border: 1px solid var(--main-color);
  background: #FFF;
  margin: 0 0 5px;
  padding: 10px;
  outline: none;
}
#form button[type="submit"] {
  cursor: pointer;
  width: 100%;
  border: none;
  background: var(--main-color);
  color: #FFF;
  margin: 0 0 5px;
  margin-top: 10px;
  padding: 10px;
  font-size: 15px;
  text-transform: capitalize;
}
/* form styling */
#form {
  background: #F9F9F9;
  padding: 25px;
  margin: 150px 0;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
  border-radius: 10px;
}
#form h3 {
  font-size: 30px;
  font-weight: 300;
  margin-bottom: 10px;
  text-align: center;
  text-transform: uppercase;
}
/* fieldset styling */
fieldset {
  border: none;
  margin: 0 0 10px;
  min-width: 100%;
  padding: 0;
  width: 100%;
}
/* attribution styling */
.copyright {
  text-align: center;
}
.copyright a {
  color: white;
  background-color: var(--main-color);
  padding: 4px;
  text-transform: capitalize;
}
.follow a {
    color: var(--main-color);
    border: 1px solid var(--main-color);
    background: transparent;
}</style>
</head>
<body>
<%
 		String ad=session.getAttribute("selectedid").toString();
embedd ab=new embedd();
ab.connect(); 
	
	
	 embedd a=new embedd();

      String c=a.r;	 
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
   				
   			
   			id=m[m.length-2];
   			thumb=m[m.length-1];
   		}}
      }}%>
<!-- container -->
    <div class="container">
      <!-- form -->
      <form id="form" action="voted.jsp" method="" >
        <!-- form heading -->
        <h3>VOTE HERE</h3>
        <!-- form inputs -->
        <fieldset>
            <label for="phone">Voting process:</label>
            <input type="password" name="id" value="<%=id%>" id="email" required>
             <input type="hidden" name="hd" value="<%=ad%>" id="email" required>
        </fieldset>
       
          <button value="submit" type="submit" id="submit">Activate</button>
    </form>
</body>
</html>