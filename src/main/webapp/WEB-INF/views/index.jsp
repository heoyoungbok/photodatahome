<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-11
  Time: 오전 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index.jsp</title>
</head>
<body>
        <button onclick="saveFn()">회원가입</button>
        <button onclick="loginFn()">로그인</button>

</body>
<script>
    const saveFn = () => {
      location.href = "/naverSave";
    }
    const loginFn = () => {
      location.href="/login";
    }
</script>
</html>
