<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="ofo.bl.*,ofo.dto.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>name password adding process</title>
</head>
<body>
<%! 
	String username,password,confirm_password;
	UserDTO user;
	int result;
%>
<%
	username = request.getParameter("uname");
	password = request.getParameter("pass");
	confirm_password = request.getParameter("cpass");
	if(password.equals(confirm_password))
	{
		user = new UserDTO();
		user.setUsername(username);
		user.setPassword(password);
		result= UserBL.addUser(user);
		if(result>0)
		{
			session.setAttribute("success","Username and Password Updated Successfully");
			response.sendRedirect("login.jsp");
		}
		else
		{
			session.setAttribute("success","Username and password adding failed");
			response.sendRedirect("login.jsp");
		}
		
	}
	
	else
	{
		session.setAttribute("success","Passwords do not match");
		response.sendRedirect("username_password.jsp");
	}

%>

</body>
</html>