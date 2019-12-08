package ofo.controllers;


import ofo.dto.*;
import ofo.dl.*;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CustomerController {

	 @RequestMapping("/customer_view")    
	    public String viewemp(Model m){    
	        List<CustomerDTO> list=CustomerDL.getCustomers();    
	        m.addAttribute("list",list);  
	        return "Customer/customer_view";    
	    }   
	
	
	 @RequestMapping(value="/addCustomer",method=RequestMethod.POST)    
	    public String addCustomer(@ModelAttribute("customer")CustomerDTO customer){  
	    	
	    	
	    	CustomerDL.addCustomer(customer);
	    	//System.out.println("custid: "+customerid);
	       // m.addAttribute("result",result);  
	        return "redirect:/../ofo/Customer/username_password.jsp";    
	    }  
	 
	 @RequestMapping("/addcustomerform")    
	    public String showform(Model m){    
	   
	        m.addAttribute("command",new CustomerDTO());  
	        return "Templates/form/customer_registration/customer_registration";    
	    }  
	
	 @GetMapping(value = "/username_password") 
	 public ModelAndView firstView() 
	 { 
	     ModelAndView mav = new ModelAndView("username_password");  
	    // must match the jsp page name which is being requested. 
	     mav.addObject("greeting", "GeeksForGeeks Welcomes you to Spring!"); 
	     return mav; 
	 } 
}
