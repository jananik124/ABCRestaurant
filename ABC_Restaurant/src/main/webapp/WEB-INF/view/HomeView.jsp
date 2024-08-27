<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="container">
        <h2>Welcome to the Home Page</h2>
        <c:if test="${not empty user}">
            <p>Hello, ${user.name}! Welcome back!</p>
            <a href="logout">Logout</a>
        </c:if>
        <c:if test="${empty user}">
            <p>Please <a href="UserView.jsp">login</a> to continue.</p>
        </c:if>
    </div>
</body>
</html>
