package ofo.dl;
import ofo.dto.*;
import java.sql.*;
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
			
			con.close();
			
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
			
			con.close();
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("***Error*** at CustomerDL.IdRetriever()"+e.getMessage());
		}
		
		return customer_id;
	}

}
