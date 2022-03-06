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

    <form method="post">
        <table border="1" cellpadding="5">
            <caption><h2>SỬA THÔNG TIN SẢN PHẨM</h2></caption>
            <tr>
                <td>Mã sản phẩm: </td>
                <td><input type="text" name="id"  disabled value="${requestScope['product'].getId()}" size="50"></td>
            </tr>
            <tr>
                <td>Tên sản phẩm: </td>
                <td><input type="text" name="name" value="${requestScope['product'].getName()}" size="50"></td>
            </tr>
            <tr>
                <td>Giá sản phẩm: </td>
                <td><input type="text" name="price" value="${requestScope['product'].getPrice()}" size="50"></td>
            </tr>
            <tr>
                <td>Số lượng sản phẩm: </td>
                <td><input type="text" name="amount" value="${requestScope['product'].getAmount()}" size="50"></td>
            </tr>
            <tr>
                <td>Mô tả sản phẩm: </td>
                <td><input type="text" name="description" value="${requestScope['product'].getDescription()}" size="50"></td>
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
