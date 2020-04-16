<%-- 
    Document   : personList
    Created on : 2020-04-15, 11:55:09
    Author     : Basia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <tr>
                <th>Imię</th><th>Nazwisko</th><th>Mail</th>
            </tr>
        <c:forEach items="${osoby}" var="osobka">
            <tr>
                <td>${osobka.firstName}</td>
                <td>${osobka.lastName}</td>
                <td>${osobka.emailAddress}</td>
            </tr>
        </c:forEach>  
            
        </table>
    </body>
</html>
