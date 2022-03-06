package com.codegym.controller;

import com.codegym.dao.IProductDAO;
import com.codegym.dao.ProductDAO;
import com.codegym.model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/ProductServlet")
public class ProductServlet extends HttpServlet {
    private IProductDAO productDAO = new ProductDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create": {
                RequestDispatcher dispatcher = request.getRequestDispatcher("product/create.jsp");
                dispatcher.forward(request, response);
                break;
            }
            case "update": {
                int id = Integer.parseInt(request.getParameter("id"));
                Product product = this.productDAO.selectById(id);
                request.setAttribute("product", product);
                RequestDispatcher dispatcher = request.getRequestDispatcher("product/update.jsp");
                dispatcher.forward(request, response);
                break;
            }
            case "delete": {
                int id = Integer.parseInt(request.getParameter("id"));
                Product product = this.productDAO.selectById(id);
                request.setAttribute("product", product);
                RequestDispatcher dispatcher = request.getRequestDispatcher("product/delete.jsp");
                dispatcher.forward(request, response);
                break;
            }
            case "view": {
                int id = Integer.parseInt(request.getParameter("id"));
                Product product = this.productDAO.selectById(id);
                request.setAttribute("product", product);
                RequestDispatcher dispatcher = request.getRequestDispatcher("product/view.jsp");
                dispatcher.forward(request, response);
            }
            default: {
                List<Product> products = this.productDAO.selectAllProduct();
                request.setAttribute("products", products);
                RequestDispatcher dispatcher = request.getRequestDispatcher("product/index.jsp");
                dispatcher.forward(request, response);
                break;
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create": {
                String name = request.getParameter("name");
                double price = Double.parseDouble(request.getParameter("price"));
                int amount = Integer.parseInt(request.getParameter("amount"));
                String description = request.getParameter("description");
                Product product = new Product(name, price, amount, description);
                this.productDAO.insertProduct(product);
                RequestDispatcher dispatcher = request.getRequestDispatcher("product/create.jsp");
                dispatcher.forward(request, response);
                break;
            }
            case "update": {
                int id = Integer.parseInt(request.getParameter("id"));
                String name = request.getParameter("name");
                double price = Double.parseDouble(request.getParameter("price"));
                int amount = Integer.parseInt(request.getParameter("amount"));
                String description = request.getParameter("description");


                Product product = new Product(id,name, price, amount, description);
                this.productDAO.updateProduct(product);
                RequestDispatcher dispatcher = request.getRequestDispatcher("product/update.jsp");
                dispatcher.forward(request, response);
                break;
            }
            case "delete": {
                int id = Integer.parseInt(request.getParameter("id"));
                this.productDAO.deleteProduct(id);
                response.sendRedirect("/ProductServlet");
                break;
            }
            default: {

                break;
            }
        }
    }
}
