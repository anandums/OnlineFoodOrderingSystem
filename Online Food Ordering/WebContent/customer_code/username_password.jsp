<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Set Username and Password</title>
</head>
<body>
<%! String success; %>
<% success = (String)session.getAttribute("success"); %>

<h1 class="jumbotron bg-success text-white" align="center">SET USERNAME AND PASSWORD</h1>

<div class="container">
	<form method="post" action="name_pass_add_process.jsp">
	<div class="form-group">
		<label>Enter Username</label>
		<input type="text" name="uname" class="form-control" required>
	</div>
	
	<div class="form-group">
		<label>Enter Password</label>
		<input type="password" name="pass" class="form-control" required>
	</div>
	
	<div class="form-group">
		<label>Confirm Password</label>
		<input type="text" name="cpass" class="form-control" required>
	</div>
	
	<div class="form-group">
		<label></label>
		<button type="submit" name="submit" class="form-control btn-outline-primary" >Submit</button>
		<span style="color:red;"><%= success %></span>
	</div>
	</form>
</div>

	

</body>
</html>