<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-11
  Time: 오후 4:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberLogin.jsp</title>

    <script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>

</head>
<body>
<div id="naverIdLogin"></div>

<script type="text/javascript">
    const naverIdLogin = new  naverIdLogin("XeAeOCCAkjv1GZ69jLvW","http://localhost:3306/");
    const state = naverIdLogin.getUniqState();
    naverIdLogin.setButton("white",4,40);
    naverIdLogin.setDomain("http://localhost:3306/memberLogin");
    naverIdLogin.setState(state);
    naverIdLogin.setPopup();
    naverIdLogin.init_naverIdLogin();
</script>
</body>
<%--<script type="text/javascript">--%>
<%--    var naverLogin = new naver.LoginWithNaverId(--%>
<%--        {--%>
<%--            clientId: "XeAeOCCAkjv1GZ69jLvW",--%>

<%--            callbackUrl: "http://localhost:3306/callBack",--%>

<%--            isPopup:false,--%>

<%--            loginButton:{color:"white",type:3,height:60}--%>
<%--        }--%>
<%--    );--%>
<%--naverLogin.init();--%>
<%--</script>--%>
</html>
