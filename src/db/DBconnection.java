package db;

import models.Items;
import models.Users;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBconnection {
    private static Connection connection;

    static {
        try {
            Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:postgresql://localhost:5432/bitlab",
                    "postgres",
                    "1234"
            );
        } catch (Exception e){
            e.printStackTrace();
        }
    }
    public static ArrayList<Items> getItems(){
        ArrayList<Items> items=new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement("" +
                    "SELECT * FROM items");
            ResultSet resultSet= statement.executeQuery();
            while (resultSet.next()){
                Items item= new Items();
                item.setId(resultSet.getInt("id"));
                item.setName(resultSet.getString("name"));
                item.setDescription(resultSet.getString("description"));
                item.setPrice(resultSet.getDouble("price"));
                items.add(item);
            }
          statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return items;
    }
    public static Users getUser(String email){
        Users user = null;
        try {
            PreparedStatement statement =connection.prepareStatement("" +
                    "SELECT * FROM users WHERE email = ?");
            statement.setString(1,email);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()){
                user = new Users(
                        resultSet.getInt("id"),
                        resultSet.getString("email"),
                        resultSet.getString("password"),
                        resultSet.getString("full_name")
                );
            }
            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return user;
    }
}
