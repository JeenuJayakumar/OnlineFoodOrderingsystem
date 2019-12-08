package ofo.dl;

import java.sql.*;
import java.util.ArrayList;

import ofo.dto.*;

public class FoodDL {

	public static int addFoodItem(FoodDTO food) {
		int result = 0;
		Connection con;
		PreparedStatement ps;
		try {
			con = DBHelper.getConnection();
			String query = "INSERT INTO food_details VALUES(?,?,?,?,?)";
			ps = con.prepareStatement(query);
			ps.setString(1, food.getFood_id());
			ps.setString(2, food.getItem_name());
			ps.setDouble(3, food.getPrice());
			ps.setString(4, food.getCategory());
			ps.setString(5, "RST101");

			result = ps.executeUpdate();

			con.close();

		} catch (Exception e) {
			result = -1;
			System.out.println("***Error*** at FoodDL.addFoodItem()" + e.getMessage());
		}

		return result;
	}

	public static ArrayList<FoodDTO> getFoodByName(String item_name) {
		ArrayList<FoodDTO> foods = null;
		FoodDTO food = null;
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		try {

			foods = new ArrayList<FoodDTO>();
			String query = "SELECT * FROM food_details WHERE item_name LIKE" + item_name;
			con = DBHelper.getConnection();
			statement = con.createStatement();
			resultSet = statement.executeQuery(query);
			while (resultSet.next()) {
				food = new FoodDTO();

				food.setFood_id(resultSet.getString(1));
				food.setItem_name(resultSet.getString(2));
				food.setPrice(resultSet.getDouble(3));
				food.setCategory(resultSet.getString(4));

				foods.add(food);
			}

			con.close();

		} catch (Exception e) {
			System.out.println("**Error** : FoodDL.getFoodByName " + e.getMessage());

		}
		return foods;

	}

	public static FoodDTO getFoodByID(String food_id) {
		int result;
		FoodDTO food = null;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = DBHelper.getConnection();
			String sql = "SELECT * FROM food_details WHERE food_id=" + food_id;
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				food = new FoodDTO();
				food.setFood_id(rs.getString(1));
				food.setItem_name(rs.getString(2));
				food.setPrice(rs.getDouble(3));
				food.setCategory(rs.getString(4));

			}

			con.close();
		} catch (Exception e) {
			result = -1;
			System.out.println("**Error** : FoodDL.getFoodByID() " + e.getMessage());

		}

		return food;
	}

	public static ArrayList<FoodDTO> getFoodByCategory(String category) {
		int result;
		ArrayList<FoodDTO> foods = null;
		FoodDTO food = null;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			foods = new ArrayList<FoodDTO>();
			con = DBHelper.getConnection();
			String sql = "SELECT * FROM food_details WHERE category LIKE" + category;
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				food = new FoodDTO();
				food.setFood_id(rs.getString(1));
				food.setItem_name(rs.getString(2));
				food.setPrice(rs.getDouble(3));
				food.setCategory(rs.getString(4));

				foods.add(food);

			}

			con.close();

		} catch (Exception e) {
			result = -1;
			System.out.println("**Error** : FoodDL.getFoodByCategory() " + e.getMessage());

		}

		return foods;
	}

	public static ArrayList<FoodDTO> getFoods() {
		int result;
		ArrayList<FoodDTO> foods = null;
		FoodDTO food = null;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			foods = new ArrayList<FoodDTO>();
			con = DBHelper.getConnection();
			String sql = "SELECT * FROM food_details";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				food = new FoodDTO();
				food.setFood_id(rs.getString(1));
				food.setItem_name(rs.getString(2));
				food.setPrice(rs.getDouble(3));
				food.setCategory(rs.getString(4));

				foods.add(food);

			}

			con.close();

		} catch (Exception e) {
			result = -1;
			System.out.println("**Error** : FoodDL.getFoods() " + e.getMessage());

		}

		return foods;
	}

}
