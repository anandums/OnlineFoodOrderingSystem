package ofo.bl;

import ofo.dl.FoodDL;
import ofo.dto.FoodDTO;

public class FoodBL {
	
	
	public static int addFoodItem(FoodDTO food)
	{
		int result=0;
		
		try
		{
			
			
			result = FoodDL.addFoodItem(food);
			
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("***Error*** at FoodBL.addFoodItem()"+e.getMessage());
		}
		
		return result;
	}

}
