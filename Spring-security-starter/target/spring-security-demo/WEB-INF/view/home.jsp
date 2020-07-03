<%-- 
    Document   : home.jsp
    Created on : 6 Jun, 2020, 12:11:45 PM
    Author     : aman
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Home page</h1>
        <p> User : <security:authentication property="principal.username" /></p>
        <p> User : <security:authentication property="principal.authorities" /></p>
        <hr>
        <security:authorize access="hasRole('MANAGER')" >
             <p><a href="${pageContext.request.contextPath}/leaders">Leaders</a> Leaders click here!</p>      
        </security:authorize>
        <security:authorize access="hasRole('BOSS')">
            <p><a href="${pageContext.request.contextPath}/admins">Admins</a> Admins click here!</p>
        </security:authorize>
        <hr>
        <form:form method="POST" action="${pageContext.request.contextPath}/logout">
            <input type="submit" value="Logout"/>
        </form:form>
        
        
    </body>
</html>
