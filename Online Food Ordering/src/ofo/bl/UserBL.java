package ofo.bl;


import ofo.dl.UserDL;
import ofo.dto.UserDTO;

public class UserBL {

	
	public static int addUser(UserDTO user)
	{
		int result=0;
		
		try
		{
			
			
			result = UserDL.addUser(user);
			
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("***Error*** at UserBL.addUser()"+e.getMessage());
		}
		
		return result;
		
	}
	
}
