package com.codegym.dao;

import com.codegym.model.Product;

import java.util.List;

public interface IProductDAO {
    void insertProduct(Product product);
    Product selectById(int id);
    List<Product> selectAllProduct();
    boolean deleteProduct(int id);
    boolean updateProduct(Product product);
}
