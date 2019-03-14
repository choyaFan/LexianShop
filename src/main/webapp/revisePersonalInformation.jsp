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
    <form action="${pageContext.request.contextPath}revisePersonalInformation.action" method="post">
        <ul>
            <li>
                <input type="text" class="text" name="user_name" placeholder="请输入新的用户名"/><a href="#" class=" icon user"></a>
            </li>
            <li>
                <input type="password" name="user_password" placeholder="请输入新的密码"/><a href="#" class=" icon lock"></a>
            </li>
            <li>
              <input type="text" name="gender" placeholder="请输入性别"/>
            </li>
            <li>
              <input type="text" name="email" placeholder="请输入新的email"/>
            </li>
        </ul>
        <div class="p-container">
            <input type="submit" value="确认修改" >
            <input type="button" value="取消修改" onclick="window.location.href='http://localhost:8081/ShowPersonalInformation.action'" >
            <div class="clear"> </div>
        </div>
    </form>
</div>
</body>
</html>
