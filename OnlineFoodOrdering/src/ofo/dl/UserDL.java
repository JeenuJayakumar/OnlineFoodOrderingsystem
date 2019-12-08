package ofo.dl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

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
			String query = "INSERT INTO user_details VALUES(?,?,?)";
			ps=con.prepareStatement(query);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getId());
			
			result = ps.executeUpdate();
			
			con.close();
			
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("***Error*** at UserDL.addUser()"+e.getMessage());
		}
		
		return result;
		
	}
	
	public static UserDTO checkLogin(UserDTO user1)
	{
		UserDTO user2=null;
		Connection con;
		PreparedStatement ps=null;
		ResultSet rs = null;
		int result=0;
		try
		{
			user2 = new UserDTO();
			con = DBHelper.getConnection();
			String sql = "SELECT * FROM user_details where username=? AND password=?";
			ps = con.prepareStatement(sql);
			ps.setString(1,user1.getUsername());
			ps.setString(2,user1.getPassword());
			rs = ps.executeQuery();
			if(rs.next())
			{
				user2.setUsername(rs.getString("username"));
				user2.setPassword(rs.getString("password"));
				user2.setId(rs.getString("id"));
			}
			
			con.close();
			
			
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("***Error*** at UserDL.checkLogin()"+e.getMessage());
		}
		
		return user2;
	}

		
	}
	


