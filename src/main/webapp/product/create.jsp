<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 3/6/2022
  Time: 2:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
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
  <form method="post">
  <table border="1" cellpadding="5">
    <caption><h2>THÊM SẢN PHẨM MỚI</h2></caption>
    <tr>
      <td>Tên sản phẩm</td>
      <td><input type="text" name="name" placeholder="Nhập tên sản phẩm" size="50"></td>
    </tr>
    <tr>
      <td>Giá</td>
      <td><input type="text" name="price" placeholder="Nhập giá sản phẩm" size="50"></td>
    </tr>
    <tr>
      <td>Số lượng</td>
      <td><input type="text" name="amount" placeholder="Nhập số lượng sản phẩm" size="50"></td>
    </tr>
    <tr>
      <td>Mô tả sản phẩm</td>
      <td><input type="text" name="description" placeholder="Nhập mô tả sản phẩm" size="50"></td>
    </tr>
    <tr>
      <td></td>
      <td>
        <button>Xác nhận</button></td>
    </tr>

  </table>
  </form>
  <p>
    <a href="/ProductServlet">
      <button>Quay về trang chủ</button></a>
  </p>
</center>
</body>
</html>

</body>
</html>
