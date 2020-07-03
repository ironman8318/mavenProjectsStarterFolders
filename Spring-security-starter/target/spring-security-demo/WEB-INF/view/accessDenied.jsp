<%-- 
    Document   : accessDenied
    Created on : 7 Jun, 2020, 1:06:51 PM
    Author     : aman
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Access Denied</h1>
        <hr>
        <p>You dont have the required priviliges to access the resources</p>
        <hr>
         <a href="${pageContext.request.contextPath}/">Back to Home</a>

    </body>
</html>
