<%-- 
 
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
        
         <h1>Lista studentów</h1>
        <form action='/lab4/studentList' method='post'>
            Dodaj studenta:<br>
            Imię:<input required type='text' name='firstName'><br>
            Nazwisko:<input required type='text' name='lastName'><br>
            E-mail:<input required type='text' name='emailAddress'><br><br>
            <input type='submit'>
        </form>
        <br>
        <table border="1">
            <tr>
                <th>Imię</th><th>Nazwisko</th><th>E-mail</th>
            </tr>
            <c:forEach items="${students}" var="student">
                <tr>
                    <td>${student.firstName}</td>
                    <td>${student.lastName}</td>
                    <td>${student.emailAddress}</td>
                </tr>
            </c:forEach>
        
    </body>
</html>
