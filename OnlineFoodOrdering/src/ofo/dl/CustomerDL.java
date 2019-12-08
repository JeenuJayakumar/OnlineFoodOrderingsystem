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
			ps.setString(1, customer.getCustomerId());
			ps.setString(2, customer.getCustomerName());
			ps.setString(3, customer.getEmail());
			ps.setString(4, customer.getMobile());
			ps.setString(5, customer.getAddress());
			ps.setString(6, customer.getGender());
			ps.setString(7, customer.getDateOfBirth());
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

	public static ArrayList<CustomerDTO> getCustomers()
	{
		ArrayList<CustomerDTO> customers = null;
		String query;
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		CustomerDTO customer = null;
		
		try
		{
			customers = new ArrayList<CustomerDTO>();
			query="SELECT * FROM customer_details2 ORDER BY customer_ID DESC";
			con = DBHelper.getConnection();
			statement = con.createStatement();
			resultSet = statement.executeQuery(query);
			while(resultSet.next())
			{
				customer = new CustomerDTO();
				
				customer.setCustomerId((resultSet.getString("customer_id")));
				customer.setCustomerName((resultSet.getString("customer_name")));
				customer.setAddress((resultSet.getString("address")));
				customer.setGender((resultSet.getString("gender")));
				customer.setDateOfBirth((resultSet.getString("date_of_birth")));
				customer.setEmail((resultSet.getString("email")));
				customer.setMobile((resultSet.getString("mobile")));
				customers.add(customer);
				
			}
			resultSet.close();
			statement.close();
			con.close();
		}
		catch(Exception e) 
		{
			System.out.println("**Error** : customerDL.getCustomers() "+e.getMessage());
			
		}
		
		return customers;
	}
	
}
