<%-- 
    Document   : hello
    Created on : 2020-03-31, 15:14:02
    Author     : Basia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Web - laboratorium 4</title>
    </head>
    <body>
        <h1>Cześć ${osoba.firstName} ${osoba.lastName}!</h1>
        <h3><a href='mailto:${osoba.emailAddress}'>${osoba.emailAddress}</a></h3>
        
        <h1>Cześć <c:out value="${osoba.firstName}" /><c:out value=" ${osoba.lastName}"/></h1>
        <h3><a href='mailto: <c:out value="${osoba.emailAddress}" />'><c:out value="${osoba.emailAddress}"/></a></h3>
        
                <c:forEach items="${dni}" var="dzien">
                    <p>${dzien}</p>
                </c:forEach>
                    <!-- Zad2 Wyrażenia EL wyświetlają tekst sformatowany, a JSTL tylko przekazany ciąg znaków -->
        
    </body>
</html>