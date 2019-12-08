package ofo.dl;

import ofo.dto.*;
import java.sql.*;
import java.util.ArrayList;

public class CartDL {

	public static int addToCart(FoodDTO food, String customer_id) {
		int result;
		Connection con = null;
		PreparedStatement ps = null;
		try {

			con = DBHelper.getConnection();
			String sql = "INSERT INTO cart_details VALUES(?,?,?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, customer_id);
			ps.setInt(2, 1);
			ps.setString(3, food.getFood_id());
			ps.setString(4, food.getItem_name());
			ps.setDouble(5, food.getPrice());

			result = ps.executeUpdate();

			con.close();

		} catch (Exception e) {
			result = -1;
			System.out.println("**Error** : CartDL.addToCart() " + e.getMessage());

		}

		return result;

	}

	public static ArrayList<CartDTO> getCartDetails(String customer_id) {
		ArrayList<CartDTO> carts = null;
		CartDTO cart = null;
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {

			carts = new ArrayList<CartDTO>();
			String query = "SELECT customer_id,food_id,item_name,price,COUNT(food_id) AS Quantity FROM cart_details WHERE customer_id LIKE"
					+ customer_id + " GROUP BY customer_id,food_id,item_name,price";
			con = DBHelper.getConnection();
			statement = con.createStatement();
			resultSet = statement.executeQuery(query);
			while (resultSet.next()) {
				cart = new CartDTO();

				cart.setCustomer_id(resultSet.getString(1));
				cart.setFood_id(resultSet.getString(2));
				cart.setItem_name(resultSet.getString(3));
				cart.setPrice(resultSet.getDouble(4));
				cart.setQuantity(resultSet.getInt(5));

				carts.add(cart);
			}

			con.close();

		} catch (Exception e) {
			System.out.println("**Error** : CartDL.getCartDetails() " + e.getMessage());

		}
		return carts;

	}

	public static ArrayList<CartDTO> getCartQuantity(String customer_id) {
		ArrayList<CartDTO> carts = null;
		CartDTO cart = null;
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {

			carts = new ArrayList<CartDTO>();
			String query = "SELECT DISTINCT customer_id,food_id,price,COUNT(*) AS quantity FROM cart_details WHERE customer_id='"
					+ customer_id + "' GROUP BY customer_id,food_id,price;";
			con = DBHelper.getConnection();
			statement = con.createStatement();
			resultSet = statement.executeQuery(query);
			while (resultSet.next()) {
				cart = new CartDTO();

				cart.setCustomer_id(resultSet.getString(1));
				cart.setFood_id(resultSet.getString(2));
				cart.setPrice(resultSet.getDouble(3));
				cart.setQuantity(resultSet.getInt(4));

				carts.add(cart);
			}

			con.close();
		} catch (Exception e) {
			System.out.println("**Error** : CartDL.getCartDetails() " + e.getMessage());

		}
		return carts;

	}

	public static int deleteFromCart(String food_id, String customer_id) {
		int result = 0;
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = DBHelper.getConnection();
			String sql = "DELETE FROM cart_details WHERE food_id=? AND customer_id=?";
			ps = con.prepareStatement(sql);
			ps.setString(1, food_id);
			ps.setString(2, customer_id);
			result = ps.executeUpdate();

			con.close();
		} catch (Exception e) {
			result = -1;
			System.out.println("**Error** : CartDL.deleteFromCart() " + e.getMessage());

		}

		return result;

	}

	public static CartDTO getCartTotal(String customer_id) {
		CartDTO cartTotal = null;
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {

			String query = "SELECT customer_id,SUM(price) AS totalprice FROM cart_details WHERE customer_id="
					+ customer_id + " GROUP BY customer_id";
			con = DBHelper.getConnection();
			statement = con.createStatement();
			resultSet = statement.executeQuery(query);
			if (resultSet.next()) {
				cartTotal = new CartDTO();

				cartTotal.setCustomer_id(resultSet.getString(1));
				cartTotal.setTotal_price(resultSet.getDouble(2));

			}

			con.close();

		} catch (Exception e) {
			System.out.println("**Error** : CartDL.getCartTotal() " + e.getMessage());

		}
		return cartTotal;

	}

	public static int removeOrderedItem(String customer_id) {
		int result = 0;
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = DBHelper.getConnection();
			String sql = "DELETE FROM cart_details WHERE customer_id=?";
			ps = con.prepareStatement(sql);
			ps.setString(1, customer_id);
			result = ps.executeUpdate();

			con.close();

		} catch (Exception e) {
			result = -1;
			System.out.println("**Error** : CartDL.removeOrderedItem() " + e.getMessage());

		}

		return result;

	}

}
