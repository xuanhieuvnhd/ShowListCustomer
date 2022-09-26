
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.model.Customer" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh sách khách hàng</title>
</head>
<body>
<%
    List<Customer> customers = new ArrayList<>();
%>
<%
    customers.add(new Customer("Mai Văn Hoàn", "1983-08-20", "Hà Nội","https://i.imgur.com/6O8eyPU.png"));
    customers.add(new Customer("Nguyễn Văn Nam", "1983-02-06", "Bắc Giang","https://i.imgur.com/6O8eyPU.png"));
    customers.add(new Customer("Nguyễn Thái Hoà","1983-05-09", "Nam Định","https://i.imgur.com/6O8eyPU.png"));
    customers.add(new Customer("Trần Đăng Khoa", "1983-02-28", "Hà Tây","https://i.imgur.com/6O8eyPU.png"));
    customers.add(new Customer("Nguyễn Đình Thi", "1992-07-31", "Hà Nội","https://i.imgur.com/6O8eyPU.png"));
    request.setAttribute("customers", customers);
%>
<table  style="width: 100%" bgcolor="#dcdcdc">
    <tr>
        <td colspan="4" style="text-align: center"><h1>Danh Sách Khách Hàng</h1>
        </td>
    </tr>
    <div class="row">
        <tr>
            <td><h3>Họ và tên</h3></td>
            <td><h3>Ngày sinh</h3></td>
            <td><h3>Địa chỉ</h3></td>
            <td><h3>Ảnh đại diện</h3></td>
        </tr>
    </div>
    <div class="col">
<%
    for (Customer customer:customers) {
%>
        <tr>
                <td><%= customer.getName()%></td>
                <td><%= customer.getBirthDay()%></td>
                <td><%= customer.getAddress()%></td>
                <td><img src="<%= customer.getImage()%>"  style ="width:50px; height:50px" ></td>
            </tr>
        <%
            }
        %>

    </div>
</table>
</body>
</html>