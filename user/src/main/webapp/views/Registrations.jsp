<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:eval expression="@environment.getProperty('cronExpression')"
    var="cronExpression" />

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registered Users</title>
    <style>
        .center {
            margin: 0 auto;
            width: 80%; /* Adjust width as needed */
        }
    </style>
</head>
<body>
<div class="center">
    <div class="top-left">
        <a href="${pageContext.request.contextPath}/register">Click Here For Registeration!!</a>
    </div>
    <h1>Registered Users</h1>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Full Name</th>
                <th>Gender</th>
                <th>Address</th>
                <th>City</th>
                <th>Pin</th>
                <th>State</th>
                <th>Country</th>
                <th>Email</th>
                <th>Contact</th>
                <th>Education Qualification</th>
                <th>Designation</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <!-- Loop through registrations and display -->
            <c:forEach items="${registrations}" var="registration">
                <tr>
                    <td>${registration.id}</td>
                    <td>${registration.full_name}</td>
                    <td>${registration.gender}</td>
                    <td>${registration.address}</td>
                    <td>${registration.city}</td>
                    <td>${registration.pin}</td>
                    <td>${registration.state}</td>
                    <td>${registration.country}</td>
                    <td>${registration.email}</td>
                    <td>${registration.contact}</td>
                    <td>${registration.education_qualification}</td>
                    <td>${registration.designation}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/delete/${registration.id}">Delete || </a>
                        <a href="${pageContext.request.contextPath}/update/${registration.id}">Update</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

     <!-- Pagination -->
    <div>
        <span>Pages:</span>
        <c:forEach begin="1" end="${totalPages}" varStatus="loop">
            <a href="${pageContext.request.contextPath}/registrations?page=${loop.index}">${loop.index}</a>
        </c:forEach>
    </div>
</div>
</body>
</html>
