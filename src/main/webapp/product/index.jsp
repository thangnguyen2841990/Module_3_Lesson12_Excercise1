<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 3/6/2022
  Time: 2:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <style>
    a{
      text-decoration: none;
    }
  </style>
  <body>
  <center>
    <h1>QUẢN LÝ SẢN PHẨM</h1>
    <p>
      <a href="/ProductServlet?action=create">
        <button>Thêm sản phẩm mới</button></a>
    </p>
    <table border="1" cellpadding="5">
      <caption><h2>DANH SÁCH SẢN PHẨM</h2></caption>
      <tr>
        <th>Mã sản phẩm</th>
        <th>Tên sản phẩm</th>
        <th>Giá(VND)</th>
        <th>Số lượng</th>
        <th>Mô tả sản phẩm</th>
        <th>Thao tác</th>
      </tr>
      <c:forEach items="${requestScope['products']}" var="product">
        <tr>
          <td><a href="/ProductServlet?action=view&id=${product.getId()}">${product.getId()}</a></td>
          <td>${product.getName()}</td>
          <td>${product.getPrice()}</td>
          <td>${product.getAmount()}</td>
          <td>${product.getDescription()}</td>
          <td>
            <a href="/ProductServlet?action=update&id=${product.getId()}">
              <button>Sửa</button></a>
            <a href="/ProductServlet?action=delete&id=${product.getId()}">
              <button>Xóa</button></a>
          </td>
        </tr>
      </c:forEach>
    </table>
  </center>
  </body>
</html>
