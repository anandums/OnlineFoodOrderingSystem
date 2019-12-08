<%@ page import="ofo.bl.*,ofo.dl.*,ofo.dto.*,java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!doctype html>

<html>
<head>
<meta charset="UTF-8">
<title>Untitled Document</title>
</head>

<body>
<table width="100%" height="688" border="0">
  <tbody>
    <tr>
      <td height="684" align="center" valign="top"><table width="100%" border="0">
        <tbody>
          <tr>
            <td height="138" align="center" valign="middle" bgcolor="lightblue"><h1 style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif; font-size: xx-large;">Customer Information</h1></td>
          </tr>
          
         
                <tr>
                  <td height="33" align="center" valign="middle">view page</td>
                </tr>
                
                <tr>
                  <td height="33" align="center" valign="middle" style="font-family: Cambria, 'Hoefler Text', 'Liberation Serif', Times, 'Times New Roman', serif; font-weight: bold; font-size: large;">Customer Information</td>
                
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle" style="color: #F70509">
                  
                  

                <%
                if(session.getAttribute("message")!=null)
                {
                	out.println((String)session.getAttribute("message"));
                	session.removeAttribute("message");
                }
                %>
                                  </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle">
					  <form id="form1" name="form1" method="post">
					  <%
					  ArrayList<CustomerDTO> customers=CustomerBL.getCustomers();
					  if(customers !=null&&(customers.size())>0)
					  {
					  %>
					    <table width="80%" border="1" align="center" bordercolor="brown" borde>
					      <tbody style="">
					        <tr>
					          <td width="11%" height="33" align="center" valign="middle" bgcolor="pink" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Customer ID</td>
					          <td width="16%" align="center" valign="middle" bgcolor="pink"><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Customer Name </span></td>
					          <td width="12%" align="center" valign="middle" bgcolor="pink"><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">email</span></td>
					          <td width="12%" align="center" valign="middle" bgcolor="pink" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">mobile</td>
					          <td width="11%" align="center" valign="middle" bgcolor="pink"><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">address</span></td>
					          <td width="20%" align="center" valign="middle" bgcolor="pink"><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">gender</span></td>
					          <td width="18%" align="center" valign="middle" bgcolor="pink"><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">DOB</span></td>
					         
					          <td width="18%" align="center" valign="middle" bgcolor="pink"><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Delete</span></td>
					          <td width="18%" align="center" valign="middle" bgcolor="pink"><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Edit</span></td>
					             
					          </tr>
					          <%
					          for(CustomerDTO customer:customers)
					          {
					          %>
					        <tr>
					          <td height="30"><%=customer.getCustomer_id() %></td>
					          <td><%=customer.getCustomer_name() %></td>
					          <td><%=customer.getEmail() %></td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif"><%=customer.getMobile() %></td>
					          <td><%=customer.getAddress() %></td>
					          <td><%=customer.getGender() %></td>
					          <td><%=customer.getDate_of_birth() %></td>
					      
					           <td><a href="customer_delete.jsp?customer_id=<%=customer.getCustomer_id()%>">Delete</a></td>
					          <td><a href="customer_edit.jsp?customer_id=<%=customer.getCustomer_id()%>">Edit</a></td>
					          
					          </tr>
					          <%
					          }
					     }
					      else
					     {
					          %>
					          <tr>
					          <td colspan="7">no customer details found</td>
					          </tr>
					          <%} %>
	</tbody>				       
					       
	</tbody>				      
  
  </tbody>
  </form>
</table>
</body>
</html>
