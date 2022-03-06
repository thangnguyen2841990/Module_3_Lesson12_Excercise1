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
        <table border="1" cellpadding="5">
            <caption><h2>CHI TIẾT SẢN PHẨM</h2></caption>
            <tr>
                <td>Mã sản phẩm: </td>
                <td><input type="text" disabled value="${requestScope['product'].getId()}" size="50"></td>
            </tr>
            <tr>
                <td>Tên sản phẩm: </td>
                <td><input type="text" disabled value="${requestScope['product'].getName()}" size="50"></td>
            </tr>
            <tr>
                <td>Giá sản phẩm: </td>
                <td><input type="text" disabled value="${requestScope['product'].getPrice()}" size="50"></td>
            </tr>
            <tr>
                <td>Số lượng sản phẩm: </td>
                <td><input type="text" disabled value="${requestScope['product'].getAmount()}" size="50"></td>
            </tr>
            <tr>
                <td>Mô tả sản phẩm: </td>
                <td><input type="text" disabled value="${requestScope['product'].getDescription()}" size="50"></td>
            </tr>

        </table>

    <p>
        <a href="/ProductServlet">
            <button>Quay về trang chủ</button></a>
    </p>
</center>
</body>
</html>

</body>
</html>

