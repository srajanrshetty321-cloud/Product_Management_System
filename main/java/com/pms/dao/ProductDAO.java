package com.pms.dao;

import java.sql.*;
import java.util.*;

import com.pms.model.Product;

public class ProductDAO {

    private String jdbcURL =
            "jdbc:mysql://localhost:3306/productdb";

    private String jdbcUsername =
            "root";

    private String jdbcPassword =
            "password";

    // INSERT PRODUCT

    private static final String INSERT_PRODUCT_SQL =
            "INSERT INTO Products VALUES (?, ?, ?, ?, ?)";

    // DISPLAY PRODUCTS

    private static final String SELECT_ALL_PRODUCTS =
            "SELECT * FROM Products";

    // DELETE PRODUCT

    private static final String DELETE_PRODUCT_SQL =
            "DELETE FROM Products WHERE ProductID=?";

    // UPDATE PRODUCT

    private static final String UPDATE_PRODUCT_SQL =
            "UPDATE Products SET ProductName=?, Category=?, Price=?, Quantity=? WHERE ProductID=?";

    // DATABASE CONNECTION

    public Connection getConnection() {

        Connection connection = null;

        try {

            Class.forName(
                    "com.mysql.cj.jdbc.Driver");

            connection =
                    DriverManager.getConnection(
                            jdbcURL,
                            jdbcUsername,
                            jdbcPassword);

        } catch(Exception e) {
            e.printStackTrace();
        }

        return connection;
    }

    // INSERT PRODUCT

    public void insertProduct(Product product) {

        try (

                Connection connection =
                        getConnection();

                PreparedStatement ps =
                        connection.prepareStatement(
                                INSERT_PRODUCT_SQL)

        ) {

            ps.setInt(
                    1,
                    product.getProductId());

            ps.setString(
                    2,
                    product.getProductName());

            ps.setString(
                    3,
                    product.getCategory());

            ps.setDouble(
                    4,
                    product.getPrice());

            ps.setInt(
                    5,
                    product.getQuantity());

            ps.executeUpdate();

        } catch(Exception e) {
            e.printStackTrace();
        }
    }

    // DISPLAY ALL PRODUCTS

    public List<Product> selectAllProducts() {

        List<Product> products =
                new ArrayList<>();

        try (

                Connection connection =
                        getConnection();

                PreparedStatement ps =
                        connection.prepareStatement(
                                SELECT_ALL_PRODUCTS)

        ) {

            ResultSet rs =
                    ps.executeQuery();

            while(rs.next()) {

                int id =
                        rs.getInt("ProductID");

                String name =
                        rs.getString("ProductName");

                String category =
                        rs.getString("Category");

                double price =
                        rs.getDouble("Price");

                int quantity =
                        rs.getInt("Quantity");

                products.add(
                        new Product(
                                id,
                                name,
                                category,
                                price,
                                quantity
                        )
                );
            }

        } catch(Exception e) {
            e.printStackTrace();
        }

        return products;
    }

    // DELETE PRODUCT

    public boolean deleteProduct(int id) {

        boolean rowDeleted = false;

        try (

                Connection connection =
                        getConnection();

                PreparedStatement ps =
                        connection.prepareStatement(
                                DELETE_PRODUCT_SQL)

        ) {

            ps.setInt(1, id);

            rowDeleted =
                    ps.executeUpdate() > 0;

        } catch(Exception e) {
            e.printStackTrace();
        }

        return rowDeleted;
    }

    // UPDATE PRODUCT

    public boolean updateProduct(Product product) {

        boolean rowUpdated = false;

        try (

                Connection connection =
                        getConnection();

                PreparedStatement ps =
                        connection.prepareStatement(
                                UPDATE_PRODUCT_SQL)

        ) {

            ps.setString(
                    1,
                    product.getProductName());

            ps.setString(
                    2,
                    product.getCategory());

            ps.setDouble(
                    3,
                    product.getPrice());

            ps.setInt(
                    4,
                    product.getQuantity());

            ps.setInt(
                    5,
                    product.getProductId());

            rowUpdated =
                    ps.executeUpdate() > 0;

        } catch(Exception e) {
            e.printStackTrace();
        }

        return rowUpdated;
    }

    // GET PRODUCT BY NAME

    public Product getProductByName(String productName) {

        Product product = null;

        try {

            Connection connection =
                    getConnection();

            String sql =
                    "SELECT * FROM Products WHERE ProductName=?";

            PreparedStatement ps =
                    connection.prepareStatement(sql);

            ps.setString(1, productName);

            ResultSet rs =
                    ps.executeQuery();

            if(rs.next()) {

                int id =
                        rs.getInt("ProductID");

                String name =
                        rs.getString("ProductName");

                String category =
                        rs.getString("Category");

                double price =
                        rs.getDouble("Price");

                int quantity =
                        rs.getInt("Quantity");

                product =
                        new Product(
                                id,
                                name,
                                category,
                                price,
                                quantity
                        );
            }

            connection.close();

        } catch(Exception e) {
            e.printStackTrace();
        }

        return product;
    }

    // REPORT BY PRICE

    public List<Product> getProductsByPrice(double priceValue) {

        List<Product> list =
                new ArrayList<>();

        try (

                Connection con =
                        getConnection();

                PreparedStatement ps =
                        con.prepareStatement(
                                "SELECT * FROM Products WHERE Price > ?")

        ) {

            ps.setDouble(1, priceValue);

            ResultSet rs =
                    ps.executeQuery();

            while(rs.next()) {

                list.add(
                        new Product(
                                rs.getInt("ProductID"),
                                rs.getString("ProductName"),
                                rs.getString("Category"),
                                rs.getDouble("Price"),
                                rs.getInt("Quantity")
                        )
                );
            }

        } catch(Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    // REPORT BY CATEGORY

    public List<Product> getProductsByCategory(String category) {

        List<Product> list =
                new ArrayList<>();

        try (

                Connection con =
                        getConnection();

                PreparedStatement ps =
                        con.prepareStatement(
                                "SELECT * FROM Products WHERE Category=?")

        ) {

            ps.setString(1, category);

            ResultSet rs =
                    ps.executeQuery();

            while(rs.next()) {

                list.add(
                        new Product(
                                rs.getInt("ProductID"),
                                rs.getString("ProductName"),
                                rs.getString("Category"),
                                rs.getDouble("Price"),
                                rs.getInt("Quantity")
                        )
                );
            }

        } catch(Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    // TOP PRODUCTS

    public List<Product> getTopProducts(int limit) {

        List<Product> list =
                new ArrayList<>();

        try (

                Connection con =
                        getConnection();

                PreparedStatement ps =
                        con.prepareStatement(
                                "SELECT * FROM Products ORDER BY Quantity DESC LIMIT ?")

        ) {

            ps.setInt(1, limit);

            ResultSet rs =
                    ps.executeQuery();

            while(rs.next()) {

                list.add(
                        new Product(
                                rs.getInt("ProductID"),
                                rs.getString("ProductName"),
                                rs.getString("Category"),
                                rs.getDouble("Price"),
                                rs.getInt("Quantity")
                        )
                );
            }

        } catch(Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}