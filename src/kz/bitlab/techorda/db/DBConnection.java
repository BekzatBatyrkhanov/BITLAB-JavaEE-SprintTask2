package kz.bitlab.techorda.db;

import com.mysql.cj.jdbc.Driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBConnection {

    private static Connection connection;
    static  {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:8881/techorda_db",
                    "root",
                    "root");
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static ArrayList<Item> getItem() {

        ArrayList<Item> items = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(
                    "select * from items"
            );

            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Item item = new Item();
                item.id = resultSet.getLong("id");
                item.name = resultSet.getString("name");
                item.description = resultSet.getString("description");
                item.price = resultSet.getDouble("price");

                items.add(item);
            }
            statement.close();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return items;
    }

    public static User getUser(String email) {
        ArrayList<User> users = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(
                    "SELECT * from users"
            );

            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                User user = new User();
                user.id = resultSet.getLong("id");
                user.email = resultSet.getString("email");
                user.password = resultSet.getString("password");
                user.fullName = resultSet.getString("full_name");

                users.add(user);
            }
            statement.close();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        for(User u : users) {
            if(email.equals(u.email)) return u;
        }
        return null;
    }





}
