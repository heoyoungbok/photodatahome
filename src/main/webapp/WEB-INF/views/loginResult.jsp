<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-14
  Time: 오전 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>loginResult.jsp</title>
</head>
<body>
  <script type="text/javascript">
    const naverIdLogin = new naverIdLogin("XeAeOCCAkjv1GZ69jLvW","http://localhost:3306/loginResult");
      alert(naverIdLogin.oauthParams.access_token);

      naverIdLogin.get_naver_userprofile("naverSignInCallback()");

      function naverSignInCallback(){
        alert(naverIdLogin.getProfileData('email'));
        alert(naverIdLogin.getProfileData('nickname'));
        alert(naverIdLogin.getProfileData('age'));
      }
  </script>
</body>
</html>
