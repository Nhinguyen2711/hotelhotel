<%-- 
    Document   : login
    Created on : Feb 22, 2021, 3:24:55 PM
    Author     : Nhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>


        <style>
            bordebody {
                background: -webkit-radial-gradient(rgba(255,255,255,0) 0, rgba(255,255,255,.15) 30%, rgba(255,255,255,.3) 32%, rgba(255,255,255,0) 33%) 0 0, -webkit-radial-gradient(rgba(255,255,255,0) 0, rgba(255,255,255,.1) 11%, rgba(255,255,255,.3) 13%, rgba(255,255,255,0) 14%) 0 0, -webkit-radial-gradient(rgba(255,255,255,0) 0, rgba(255,255,255,.2) 17%, rgba(255,255,255,.43) 19%, rgba(255,255,255,0) 20%) 0 110px, -webkit-radial-gradient(rgba(255,255,255,0) 0, rgba(255,255,255,.2) 11%, rgba(255,255,255,.4) 13%, rgba(255,255,255,0) 14%) -130px -170px, -webkit-radial-gradient(rgba(255,255,255,0) 0, rgba(255,255,255,.2) 11%, rgba(255,255,255,.4) 13%, rgba(255,255,255,0) 14%) 130px 370px, -webkit-radial-gradient(rgba(255,255,255,0) 0, rgba(255,255,255,.1) 11%, rgba(255,255,255,.2) 13%, rgba(255,255,255,0) 14%) 0 0, -webkit-linear-gradient(45deg, #343702 0%, #184500 20%, #187546 30%, #006782 40%, #0b1284 50%, #760ea1 60%, #83096e 70%, #840b2a 80%, #b13e12 90%, #e27412 100%);
                background-color: #840b2a;
                background: -moz-radial-gradient(rgba(255,255,255,0) 0, rgba(255,255,255,.15) 30%, rgba(255,255,255,.3) 32%, rgba(255,255,255,0) 33%) 0 0, -moz-radial-gradient(rgba(255,255,255,0) 0, rgba(255,255,255,.1) 11%, rgba(255,255,255,.3) 13%, rgba(255,255,255,0) 14%) 0 0, -moz-radial-gradient(rgba(255,255,255,0) 0, rgba(255,255,255,.2) 17%, rgba(255,255,255,.43) 19%, rgba(255,255,255,0) 20%) 0 110px, -moz-radial-gradient(rgba(255,255,255,0) 0, rgba(255,255,255,.2) 11%, rgba(255,255,255,.4) 13%, rgba(255,255,255,0) 14%) -130px -170px, -moz-radial-gradient(rgba(255,255,255,0) 0, rgba(255,255,255,.2) 11%, rgba(255,255,255,.4) 13%, rgba(255,255,255,0) 14%) 130px 370px, -moz-radial-gradient(rgba(255,255,255,0) 0, rgba(255,255,255,.1) 11%, rgba(255,255,255,.2) 13%, rgba(255,255,255,0) 14%) 0 0, -moz-linear-gradient(45deg, #343702 0%, #184500 20%, #187546 30%, #006782 40%, #0b1284 50%, #760ea1 60%, #83096e 70%, #840b2a 80%, #b13e12 90%, #e27412 100%);
                background-color: #840b2a;
                background: -o-radial-gradient(rgba(255,255,255,0) 0, rgba(255,255,255,.15) 30%, rgba(255,255,255,.3) 32%, rgba(255,255,255,0) 33%) 0 0, -o-radial-gradient(rgba(255,255,255,0) 0, rgba(255,255,255,.1) 11%, rgba(255,255,255,.3) 13%, rgba(255,255,255,0) 14%) 0 0, -o-radial-gradient(rgba(255,255,255,0) 0, rgba(255,255,255,.2) 17%, rgba(255,255,255,.43) 19%, rgba(255,255,255,0) 20%) 0 110px, -o-radial-gradient(rgba(255,255,255,0) 0, rgba(255,255,255,.2) 11%, rgba(255,255,255,.4) 13%, rgba(255,255,255,0) 14%) -130px -170px, -o-radial-gradient(rgba(255,255,255,0) 0, rgba(255,255,255,.2) 11%, rgba(255,255,255,.4) 13%, rgba(255,255,255,0) 14%) 130px 370px, -o-radial-gradient(rgba(255,255,255,0) 0, rgba(255,255,255,.1) 11%, rgba(255,255,255,.2) 13%, rgba(255,255,255,0) 14%) 0 0, -o-linear-gradient(45deg, #343702 0%, #184500 20%, #187546 30%, #006782 40%, #0b1284 50%, #760ea1 60%, #83096e 70%, #840b2a 80%, #b13e12 90%, #e27412 100%);
                background-size: 1000px 1000px, 410px 410px, 610px 610px, 530px 530px, 730px 730px, 1000px 1000px;
                background-color: #840b2a;
            }

            .login {
                width: 300px;
                height: 340px;
                overflow: hidden;
                background: #1e1e1e;
                border-radius: 6px;
                margin: 50px auto;
                box-shadow: 0px 0px 50px rgba(0,0,0,.8);
            }

            .login .titulo {
                width: 298px;
                height: 14px;
                padding-top: 13px;
                padding-bottom: 13px;
                font-size: 25px;
                text-align: center;
                color: #bfbfbf;
                font-weight: bold;
                background: #121212;
                border: #2d2d2d solid 1px;
                margin-bottom: 30px;
                border-top-right-radius: 6px;
                border-top-left-radius: 6px;
                font-family: Arial;
            }

            .login form {
                width: 240px;
                height: auto;
                overflow: hidden;
                margin-left: auto;
                margin-right: auto;
            }

            .login form input[type=text], .login form input[type=password] {
                width: 200px;
                font-size: 12px;
                padding-top: 14px;
                padding-bottom: 14px;
                padding-left: 40px;
                border: none;
                color: #bfbfbf;
                background: #141414;
                outline: none;
                margin: 0;
            }

            .login form input[type=text] {
                border-top-left-radius: 6px;
                border-top-right-radius: 6px;
                border-top: #0b0b0b solid 1px;
                background: #141414 url(http://dev.dhenriquez.com/test-img/icons/111-user.png) 10px center no-repeat;
            }

            .login form input[type=password] {
                border-bottom-left-radius: 6px;
                border-bottom-right-radius: 6px;
                border-top: #0b0b0b 1px solid;
                border-bottom: #353535 1px solid;
                background: #141414 url(http://dev.dhenriquez.com/test-img/icons/54-lock.png) 10px center no-repeat;
            }

            .login form .enviar {
                width: 240px;

                display: block;
                padding-top: 14px;
                padding-bottom: 14px;
                border-radius: 6px;
                border: none;
                border-top: #4eb2a8 1px solid;
                border-bottom: #161616 1px solid;
                background: #349e92;
                text-align: center;
                text-decoration: none;
                font-size: 15px;
                font-weight: bold;
                color: #FFF;
                text-shadow: 0 -1px #1d7464, 0 1px #7bb8b3;
                font-family: Arial;
            }

            .login .olvido {
                width: 240px;
                height: auto;
                overflow: hidden;
                padding-top: 25px;
                padding-bottom: 25px;
                font-size: 10px;
                text-align: center;
            }

            .login .olvido .col {
                width: 50%;
                height: auto;
                float: left;
            }

            .login .olvido .col a {
                color: #fff;
                text-decoration: none;
                font: 12px Arial;
            }

            /* http://meyerweb.com/eric/tools/css/reset/ 
               v2.0 | 20110126
               License: none (public domain)
            */

            html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
                margin: 0;
                padding: 0;
                border: 0;
                font-size: 100%;
                font: inherit;
                vertical-align: baseline;
            }

            /* HTML5 display-role reset for older browsers */

            article, aside, details, figcaption, figure, footer, header, hgroup, menu, nav, section { display: block }

            body { line-height: 1 }

            ol, ul { list-style: none }

            blockquote, q { quotes: none }

            blockquote:before, blockquote:after, q:before, q:after {
                content: '';
                content: none;
            }

            table {r-collapse: collapse;
                   border-spacing: 0;
            }
            .error {
                padding: 15px;
                margin-bottom: 20px;
                border: 1px solid transparent;
                border-radius: 4px;
                color: #a94442;
                background-color: #f2dede;
                border-color: #ebccd1;
            }

            .msg {
                padding: 15px;
                margin-bottom: 20px;
                border: 1px solid transparent;
                border-radius: 4px;
                color: #31708f;
                background-color: #d9edf7;
                border-color: #bce8f1;
            }
        </style>
    </head>
    <body>

        <section class="login">
            <div class="titulo">Login</div>

            <form action="j_spring_security_check" method="post" enctype="application/x-www-form-urlencoded">
                <input name="j_username" type="text" required title="Username required" placeholder="Username" data-icon="U">
                <input name="j_password" type="password" required title="Password required" placeholder="Password" data-icon="x">
                <div class="olvido">
                    <div class="col"><a href="#" title="Ver Carásteres">Register</a></div>
                    <div class="col"><a href="#" title="Recuperar Password">Fotgot Password?</a></div>
                </div>

                <input type="submit" value="Login" class="enviar">
                <input type="hidden" name ="${_csrf.parameterName}"
                       value="${csrf.token}">
            </form>

            <c:if test="${not empty error}">
                <div class="error">${error}</div>
            </c:if>
            <c:if test="${not empty msg}">
                <div class="msg">${msg}</div>
            </c:if>
        </section>



    </body>
</html>
