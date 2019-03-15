<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width initial-scale=1">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,300,600,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/loginStyle.css"/>
</head>
<body>
<div class="login-form">
    <div class="head">
        <img src="images/mem2.jpg" alt=""/>
    </div>
    <form action="${pageContext.request.contextPath}sign_in.action" method="post">
        <ul>
            <li>
                <input type="text" class="text" name="user_phone" placeholder="请输入电话"/><a href="#" class=" icon user"></a>
            </li>
            <li>
                <input type="password" name="user_password" placeholder="请输入密码"/><a href="#" class=" icon lock"></a>
            </li>
        </ul>
        <div class="p-container">
            <%--<label class="checkbox"><input type="checkbox" name="checkbox" checked><i></i>Remember Me</label>--%>
            <input type="submit" value="登陆" >
            <input type="button" value="注册" onclick="window.location.href='http://localhost:8081/sign_up.jsp'" >
            <div class="clear"> </div>
        </div>
    </form>
</div>
</body>
</html>