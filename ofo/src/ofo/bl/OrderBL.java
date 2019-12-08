package ofo.bl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import ofo.dl.DBHelper;
import ofo.dl.OrderDL;
import ofo.dto.FinalOrderDTO;
import ofo.dto.OrderDetailsDTO;
import ofo.dto.PurchaseOrderDTO;

public class OrderBL {

	public static int insertIntoPurchaseOrder(PurchaseOrderDTO purchaseorder) {
		int result = 0;
		try {

			result = OrderDL.insertIntoPurchaseOrder(purchaseorder);

		} catch (Exception e) {
			result = -1;
			System.out.println("***Error*** at OrderBL.insertIntoPurchaseOrder()" + e.getMessage());
		}

		return result;
	}

	public static int getOrderId(String customer_id) {
		int order_id = 0;

		int result = 0;

		try {
			order_id = OrderDL.getOrderId(customer_id);

		} catch (Exception e) {
			result = -1;
			System.out.println("***Error*** at OrderBL.retrieveOrderId()" + e.getMessage());
		}

		return order_id;

	}

	public static int insertIntoOrderDetails(OrderDetailsDTO orderdetails) {
		int result = 0;

		try {

			result = OrderDL.insertIntoOrderDetails(orderdetails);

		} catch (Exception e) {
			result = -1;
			System.out.println("***Error*** at OrderBL.insertIntoOrderDetails()" + e.getMessage());
		}

		return result;
	}

	public static ArrayList<PurchaseOrderDTO> getPurchaseOrders() {
		int result = 0;
		ArrayList<PurchaseOrderDTO> orders = new ArrayList<PurchaseOrderDTO>();

		try {

			orders = OrderDL.getPurchaseOrders();

		}

		catch (Exception e) {
			result = -1;
			System.out.println("***Error*** at OrderBL.getPurchaseOrders()" + e.getMessage());
		}

		return orders;

	}

	public static int updateOrderStatus(String status,PurchaseOrderDTO order, String agent_id) {
		int result = 0;

		try {

			result = OrderDL.updateOrderStatus(status,order, agent_id);

		} catch (Exception e) {
			result = -1;
			System.out.println("***Error*** at OrderBL.updateOrderStatus()" + e.getMessage());
		}

		return result;
	}

	public static ArrayList<OrderDetailsDTO> getOrderDetails(String customer_id) {
		int result = 0;
		ArrayList<OrderDetailsDTO> orders = new ArrayList<OrderDetailsDTO>();

		try {

			orders = OrderDL.getOrderDetails(customer_id);

		} catch (Exception e) {
			result = -1;
			System.out.println("***Error*** at OrderBL.getOrderDetails()" + e.getMessage());
		}

		return orders;

	}

	public static ArrayList<FinalOrderDTO> getFinalOrders(String customer_id) {
		int result = 0;
		ArrayList<FinalOrderDTO> orders = new ArrayList<FinalOrderDTO>();

		try {

			orders = OrderDL.getFinalOrders(customer_id);

		} catch (Exception e) {
			result = -1;
			System.out.println("***Error*** at OrderBL.getFinalOrders()" + e.getMessage());
		}

		return orders;

	}

}
