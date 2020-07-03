<%-- 
    Document   : leader
    Created on : 7 Jun, 2020, 10:36:00 AM
    Author     : aman
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello Admin</h1>
        <hr>    
        
        <p>You are a leader</p>
        
        <hr>
        
        <p> User : <security:authentication property="principal.username" /></p>
        <p> User : <security:authentication property="principal.authorities" /></p>

        <hr>
        
        <a href="${pageContext.request.contextPath}/">Back to Home</a>
        
    </body>
</html>
