<%-- 
   
    Author     : Basia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab5</title>
    </head>
    <body>
       
        <h1>Liczba wyświetleń: ${sessionScope["counterValue"]}</h1>
        <h1>Liczba wyświetleń: ${sessionScope.counterValue}</h1>
        
    </body>
</html>
