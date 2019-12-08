package ofo.dto;

public class Order1DTO {
	
		String order_id,food_id,customer_id,ordered_date,delivered_date;
		Double price;
		
		public String getOrder_id() {
			return order_id;
		}
		public void setOrder_id(String order_id) {
			this.order_id = order_id;
		}
		public String getFood_id() {
			return food_id;
		}
		public void setFood_id(String food_id) {
			this.food_id = food_id;
		}
		public String getCustomer_id() {
			return customer_id;
		}
		public void setCustomer_id(String customer_id) {
			this.customer_id = customer_id;
		}
		public String getOrdered_date() {
			return ordered_date;
		}
		public void setOrdered_date(String ordered_date) {
			this.ordered_date = ordered_date;
		}
		public String getDelivered_date() {
			return delivered_date;
		}
		public void setDelivered_date(String delivered_date) {
			this.delivered_date = delivered_date;
		}
		public Double getPrice() {
			return price;
		}
		public void setPrice(Double price) {
			this.price = price;
		}
		
		

}
