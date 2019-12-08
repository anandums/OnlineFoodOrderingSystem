<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="ofo.dto.*,ofo.bl.*,ofo.dl.*,ofo.utilities.*"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>customer edit</title>



</head>

<body>
<table width="100%" height="688" border="0">
  <tbody>
    <tr>
      <td height="684" align="center" valign="top"><table width="100%" border="0">
        <tbody>
          <tr>
            <td height="138" align="center" valign="middle" bgcolor="lightblue"><h1 style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif; font-size: xx-large;">Customer Information </h1></td>
          </tr>
          <tr>
            <td height="530" align="center" valign="top"><table width="100%" border="0">
              <tbody>
                <tr>
                  <td height="33" align="center" valign="middle">
 			
                  
                  
                  </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle" style="font-family: Cambria, 'Hoefler Text', 'Liberation Serif', Times, 'Times New Roman', serif; font-weight: bold; font-size: large;">Customer Edit</td>
                </tr>
                <tr>
                   
                  <td height="33" align="center" valign="middle" style="color: #F70509">
                  <%! String message="" ;
                  String customer_id;
                  int result;
                  CustomerDTO customer=null;
                  %>
                  
                  </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle">
                  <%
                  
                  %>
					  <form  method="post" action="customer_details_edit.jsp" >
					  <%
              
                	   
                	   customer_id=request.getParameter("customer_id");
                	   customer=CustomerBL.getCustomer(customer_id);
                	   result=CustomerDL.updateCustomer(customer);
                	  %>
					    <table width="100%" border="0">
					      <tbody>
					        <tr>
					          <td width="11%" height="30">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          <td width="17%" align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Customer ID</td>
					          <td width="1%">&nbsp;</td>
					          <td width="16%" align="left" valign="middle">
					            <input type="text" name="txtCustomerId"  value='<%=customer.getCustomer_id()%>'readOnly="true" ></td>
					    
					          </td>
					          <td width="2%">&nbsp;</td>
					          <td width="2%">
					          &nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Customer Name					          </td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" name="txtCustomerName" id="txtCustomerName" value='<%=customer.getCustomer_name()%>'></td>
					          
					          </td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">City				          </td>
					          <td>&nbsp;</td>
         				       <td align="left" valign="middle"><input type="text" name="txtEmail" id="txtEmail" value='<%=customer.getEmail()%>'></td>
					         
					          </td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Item1</td>
					          <td>&nbsp;</td>
					            <td align="left" valign="middle"><input type="text" name="txtMobile" id="txtMobile" value='<%=customer.getMobile()%>'></td>
					          
					          
					          </td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Price1</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" name="txtAddress" id="txtAddress" value='<%=customer.getAddress()%>'></td>
					          
					          </td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					           <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Item2</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" name="txtGender" id="txtGender" value='<%=customer.getGender()%>'></td>
					          
					          </td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					           <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Price2</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" name="txtDateOfBirth" id="txtDateOfBirth" value='<%=customer.getDate_of_birth()%>'></td>
					          
					          </td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="submit" name="submit" id="submit" value="UPDATE"></td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					        </tbody>
					      </table>
						  
						  
                      </form></td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle">&nbsp;</td>
                </tr>
              </tbody>
            </table></td>
          </tr>
          <tr>
            <td align="center" valign="top"><table width="100%" border="0">
              <tbody>
                <tr>
                  <td align="center" valign="middle" bgcolor="#000000">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center" valign="middle" bgcolor="lightgreen">customer information form</td>
                </tr>
              </tbody>
            </table></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
  </tbody>
</table>
</body>
</html>
