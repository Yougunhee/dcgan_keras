<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2017-11-14
  Time: 오후 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding = "utf-8" language="java" %>

<!DOCTYPE html>
<html>
<!-- include 된 곳에서 Active되는 메뉴를 처리하기 위한 변수 -->
<c:set var="page" value="login_page"/>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<head>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
    <link rel="stylesheet" href="${contextPath}/css/webfont.css">
    <link rel="stylesheet" href="${contextPath}/css/mybackgrounds.css">

    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
    <script src="${contextPath}/js/upper_page.js"></script>
    <script>upper("로그인",null,null,null);</script>
</head>

<body>
    <%@ include file="navbar.jsp" %>
    <div class="container">
        <div class="row">
            <div class="col s12">
                <form method="post" action="${contextPath}/jsp/login.do">
                    <div class="row center">
                        <div class="input-field col s8 offset-s2">
                            <input id="id" type="text" class="validate" required>
                            <label for="id">ID</label>
                        </div>
                    </div>
                    <div class="row center">
                        <div class="input-field col s8 offset-s2">
                            <input id="pwd" type="password" class="validate" required>
                            <label for="pwd" >PWD</label>
                        </div>
                    </div>
                    <div class="row center">
                        <input type="submit" class="waves-effect waves-light btn" value="로그인"/>
                    </div>
                </form>


            </div>

        </div>
        <div class="row center">
            <h2>혹은</h2>
            <fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
            </fb:login-button>


        </div>
    </div>
</body>
</html>
