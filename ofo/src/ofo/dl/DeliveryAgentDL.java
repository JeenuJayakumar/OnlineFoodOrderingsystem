package ofo.dl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import ofo.dto.*;

public class DeliveryAgentDL {

	public static int addDeliveryAgent(DeliveryAgentDTO deliveryagent) {
		int result = 0;
		Connection con;
		PreparedStatement ps;
		try {
			con = DBHelper.getConnection();
			String query = "INSERT INTO delivery_agent VALUES(?,?,?,?)";
			ps = con.prepareStatement(query);
			ps.setString(1, deliveryagent.getAgent_id());
			ps.setString(2, deliveryagent.getAgent_name());
			ps.setString(3, deliveryagent.getEmail());
			ps.setString(4, deliveryagent.getMobile());

			result = ps.executeUpdate();

		} catch (Exception e) {
			result = -1;
			System.out.println("***Error*** at DeliveryAgentDL.addDeliveryAgent()" + e.getMessage());
		}

		return result;
	}
	
	public static ArrayList<DeliveryAgentDTO> getDeliveryAgentDetails()
	{
		ArrayList<DeliveryAgentDTO> agents=null;
		Connection con=null;
		
		
		Statement statement=null;
		ResultSet resultSet=null;
		DeliveryAgentDTO agent=null;
		
		try
		{
			agents=new ArrayList<DeliveryAgentDTO>();
				String sql="SELECT * FROM DELIVERY_AGENT ORDER BY AGENT_ID";
				con=DBHelper.getConnection();
				statement=con.createStatement();
				resultSet=statement.executeQuery(sql);
				while(resultSet.next())
				{
					agent=new DeliveryAgentDTO();
		
					agent.setAgent_id(resultSet.getString("AGENT_ID"));
					agent.setAgent_name(resultSet.getString("AGENT_NAME"));
					agent.setEmail(resultSet.getString("EMAIL"));
					agent.setMobile(resultSet.getString("MOBILE"));
					agents.add(agent);
				}
				resultSet.close();
				statement.close();
				con.close();
		}
		catch(Exception e)
		{
			System.out.println("**error** DeliveryDL:getDeliveryAgentDetails"+e.getMessage());
		}
		return agents;
	}


}
