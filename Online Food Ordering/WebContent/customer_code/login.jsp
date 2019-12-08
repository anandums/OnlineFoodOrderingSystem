<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<%! String success; %>
<% success = (String)session.getAttribute("success"); %>
<h1 class="jumbotron bg-dark text-white" align="center">LOGIN</h1>
<div class="container">
	<div class="form-group">
		<label>Username</label>
		<input type="text" name="uname" class="form-control" required>
	</div>
	
	<div class="form-group">
		<label>Password</label>
		<input type="password" name="pass" class="form-control" required>
	</div>
	
	<div class="form-group">
		<label></label>
		<button type="submit" name="login" class="form-control btn-outline-primary" >Login</button>
		<span style="color:red;"><%= success %></span>
	</div>

</div>
</body>
</html>