package ofo.dl;
import ofo.dto.*;
import java.sql.*;
import java.util.ArrayList;
public class CustomerDL {
	
	public static int addCustomer(CustomerDTO customer)
	{
		int result=0;
		Connection con;
		PreparedStatement ps;
		try
		{
			con = DBHelper.getConnection();
			String query = "INSERT INTO customer_details2 VALUES(?,?,?,?,?,?,?)";
			ps=con.prepareStatement(query);
			ps.setString(1, customer.getCustomer_id());
			ps.setString(2, customer.getCustomer_name());
			ps.setString(3, customer.getEmail());
			ps.setString(4, customer.getMobile());
			ps.setString(5, customer.getAddress());
			ps.setString(6, customer.getGender());
			ps.setString(7, customer.getDate_of_birth());
			result = ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("***Error*** at CustomerDL.addBook()"+e.getMessage());
		}
		
		return result;
	}
	
	public static String IdRetriever()
	{
		Connection con;
		Statement st=null;
		ResultSet rs = null;
		int result=0;
		
		String customer_id=new String();
		try
		{
			con = DBHelper.getConnection();
			String sql = "SELECT customer_id FROM customer_details2 ORDER BY customer_id DESC";
			st = con.createStatement();
			rs = st.executeQuery(sql);
			if(rs.next())
			{
				customer_id = rs.getString(1);
			}
			else
				customer_id=null;
			
			
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("***Error*** at CustomerDL.IdRetriever()"+e.getMessage());
		}
		
		return customer_id;
	}
	
	public static int updateCustomer(CustomerDTO customer)
	{
		
		int result=0;
		String query;
		PreparedStatement ps=null;
		Connection con;
		

		try
		{
			con = DBHelper.getConnection();
			query = "UPDATE customer_details2 SET customer_name=?,email=?,mobile=?,address=?,gender=?,date_of_birth=? WHERE customer_id=?";
			ps=con.prepareStatement(query);
			ps.setString(1,customer.getCustomer_name());
			ps.setString(2, customer.getEmail());
			ps.setString(3, customer.getMobile());
			ps.setString(4,customer.getAddress());
			ps.setString(5,customer.getGender());
			ps.setString(6,customer.getDate_of_birth());
			ps.setString(7,customer.getCustomer_id());
		
			 result = ps.executeUpdate();
		}
		catch(Exception e) 
		{
			System.out.println("**Error** : CustomerDL.updateCustomer "+e.getMessage());
		}
		return result;
		}
	
	public static CustomerDTO getCustomer(String customer_id)
	{
		ArrayList<CustomerDTO> customers=null;
		CustomerDTO customer = null;
		Connection con=null;
			Statement statement= null;
			ResultSet resultset=null;

			try
			{
				customers=new ArrayList<CustomerDTO>();
				
				String sql="SELECT * FROM customer_details2 WHERE CUSTOMER_ID="+customer_id;
				con=DBHelper.getConnection();
				statement=con.createStatement();
				resultset=statement.executeQuery(sql);
				if(resultset.next())
					{
					customer= new CustomerDTO();
					customer.setCustomer_id(resultset.getString("customer_id"));
					customer.setCustomer_name(resultset.getString("customer_name"));
					customer.setEmail(resultset.getString("email"));
					customer.setMobile(resultset.getString("mobile"));
					customer.setAddress(resultset.getString("address"));
					customer.setGender(resultset.getString("gender"));
					customer.setDate_of_birth(resultset.getString("date_of_birth"));
					
					customers.add(customer);
					}
		}
		catch(Exception e) 
		{
			System.out.println("**Error** : CustomerDL.getCustomer "+e.getMessage());
			
		}
		
			return customer;
		
	}
	
	public static ArrayList<CustomerDTO> getCustomers()
	{
		ArrayList<CustomerDTO> customers=null;
		Connection con=null;
		Statement statement= null;
		ResultSet resultset=null;
		CustomerDTO customer=null;
		try
		{
			customers=new ArrayList<CustomerDTO>();
			String sql="SELECT * FROM customer_details2 ORDER BY CUSTOMER_ID DESC";
			con=DBHelper.getConnection();
			statement=con.createStatement();
			resultset=statement.executeQuery(sql);
			while(resultset.next())
				{
				customer= new CustomerDTO();
				customer.setCustomer_id(resultset.getString("customer_id"));
				customer.setCustomer_name(resultset.getString("customer_name"));
				customer.setEmail(resultset.getString("email"));
				customer.setMobile(resultset.getString("mobile"));
				customer.setAddress(resultset.getString("address"));
				customer.setGender(resultset.getString("gender"));
				customer.setDate_of_birth(resultset.getString("date_of_birth"));
				
				customers.add(customer);
				}
			resultset.close();
			statement.close();
			con.close();
		}
		catch(Exception e) 
		{
			System.out.println("**Error** : CustomerDL.getCustomers "+e.getMessage());
			
		}
		return customers;
	}
	
	
		
		
		
	}


