package ofo.bl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import ofo.dl.DBHelper;
import ofo.dl.FoodDL;
import ofo.dto.FoodDTO;

public class FoodBL {

	public static int addFoodItem(FoodDTO food) {
		int result = 0;

		try {

			result = FoodDL.addFoodItem(food);

		} catch (Exception e) {
			result = -1;
			System.out.println("***Error*** at FoodBL.addFoodItem()" + e.getMessage());
		}

		return result;
	}

	public static ArrayList<FoodDTO> getFoodByName(String item_name) {
		ArrayList<FoodDTO> foods = null;

		try {

			foods = new ArrayList<FoodDTO>();
			foods = FoodDL.getFoodByName(item_name);

		} catch (Exception e) {
			System.out.println("**Error** : FoodBL.getFoodByName " + e.getMessage());

		}
		return foods;

	}

	public static FoodDTO getFoodByID(String food_id) {
		int result = 0;
		FoodDTO food = null;

		try {

			food = FoodDL.getFoodByID(food_id);

		} catch (Exception e) {
			result = -1;
			System.out.println("**Error** : FoodBL.getFoodByID() " + e.getMessage());

		}

		return food;
	}

	public static ArrayList<FoodDTO> getFoodByCategory(String category) {
		int result;
		ArrayList<FoodDTO> foods = null;

		try {

			foods = new ArrayList<FoodDTO>();
			foods = FoodDL.getFoodByCategory(category);

		} catch (Exception e) {
			result = -1;
			System.out.println("**Error** : FoodBL.getFoodByCategory() " + e.getMessage());

		}

		return foods;
	}

	public static ArrayList<FoodDTO> getFoods() {
		int result;
		ArrayList<FoodDTO> foods = null;

		try {
			foods = new ArrayList<FoodDTO>();
			foods = FoodDL.getFoods();

		} catch (Exception e) {
			result = -1;
			System.out.println("**Error** : FoodBL.getFoods() " + e.getMessage());

		}

		return foods;
	}

}
