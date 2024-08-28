<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.restaurant.model.ContactMODEL" %>
<%@ page import="com.testaurant.service.ContactService" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - View Contact Messages</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #333;
            color: #fff;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            font-size: 18px;
        }
        .back-link a {
            color: #007BFF;
            text-decoration: none;
        }
        .back-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Contact Messages</h1>
        <table>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Message</th>
            </tr>
            <%
                // Create an instance of ContactService
                ContactService contactService = new ContactService();
                
                // Retrieve all contact messages
                List<ContactMODEL> contactList = contactService.getAllContacts();

                // Loop through each contact and display in the table
                for (ContactMODEL contact : contactList) {
            %>
            <tr>
                <td><%= contact.getName() %></td>
                <td><%= contact.getEmail() %></td>
                <td><%= contact.getMessage() %></td>
            </tr>
            <%
                }
            %>
        </table>
        <div class="back-link">
            <a href="contact.jsp">Go back to the Contact Us page</a>
        </div>
    </div>

</body>
</html>
