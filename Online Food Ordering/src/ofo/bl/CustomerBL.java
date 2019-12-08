package ofo.bl;

import java.util.ArrayList;

import ofo.dl.CustomerDL;
import ofo.dto.CustomerDTO;

public class CustomerBL {
	
	public static int addCustomer(CustomerDTO customer)
	{
		int result=0;
		try
		{
			result = CustomerDL.addCustomer(customer);
			
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("***Error*** at CustomerBL.addBook()"+e.getMessage());
		}
		
		return result;
	}
	
	public static int updateCustomer(CustomerDTO customer)
	{
		int result=0;
		try
		{
			result = CustomerDL.updateCustomer(customer);
			
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("***Error*** at CustomerBL.updateCustomer()"+e.getMessage());
		}
		
		return result;
	}
	
	public static CustomerDTO getCustomer (String customer_id)
	{
		CustomerDTO customer=null;
		try
		{
			customer=CustomerDL.getCustomer(customer_id);
		}
		catch(Exception e)
		{
			System.out.println("**Error** : CustomerDL.addCustomer "+e.getMessage());		
		}
		return customer;
	}
	
	public static ArrayList<CustomerDTO> getCustomers()
	{
		ArrayList<CustomerDTO> customers=null;
		
		try
		{
			customers=CustomerDL.getCustomers();
		}
		catch(Exception e) 
		{
			System.out.println("**Error** : CustomerDL.addCustomer "+e.getMessage());		
			
		}
		return customers;
	}
	


}
