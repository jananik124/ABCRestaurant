<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error</title>
    <style>
        body { font-family: Arial, sans-serif; text-align: center; margin: 50px; }
        h1 { font-size: 48px; }
        p { font-size: 24px; }
    </style>
</head>
<body>

    <!-- Error Handling Logic -->
    <c:choose>
        <c:when test="${pageContext.errorData.statusCode == 404}">
            <h1>404 - Page Not Found</h1>
            <p>The page you are looking for does not exist.</p>
        </c:when>
        <c:when test="${pageContext.errorData.statusCode == 500}">
            <h1>500 - Internal Server Error</h1>
            <p>Something went wrong on our end. Please try again later.</p>
        </c:when>
        <c:otherwise>
            <h1>Unknown Error</h1>
            <p>An unexpected error has occurred.</p>
        </c:otherwise>
    </c:choose>

    <a href="${pageContext.request.contextPath}/home">Go to Home Page</a>

</body>
</html>
