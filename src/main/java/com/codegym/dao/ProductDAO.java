package com.codegym.dao;

import com.codegym.model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO implements IProductDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/product?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "thuthuyda1";

    private static final String INSERT_INTO_PRODUCTS = "INSERT INTO products(name,price,amount,description) Values(?,?,?,?);";
    private static final String SELECT_BY_ID = "SELECT id,name,price,amount,description from products where id = ?;";
    private static final String SELECT_ALL_PRODUCTS = "SELECT * from products;";
    private static final String DELETE_PRODUCT_BY_ID = "DELETE FROM products where id = ?;";
    private static final String UPDATE_PRODUCT_BY_ID = "UPDATE products set name = ?, price = ?, amount = ?, description = ? where id = ?;";

    public ProductDAO() {
    }

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }

    @Override
    public void insertProduct(Product product) {
        System.out.println(INSERT_INTO_PRODUCTS);
        Connection connection = getConnection();
        try {
            PreparedStatement statement  = connection.prepareStatement(INSERT_INTO_PRODUCTS);
            statement.setString(1,product.getName());
            statement.setDouble(2,product.getPrice());
            statement.setInt(3,product.getAmount());
            statement.setString(4,product.getDescription());
            System.out.println(statement);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Product selectById(int id) {
        Product product = null;
        Connection connection = getConnection();
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_BY_ID);
            statement.setInt(1,id);
            System.out.println(statement);
            ResultSet rs = statement.executeQuery();
            while (rs.next()){
                String name = rs.getString("name");
                double price = rs.getDouble("price");
                int amount = rs.getInt("amount");
                String description = rs.getString("description");
                product = new Product(id,name,price,amount,description);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return product;
    }

    @Override
    public List<Product> selectAllProduct() {
        List<Product> products = new ArrayList<>();
        Connection connection = getConnection();
        try {
            PreparedStatement statement = connection.prepareStatement(SELECT_ALL_PRODUCTS);
            System.out.println(statement);
            ResultSet rs = statement.executeQuery();
            while (rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");
                double price = rs.getDouble("price");
                int amount = rs.getInt("amount");
                String description = rs.getString("description");
                products.add(new Product(id,name,price,amount,description));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return products;
    }

    @Override
    public boolean deleteProduct(int id) {
        boolean rowDelete = false;
        Connection connection = getConnection();
        try {
            PreparedStatement statement = connection.prepareStatement(DELETE_PRODUCT_BY_ID);
            statement.setInt(1,id);
            rowDelete = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowDelete;
    }

    @Override
    public boolean updateProduct(Product product) {
        boolean rowUpdate = false;
        Connection connection = getConnection();
        try {
            PreparedStatement statement = connection.prepareStatement(UPDATE_PRODUCT_BY_ID);
            statement.setInt(1,product.getId());
            statement.setString(2,product.getName());
            statement.setDouble(3,product.getPrice());
            statement.setInt(4,product.getAmount());
            statement.setString(5,product.getDescription());
            rowUpdate = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowUpdate;
    }
}
