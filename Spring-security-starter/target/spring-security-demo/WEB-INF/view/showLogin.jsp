<%-- 
    Document   : showLogin
    Created on : 6 Jun, 2020, 4:05:16 PM
    Author     : aman
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Custom Login</title>
    </head>
    
    <style>
        body{
            margin:0;   
            padding:0;
            /*background: #f7f7f7;*/   
        }
        .login-form{
            /*background:orange;*/
        }
        
        .login-form form{
            /* background: red; */
    padding: 50px 0;
    width: 50%;
    margin: 0 auto;
    margin-top: 100px;
    text-align: center;
    border: 2px solid orange; 
    background: linear-gradient(to right bottom,#ffd137,#fff);
    /* box-shadow: 0 5px 5px rgba(0,0,0,.1); */
        }
        
        .heading-tertiary{
           text-align: center;
           font-size:40px;
           font-weight:300;
           letter-spacing: 1px;
            margin:0;
           margin-bottom:40px;
          
        }
        
        .login-form__inputGroup{
            margin:0 auto;
            padding:0 40px;
           margin-bottom: 10px;
           /*width:50%;*/   
           vertical-align: middle;
        }
        
        .login-form__inputGroup::after{
           display:table;
           content:"";
           clear:both;
        }
        
        .login-form__inputGroup label{
            display:block;
            float:left;   
            text-align: right;
        }
        
        label{
            font-size:18px ;
            width:20%;
        }
        
        .login-form__inputGroup input{
            float:right;
            padding:5px;
            font-size:16px;
            border-radius : 2px;
            width:60%;
        }
        
        .submit{
           margin-top:20px;
           display: inline-block;
           outline:none;
           border:none;
           padding: 10px 25px;
           font-size:20px;
           color:white;
           background-color: greenyellow;
           border-radius:122px;
            
        }
        
        .error{
           
            color:red;
            padding-bottom:20px;
        }
        
        
        
    </style>
    <body>
        <div class="login-form">
         
            <form:form action="${pageContext.request.contextPath}/processLogin" method="POST">
                <h3 class="heading-tertiary">Login</h3>
                <c:if test="${param.error != null}">
                    <p class="error">Wrong Username/password</p>
                </c:if>
                <c:if test="${param.logout != null}">
                    <p class="error">User logged out successfully</p>
                </c:if>
                <div class="login-form__inputGroup">
                    <label for="username">Username</label>
                    <input type="text" id="username" name="username">
                        
                </div>
                <div class="login-form__inputGroup">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password">
                        
                </div>
                <input type="submit" value="Submit" class="submit">
                
            </form:form>
        </div>
    </body>
</html>
