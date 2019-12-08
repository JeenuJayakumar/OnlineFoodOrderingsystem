package ofo.bl;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import ofo.dl.DBHelper;
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
	
	public static UserDTO checkLogin(UserDTO user1)
	{
		UserDTO user2 = new UserDTO();
		int result=0;
		try
		{
			user2 = UserDL.checkLogin(user1);
			
			
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("***Error*** at UserBL.checkLogin()"+e.getMessage());
		}
		
		return user2;
	}
	
}
