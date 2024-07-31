<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="clb.Credentials" %>
<!DOCTYPE html>
<html>
<head>
    <title>Your Details</title>
</head>
<body>

<h2>Your Details</h2>

<%
    Credentials credentials = (Credentials) request.getAttribute("searchResult");
    if (credentials != null) {
%>
    <p>ID: <%= credentials.getId() %></p>
    <p>First Name: <%= credentials.getFirstName() %></p>
    <p>Last Name: <%= credentials.getLastName() %></p>
<%
    } else {
%>
    <p>No details found for ID <%= request.getParameter("searchId") %>.</p>
<%
    }
%>

<h2>Insert New Credentials</h2>

<form action="index" method="post">
    <label for="id">ID:</label>
    <input type="text" id="id" name="id" required><br><br>
    <label for="firstName">First Name:</label>
    <input type="text" id="firstName" name="firstName" required><br><br>
    <label for="lastName">Last Name:</label>
    <input type="text" id="lastName" name="lastName" required><br><br>
    <input type="hidden" name="submitAction" value="insert">  
    <button type="submit">Insert</button>
</form>

<h2>Search Credentials</h2>

<form action="index" method="get">
    <label for="searchId">ID:</label>
    <input type="text" id="searchId" name="searchId" required><br><br>
    <button type="submit">Search</button>
</form>

</body>
</html>
