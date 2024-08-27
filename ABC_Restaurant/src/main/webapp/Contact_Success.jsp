<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.testaurant.service.ContactService" %>
<%@ page import="com.restaurant.model.ContactMODEL" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant - Contact Us</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            text-align: center;
        }
        .message {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            margin: 50px auto;
            width: 50%;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        a {
            color: #007BFF;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="message">
        <%
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String message = request.getParameter("message");

            if (name != null && !name.trim().isEmpty() &&
                email != null && !email.trim().isEmpty() &&
                message != null && !message.trim().isEmpty()) {

                // Create an instance of ContactService
                ContactService contactService = new ContactService();
                
                // Create a ContactMODEL object
                ContactMODEL contact = new ContactMODEL();
                contact.setName(name);
                contact.setEmail(email);
                contact.setMessage(message);

                // Save the contact message
                boolean isSaved = contactService.saveContact(contact);

                if (isSaved) {
                    out.println("<h1>Thank you for contacting us!</h1>");
                    out.println("<p>We have received your message and will get back to you soon.</p>");
                    out.println("<p><a href=\"Contact.jsp\">Go back to the contact page</a></p>");
                } else {
                    out.println("<h1>Oops!</h1>");
                    out.println("<p>Something went wrong. Please try again later.</p>");
                    out.println("<p><a href=\"Contact.jsp\">Go back to the contact page</a></p>");
                }
            } else {
                out.println("<h1>Error</h1>");
                out.println("<p>Required fields are missing or empty.</p>");
                out.println("<p><a href=\"Contact.jsp\">Go back to the contact page</a></p>");
            }
        %>
    </div>
</body>
</html>
