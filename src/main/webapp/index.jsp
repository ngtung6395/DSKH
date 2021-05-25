<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="models.Customer" %><%--
  Created by IntelliJ IDEA.
  User: Latitude 5590
  Date: 25/05/2021
  Time: 8:14 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
  List<Customer> customerList = new ArrayList<>();
  Customer customer = new Customer("セイバー", "06/03/1995","Nhật Bản",
          "https://c4.wallpaperflare.com/wallpaper/107/312/8/saber-alter-fate-stay-night-fate-stay-night-heaven-s-feel-fate-grand-order-fate-series-hd-wallpaper-preview.jpg");

  Customer customer1 = new Customer("Gigamesh","06/03/1995","Nhật Bản",
          "https://c4.wallpaperflare.com/wallpaper/855/14/354/anime-boys-fate-fate-zero-wallpaper-preview.jpg");
  customerList.add(customer);
  customerList.add(customer1);
  request.setAttribute("danhsach",customerList);

%>
<html>
  <head>
    <title>$Title$</title>
    <style>
      td {
        color: black;
        width: 200px;
        background: aqua;
      }
      img {
        width: 200px;
        height: 200px;
      }
    </style>
  </head>
  <body>
  <table border="1px">
    <tr>
      <td>Tên</td>
      <td>Ngày tháng năm sinh</td>
      <td>Địa chỉ</td>
      <td>Ảnh</td>
    </tr>
    <c:forEach items="${danhsach}" var="customer">
      <tr>
        <td>
            ${customer.name}
        </td>
        <td>
            ${customer.dob}
        </td>
        <td>
            ${customer.address}
        </td>
        <td>
          <img src="${customer.picture}">
        </td>
      </tr>
    </c:forEach>
  </table>
  </body>
</html>
