<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Transparent Login</title>
  <style>
  body {
  margin: 0;
  padding: 0;
  font-family: sans-serif;
  background: url("https://i.ytimg.com/vi/kU-4z_2m-kg/maxresdefault.jpg")
    no-repeat;
  background-size: cover;
}

.box {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 400px;
  padding: 40px;
  background: rgba(0, 0, 0, 0.8);
  box-sizing: border-box;
  box-shadow: 0 15px 25px rgba(0, 0, 0, 0.5);
  border-radius: 10px;
}

.box h2 {
  margin: 0 0 30px;
  padding: 0;
  color: #fff;
  text-align: center;
}

.box .inputBox {
  position: relative;
}

.box .inputBox input {
  width: 100%;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  letter-spacing: 2px;
  margin-bottom: 30px;
  border: none;
  border-bottom: 1px solid #fff;
  outline: none;
  background: transparent;
}

.box .inputBox label {
  position: absolute;
  top: 0;
  left: 0;
  letter-spacing: 2px;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  pointer-events: none;
  transition: 0.5s;
}

.box .inputBox input:focus ~ label,
.box .inputBox input:valid ~ label {
  top: -25px;
  left: 0;
  color: #03a9f4;
  font-size: 12px;
}

.box input[type="submit"] {
  background: transparent;
  border: none;
  outline: none;
  color: #fff;
  background: #03a9f4;
  padding: 10px 20px;
  cursor: pointer;
  border-radius: 5px;
}</style>
</head>

<body>
  <div class="box">
    <h2>Login</h2>
    <form action="chiefofficerlogin" method="post">
      <div class="inputBox">
        <input type="text" name="name" required>
        <label>Username</label>
      </div>
      <div class="inputBox">
        <input type="text" name="pass" required>
        <label>Password</label>
      </div>
      <input type="submit" value="Submit">
    </form>
  </div>
</body>

</html>