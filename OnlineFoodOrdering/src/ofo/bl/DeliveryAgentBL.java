package ofo.bl;

import java.util.ArrayList;

import ofo.dl.DeliveryAgentDL;
import ofo.dto.DeliveryAgentDTO;

public class DeliveryAgentBL {
	
	public static int addDeliveryAgent(DeliveryAgentDTO deliveryagent)
	{
		int result=0;
		
		try
		{
			
			
			result = DeliveryAgentDL.addDeliveryAgent(deliveryagent);
			
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("***Error*** at DeliveryAgentBL.addDeliveryAgent()"+e.getMessage());
		}
		
		return result;
	}
	
	public static ArrayList<DeliveryAgentDTO> getDeliveryAgentDetails()
	{
		ArrayList<DeliveryAgentDTO> agents=null;
		try
		{
			agents= DeliveryAgentDL.getDeliveryAgentDetails();
		}
		catch(Exception e)
		{
			System.out.println("**error** DeliveryAgentBL:getDeliveryAgentDetails() "+e.getMessage());
		}
		return agents;
	}

}



