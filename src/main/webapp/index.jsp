<%@ page import="ra.academy.model.Customer" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<%
    List<Customer> list = Arrays.asList(
      new Customer("Nguyen Van A", "15/10/2000","Ha Noi","image/image1.png"),
      new Customer("Nguyen Van B", "23/8/2001","Hai Phong","image/image2.png"),
      new Customer("Tran Van C", "25/05/2001","Bac Ninh","image/image3.png")
    );
%>
<head>
    <title>JSP - Hello World</title>
    <jsp:include page="view/access/head.jsp" ></jsp:include>
</head>
<body>
<div class="mx-auto mt-5 p-5 w-75 border border-primary shadow-lg">
    <h1 class="text-center">Danh sách khách hàng
    </h1>
    <br/>
    <table class="table text-center" >
        <thead>
        <tr>
            <th >Tên</th>
            <th >Ngày sinh</th>
            <th >Địa chỉ</th>
            <th >Ảnh</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="<%=list%>" var="customer" varStatus="loop">
            <tr>
                <th >${customer.name}</th>
                <td>${customer.ngaySinh.toLocaleString()}</td>
                <td>${customer.diaChi}</td>
                <td><img src="${customer.img}" alt="img" width="50px"></td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>

<jsp:include page="view/access/footer.jsp" ></jsp:include>
</body>
</html>