<%-- 
    Document   : login
    Created on : Feb 22, 2021, 3:24:55 PM
    Author     : Nhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="j_spring_security_check" method="post">
            Username:<input name="j_username" type="text"/> <br/>
            Passwork:<input name="j_passwork" type="passwork"/> <br/>
            <input type="submit" value="login">
            <input type="hidden" name ="${_csrf.parameterName}"
                   value="${csrf.token}"
            
        </form>
    </body>
</html>
