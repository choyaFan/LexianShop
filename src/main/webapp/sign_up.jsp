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
    <form action="${pageContext.request.contextPath }sign_up.action" method="post">
        <ul>
            <%--<td>电话</td>--%>
            <li>
                <input type="text" class="text" name="user_phone" placeholder="请输入电话"/>
            </li>
            <%--<td>姓名</td>--%>
            <li>
                <input type="text" class="text" name="user_name" placeholder="请输入用户名"/>
            </li>
            <%--<td>密码</td>--%>
            <li>
                <input type="password" name="user_password" placeholder="请输入密码"/>
            </li>
            <%--<td>性别</td>--%>
            <li>
                <input type="text" class="text" name="gender" placeholder="请输入性别"/>
            </li>
            <%--<td>email</td>--%>
            <li>
                <input type="text" class="text" name="email" placeholder="请输入email"/>
            </li>
        </ul>
        <div class="p-container">
            <%--<label class="checkbox"><input type="checkbox" name="checkbox" checked><i></i>Remember Me</label>--%>
            <td colspan="2" align="center">
            <input type="submit" value="注册" >
                <input type="button" value="取消注册" onclick="window.location.href='http://localhost:8081/sign_in.jsp'" >
          <%--</td>--%>
            <div class="clear"></div>
        </div>
    </form>
</div>
</body>
</html>


