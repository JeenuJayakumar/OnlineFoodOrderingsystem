package ofo.bl;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import ofo.dl.CartDL;
import ofo.dl.DBHelper;
import ofo.dto.CartDTO;
import ofo.dto.FoodDTO;

public class CartBL {

	public static int addToCart(FoodDTO food,String customer_id)
	{
		int result;
		
		try
		{
			result = CartDL.addToCart(food,customer_id);
						
		}
		catch(Exception e) 
		{
			result = -1;
			System.out.println("**Error** : CartBL.addToCart() "+e.getMessage());
			
		}
		
		return result;
		
	}
	
	public static ArrayList<CartDTO> getCartDetails(String customer_id)
	{
		ArrayList<CartDTO> carts = new ArrayList<CartDTO>();
		
		try
		{
			
			carts = CartDL.getCartDetails(customer_id);
			
			
		}
		catch(Exception e) 
		{
			System.out.println("**Error** : CartBL.getCartDetails() "+e.getMessage());
			
		}
		return carts;
		
	}
	
	public static int deleteFromCart(String food_id,String customer_id)
	{
		int result=0;
		
		try
		{
			
			result=CartDL.deleteFromCart(food_id, customer_id);
			
		}
		catch(Exception e) 
		{
			result=-1;
			System.out.println("**Error** : CartBL.deleteFromCart() "+e.getMessage());
			
		}
		
			return result;
		
	}
	
	public static CartDTO getCartTotal(String customer_id)
	{
		CartDTO cartTotal = null;
		
		try
		{
			
				cartTotal = new CartDTO();
				cartTotal = CartDL.getCartTotal(customer_id);
				
				
				
	
			
		}
		catch(Exception e) 
		{
			System.out.println("**Error** : CartBL.getCartTotal() "+e.getMessage());
			
		}
		return cartTotal;
		
	}
	
	public static int removeOrderedItem(String customer_id)
	{
		int result=0;
		try
		{
			
			result= CartDL.removeOrderedItem(customer_id);
			
		}
		catch(Exception e) 
		{
			result=-1;
			System.out.println("**Error** : CartBL.removeOrderedItem() "+e.getMessage());
			
		}
		
			return result;
		
	}
	
			
}
