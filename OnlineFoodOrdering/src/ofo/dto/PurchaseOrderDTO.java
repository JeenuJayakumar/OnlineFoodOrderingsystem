package ofo.dto;

public class PurchaseOrderDTO {

		int order_id;
		String customer_id;
		String order_status;
		String order_date;
		String delivery_agent;
		double total_price;
		
		
		public int getOrder_id() {
			return order_id;
		}
		public void setOrder_id(int order_id) {
			this.order_id = order_id;
		}
		public String getCustomer_id() {
			return customer_id;
		}
		public void setCustomer_id(String customer_id) {
			this.customer_id = customer_id;
		}
		public String getOrder_status() {
			return order_status;
		}
		public void setOrder_status(String order_status) {
			this.order_status = order_status;
		}
		public String getOrder_date() {
			return order_date;
		}
		public void setOrder_date(String order_date) {
			this.order_date = order_date;
		}
		public double getTotal_price() {
			return total_price;
		}
		public void setTotal_price(double total_price) {
			this.total_price = total_price;
		}
		
		public String getDelivery_agent() {
			return delivery_agent;
		}
		public void setDelivery_agent(String delivery_agent) {
			this.delivery_agent = delivery_agent;
		}

		
		
		
	
	
	
}
