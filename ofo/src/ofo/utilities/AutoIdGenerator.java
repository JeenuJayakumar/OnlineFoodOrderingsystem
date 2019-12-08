package ofo.utilities;
import ofo.dl.*;


public class AutoIdGenerator 
{

	public static String generateId()
	{
		
			
			
			String str = new String();
			String newstr = new String();
			String prefix,suffix;
			int isuffix;
			str = CustomerDL.IdRetriever();
			if(str==null)
			{
				newstr = "cus101";
			}
			else
			{
			
			prefix=str.substring(0,3);
			isuffix=Integer.parseInt(str.substring(3));
			isuffix++;
			newstr=prefix+isuffix;
		//	System.out.println("Old String is "+str);
		//	System.out.println("New String is "+newstr);
			
			}
			return newstr;
		
		
	}	
	
	public static int generateOrderId()
	{
		
		int order_id;
		order_id = OrderDL.retrieveOrderId();
		if(order_id==0)
		{
			order_id=101;
		}
		else
		{
			order_id++;
		}
		
		return order_id;
	}
	
	
		
}


