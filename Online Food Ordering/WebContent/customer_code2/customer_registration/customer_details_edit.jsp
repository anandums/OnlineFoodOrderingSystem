<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"% import="ofo.dto.*,ofo.bl.*,ofo.dl.*" %>
<%   

   String customer_id,customer_name,email,mobile,address,gender,date_of_birth;
   int result=0;
   CustomerDTO customer=null;
   %>
   <%
   try
   {
	   customer_id=request.getParameter("txtCustomerId");
	   customer_name= request.getParameter("txtCustomerName");
	   email=request.getParameter("txtEmail");
	   mobile= request.getParameter("txtMobile");
	   address=request.getParameter("txtAddress");
	   gender= request.getParameter("txtGender");
	   date_of_birth=request.getParameter("txtDateOfBirth");
	   
	   
	   customer=new CustomerDTO();
	   customer.setCustomer_id(customer_id);
	   customer.setCustomer_name(customer_name);
	   customer.setEmail(email);
	   customer.setMobile(mobile);
	   customer.setAddress(address);
	   customer.setGender(gender);
	   customer.setDate_of_birth(date_of_birth);
	   
	   result=CustomerBL.updateCustomer(customer);
	   
	   if(result>0)
	   {
	   	session.setAttribute("message", "customer details updated successfully");
	   	
	   }
	   else
	   {
	   	session.setAttribute("message", "retry");
	   }
	   response.sendRedirect("customer_view.jsp");
   }
	   catch(Exception e)
	   {
	   	System.out.println("** Error** Customer:customer_add_process.jsp");
	   	response.sendRedirect("customer_add.jsp");
	   }
   
	  
	   
   
  
   %>
   