package ofo.bl;

import ofo.dl.CustomerDL;
import ofo.dto.CustomerDTO;

public class CustomerBL {
	
	public static int addCustomer(CustomerDTO customer)
	{
		int result=0;
		try
		{
			result = CustomerDL.addCustomer(customer);
			
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("***Error*** at CustomerBL.addBook()"+e.getMessage());
		}
		
		return result;
	}


}
