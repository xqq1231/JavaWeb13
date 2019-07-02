<%--
  Created by IntelliJ IDEA.
  User: 10150
  Date: 2019/5/21
  Time: 18:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/jsp/jquery-1.11.0.js"></script>
</head>
<body>
用户名：<input name="username" id="username"/><span></span>
</body>
<script type="text/javascript">
    $(function () {
        $("#username").blur(function () {
            $.ajax({
                url:"${pageContext.request.contextPath}/ServletJsAjax",
                type:"POST",
                data:{"$username":$("#username").val()},
                dataType:"text",
                success:function (data) {
                    $("span").html("data");
                }

            })

        })
    })
</script>
</html>
