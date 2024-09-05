<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>@import url(https://fonts.googleapis.com/css?family=Roboto:300);

.login-form {
  width: 360px;
  padding: 8% 0 0;
  margin: auto;
}

.form {
  background: rgba(2,, 5, 0.5)
  position: relative;
  z-index: 1;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
  background: rgba(2,5, 5, 0.5);
    width: 18.75rem;
    height: 30rem;
    margin: auto;
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
        
}

.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
  top:50px;
}

.form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #fc7e0f;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
  background: #43A047;
}
.form .message {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 12px;
}
.form .message a {
  color: #4CAF50;
  text-decoration: none;
}
.container {
  position: relative;
  z-index: 1;
  max-width: 500px;
  margin: 0 auto;
}
.container:before, .container:after {
  content: "";
  display: block;
  clear: both;
}
.container .info {
  margin: 50px auto;
  text-align: center;
}
.container .info h1 {
  margin: 0 200 15px;
  padding: 0;
  font-size: 36px;
  font-weight: 300;
 style="color:white";

}
.container .info span {
  color: #4d4d4d;
  font-size: 12px;
}
.container .info span a {
  color: #000000;
  text-decoration: none;
}
.container .info span .fa {
  color: #EF3B3A;
}
body {
 width: auto;
  height: 100vh;
  
  background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("images/Buyer.jpg");
  background-position: center;
  background-size: cover;
  background-repeat: no-repeat;
  backdrop-filter: opacity(80%);    
}</style>
<body>
<div class="form">
    <form action="Donorreg" method="post" class="register-form">
    <h1 style="color:white">Register</h1>
      <br />
      <input type="text" name="name" placeholder="name"/>
      <input type="text" name="email" placeholder="email address"/>
      <input type="text" name="number" placeholder="Mobile No"/>
      <input type="password" name="pass" placeholder="password"/>
      
      <button>create</button>
     
    </form>
</body>
</html>