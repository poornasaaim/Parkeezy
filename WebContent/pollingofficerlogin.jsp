<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Roboto&display=swap');

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  min-height: 100vh;
  width: 100%;
  display: flex;
  font-family: 'Roboto', sans-serif;
  align-items: center;
  justify-content: center;
  background-color: #ecf0f3;
}

h2 {
  text-align: center;
  color: #239df9;
}

form {
  width: min(90vw, 400px);
  height: auto;
  padding: 40px;
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 30px;
  border-radius: 20px;
  box-shadow: -10px -10px 15px #ffffff,
    8px 8px 25px #97a7c3;
}

form input[type="text"],
form input[type="password"] {
  all: unset;
  width: 100%;
  height: 50px;
  padding: 0px 20px;
  border-radius: 50px;
  caret-color: #239df9;
  box-shadow: inset -5px -5px 10px #ffffff,
    inset 4px 4px 10px #97a7c3;
}

button {
  all: unset;
  width: 50%;
  cursor: pointer;
  user-select: none;
  height: 50px;
  text-align: center;
  font-weight: bolder;
  letter-spacing: 1px;
  text-transform: uppercase;
  color: #ecf0f3;
  background: #239df9;
  border-radius: 50px;
  box-shadow: -5px -5px 15px #ffffff,
    5px 5px 25px #97a7c3;
}

button:active {
  box-shadow: inset -5px -5px 10px #239df933,
    inset 5px 5px 15px #00000088;
}</style>
</head>
<body>
<form action="pollingofficerlogin" method="post" >
  <h2> Login Page</h2>
<!--   <i class="fa-regular fa-user"></i> -->
  <input type="text" name="username" placeholder="Username" />
<!--   <i class="fa-regular fa-eye-slash"></i> -->
  <input type="password" name="password" placeholder="Password" />
  <button type="submit" ><i class="fa-solid fa-arrow-right-to-bracket"></i>&nbsp;Login</button>
   <a href="pollingofficerregister.jsp">New User SignUp Here...</a>
 </form>


</body>
</html>