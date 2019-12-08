package ofo.dl;
import java.sql.Connection;
import java.sql.PreparedStatement;

import ofo.dto.*;

public class UserDL {
	
	
	public static int addUser(UserDTO user)
	{
		int result=0;
		Connection con;
		PreparedStatement ps;
		try
		{
			con = DBHelper.getConnection();
			String query = "INSERT INTO user_details VALUES(?,?)";
			ps=con.prepareStatement(query);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			
			result = ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("***Error*** at UserDL.addUser()"+e.getMessage());
		}
		
		return result;
		
	}
	

}
