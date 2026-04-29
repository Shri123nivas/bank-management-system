package bank.management.system;

import java.sql.*;

public class Connn {

    public Connection connection;
    public Statement statement;

    public Connn() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/banksystem",
                    "root",
                    "shri123455"
            );

            statement = connection.createStatement();
            System.out.println("✅ Database Connected");

        } catch (Exception e) {
            System.out.println("❌ Database Connection Failed");
            e.printStackTrace();
        }
    }
}
