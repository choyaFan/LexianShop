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
    <form action="${pageContext.request.contextPath}revisePersonalInformationConfirm.action" method="post">
            <%--<td>请输入原始密码</td>--%>
        <ul>
            <li>
                <input type="password" name="user_password" placeholder="请输入旧密码"/><a href="#" class=" icon lock"></a>
            </li>
        </ul>
        <div class="p-container">
            <input type="submit" value="确认" >
            <input type="button" value="取消" onclick="window.location.href='http://localhost:8081/ShowPersonalInformation.action'" >
            <div class="clear"> </div>
        </div>
    </form>
</div>
</body>
</html>
