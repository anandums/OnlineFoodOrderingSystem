package ofo.dl;
import java.sql.Connection;
import java.sql.PreparedStatement;

import ofo.dto.*;

public class FoodDL {
	
	
	public static int addFoodItem(FoodDTO food)
	{
		int result=0;
		Connection con;
		PreparedStatement ps;
		try
		{
			con = DBHelper.getConnection();
			String query = "INSERT INTO food_details VALUES(?,?,?,?)";
			ps=con.prepareStatement(query);
			ps.setString(1, food.getFood_id());
			ps.setString(2, food.getItem_name());
			ps.setDouble(3, food.getPrice());
			ps.setString(4, food.getCategory());
			
			result = ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("***Error*** at FoodDL.addFoodItem()"+e.getMessage());
		}
		
		return result;
	}


}


