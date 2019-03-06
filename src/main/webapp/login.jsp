<%--
  Created by IntelliJ IDEA.
  User: 63583
  Date: 2019/3/5
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
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
    <form method="post">
        <ul>
            <li>
                <input type="text" class="text" name="Username" /><a href="#" class=" icon user"></a>
            </li>
            <li>
                <input type="password" name="Password" /><a href="#" class=" icon lock"></a>
            </li>
        </ul>
        <div class="p-container">
            <%--<label class="checkbox"><input type="checkbox" name="checkbox" checked><i></i>Remember Me</label>--%>
            <input type="submit" value="SIGN IN" >
            <input type="button" value="SIGN UP" >
            <div class="clear"> </div>
        </div>
    </form>
</div>
</body>
</html>
