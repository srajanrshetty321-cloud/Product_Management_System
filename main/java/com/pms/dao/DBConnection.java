package com.pms.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    // DATABASE URL
    private static String url =
            "jdbc:mysql://localhost:3306/productdb";

    // MYSQL USERNAME
    private static String username = "root";

    // MYSQL PASSWORD
    private static String password = "password";

    // DATABASE CONNECTION METHOD
    public static Connection getConnection() {

        Connection con = null;

        try {

            // LOAD MYSQL DRIVER
            Class.forName("com.mysql.cj.jdbc.Driver");

            // CREATE CONNECTION
            con = DriverManager.getConnection(
                    url,
                    username,
                    password);

            System.out.println(
                    "Database Connected Successfully");

        } catch (Exception e) {

            e.printStackTrace();
        }

        return con;
    }
}