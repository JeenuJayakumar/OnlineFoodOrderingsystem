package ofo.dl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import ofo.dto.*;

public class OrderDL {

	public static int insertIntoPurchaseOrder(PurchaseOrderDTO purchaseorder) {
		int result = 0;
		Connection con;
		PreparedStatement ps;
		try {
			con = DBHelper.getConnection();
			String query = "INSERT INTO PURCHASE_ORDER VALUES(?,?,?,?,?,?)";
			ps = con.prepareStatement(query);
			ps.setInt(1, purchaseorder.getOrder_id());
			ps.setString(2, purchaseorder.getCustomer_id());
			ps.setDouble(3, purchaseorder.getTotal_price());
			ps.setString(4, purchaseorder.getOrder_status());
			ps.setString(5, purchaseorder.getOrder_date());
			ps.setString(6, " ");
			result = ps.executeUpdate();
			
			con.close();

		} catch (Exception e) {
			result = -1;
			System.out.println("***Error*** at OrderDL.insertIntoPurchaseOrder()" + e.getMessage());
		}

		return result;
	}

	public static int retrieveOrderId() {

		Connection con;
		Statement st = null;
		ResultSet rs = null;
		int result = 0;

		int order_id = 0;
		try {
			con = DBHelper.getConnection();
			String sql = "SELECT order_id FROM purchase_order ORDER BY order_id DESC";
			st = con.createStatement();
			rs = st.executeQuery(sql);
			if (rs.next()) {
				order_id = rs.getInt(1);
			} else
				order_id = 0;

		} catch (Exception e) {
			result = -1;
			System.out.println("***Error*** at OrderDL.retrieveOrderId()" + e.getMessage());
		}

		return order_id;
	}

	public static int getOrderId(String customer_id) {
		int order_id = 0;
		Connection con;
		PreparedStatement ps;
		ResultSet rs = null;
		int result = 0;

		try {
			con = DBHelper.getConnection();
			String sql = "select order_id from purchase_order where customer_id = ? order by order_id DESC";
			ps = con.prepareStatement(sql);
			ps.setString(1, customer_id);
			rs = ps.executeQuery();
			if (rs.next()) {
				order_id = rs.getInt(1);
			}
			
			con.close();

		} catch (Exception e) {
			result = -1;
			System.out.println("***Error*** at OrderDL.retrieveOrderId()" + e.getMessage());
		}

		return order_id;

	}

	public static int insertIntoOrderDetails(OrderDetailsDTO orderdetails) {
		int result = 0;
		Connection con;
		PreparedStatement ps;
		try {
			con = DBHelper.getConnection();
			String query = "INSERT INTO ORDER_DETAILS VALUES(?,?,?,?,?)";
			ps = con.prepareStatement(query);
			ps.setInt(1, orderdetails.getOrder_id());
			ps.setString(2, orderdetails.getCustomer_id());
			ps.setString(3, orderdetails.getFood_id());
			ps.setInt(4, orderdetails.getQuantity());
			ps.setDouble(5, orderdetails.getPrice());
			result = ps.executeUpdate();

		} catch (Exception e) {
			result = -1;
			System.out.println("***Error*** at OrderDL.insertIntoOrderDetails()" + e.getMessage());
		}

		return result;
	}

	public static ArrayList<PurchaseOrderDTO> getPurchaseOrders() {
		int result = 0;
		ArrayList<PurchaseOrderDTO> orders = new ArrayList<PurchaseOrderDTO>();
		PurchaseOrderDTO order;
		Connection con;
		Statement st = null;
		ResultSet rs = null;
		try {
			con = DBHelper.getConnection();
			String query = "SELECT * FROM purchase_order ORDER BY order_id DESC";
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				order = new PurchaseOrderDTO();
				order.setOrder_id(rs.getInt(1));
				order.setCustomer_id(rs.getString(2));
				order.setTotal_price(rs.getDouble(3));
				order.setOrder_status(rs.getString(4));
				order.setOrder_date(rs.getString(5));
				order.setDelivery_agent(rs.getString(6));

				orders.add(order);
				
				


			}
			
			con.close();

		} catch (Exception e) {
			result = -1;
			System.out.println("***Error*** at OrderDL.getPurchaseOrders()" + e.getMessage());
		}
		
		return orders;

	}

	public static int updateOrderStatus(String status,PurchaseOrderDTO order,String agent_id) {
		int result = 0;
		Connection con;
		PreparedStatement ps;
		try {

			con = DBHelper.getConnection();
			String query = "UPDATE purchase_order SET order_status=?,delivery_agent=? WHERE order_id=?";
			ps = con.prepareStatement(query);
			ps.setString(1, status);
			ps.setString(2, agent_id);
			ps.setInt(3, order.getOrder_id());

			result = ps.executeUpdate();
			
			con.close();

		} catch (Exception e) {
			result = -1;
			System.out.println("***Error*** at OrderDL.updateOrderStatus()" + e.getMessage());
		}

		return result;
	}

	public static ArrayList<OrderDetailsDTO> getOrderDetails(String customer_id) {
		int result = 0;
		ArrayList<OrderDetailsDTO> orders = new ArrayList<OrderDetailsDTO>();
		OrderDetailsDTO order;
		Connection con;
		Statement st = null;
		ResultSet rs = null;
		try {
			con = DBHelper.getConnection();
			String query = "SELECT * FROM order_details WHERE customer_id="+customer_id+"ORDER BY order_id";
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				order = new OrderDetailsDTO();
				order.setOrder_id(rs.getInt(1));
				order.setCustomer_id(rs.getString(2));
				order.setFood_id(rs.getString(3));
				order.setQuantity(rs.getInt(4));
				order.setPrice(rs.getDouble(5));

				orders.add(order);		

			}
			
			con.close();

		} catch (Exception e) {
			result = -1;
			System.out.println("***Error*** at OrderDL.getOrderDetails()" + e.getMessage());
		}

		return orders;

	}
	
	
	
	public static ArrayList<FinalOrderDTO> getFinalOrders(String customer_id) {
		int result = 0;
		ArrayList<FinalOrderDTO> orders = new ArrayList<FinalOrderDTO>();
		FinalOrderDTO order;
		Connection con;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = DBHelper.getConnection();
			String query = "SELECT pu.order_id,pu.customer_id,pu.order_status,pu.order_date,o.food_id,o.quantity,o.price FROM purchase_order pu INNER JOIN order_details o ON pu.customer_id=o.customer_id\r\n" + 
					"WHERE pu.customer_id=?";
			ps = con.prepareStatement(query);
			ps.setString(1,customer_id);
			rs = ps.executeQuery();
			while (rs.next()) {
				order = new FinalOrderDTO();
				order.setOrder_id(rs.getInt(1));
				order.setCustomer_id(rs.getString(2));
				order.setOrder_status(rs.getString(3));
				order.setOrder_date(rs.getString(4));
				order.setFood_id(rs.getString(5));
				order.setQuantity(rs.getInt(6));
				order.setPrice(rs.getDouble(7));

				orders.add(order);		

			}
			
			con.close();

		} catch (Exception e) {
			result = -1;
			System.out.println("***Error*** at OrderDL.getFinalOrders()" + e.getMessage());
		}

		return orders;

	}
	
	public static int updateOrderStatusToDelivered(String status,PurchaseOrderDTO order,String agent_id) {
		int result = 0;
		Connection con;
		PreparedStatement ps;
		try {

			con = DBHelper.getConnection();
			String query = "UPDATE purchase_order SET order_status=?,delivery_agent=? WHERE order_id=?";
			ps = con.prepareStatement(query);
			ps.setString(1, status);
			ps.setString(2, agent_id);
			ps.setInt(3, order.getOrder_id());

			result = ps.executeUpdate();
			
			con.close();

		} catch (Exception e) {
			result = -1;
			System.out.println("***Error*** at OrderDL.updateOrderStatus()" + e.getMessage());
		}

		return result;
	}
	
}
