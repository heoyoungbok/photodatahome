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
    <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="616881970964-54j7e5i622crt2rdh8qpdokce54eeatc.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login.jsp</title>
    <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">

<%--    <script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>--%>

</head>


<!--Coded with love by Mutiullah Samim-->

<script  src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.19.0/axios.min.js"></script>

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<body>
<div class="g-sign2" data-onsuccess="onSignIn" data-theeme="dark"></div>

<script>
    function onSingIn(googleUser){
        var profile = googleUser.getBasicProFile();
        console.log("Id:"+profile.getId());
        console.log("Full Name:"+profile.getName());
        console.log("Given Name:"+profile.getGiveName());
        console.log("Family Name:"+profile.getFamilyName());
        console.log("Image URL:"+profile.getImageUrl());
        console.log("Email:"+profile.getEmail());

        var id_token = googleUser.getAuthReponse().id_token;
        console.log("ID Token:"+id_token);
    }
</script>
</body>
</html>

<!-- 카카오 로그인 -->
<%--<a class="p-2" href="https://kauth.kakao.com/oauth/authorize?client_id=20f88d6bd6aba3224d8eddf828f928fa&redirect_uri=--%>
<%--http://localhost:8080/login&response_type=code">--%>
<%--    <!-- REST_API키 및 REDIRECT_URi는 본인걸로 수정하세요 -->--%>
<%--    <!-- 저는 redirect_uri을 http://localhost:8080/member/kakaoLogin로 했습니다. -->--%>
<%--    <!-- 본인걸로 수정 시 띄어쓰기 절대 하지 마세요. 오류납니다. -->--%>

<%--    <img src="/resources/icon/kakao_login_large_narrow.png" style="height:60px">--%>
    <!-- 이미지는 카카오 개발자센터에서 제공하는 login 이미지를 사용했습니다. -->

<%--</a>--%>

<%--<a href="https://kauth.kakao.com/oauth/authorize--%>
<%--    ?client_id=20f88d6bd6aba3224d8eddf828f928fa--%>
<%--    &redirect_uri=http://localhost:8080/--%>
<%--    &response_type=code&scope=account_email">로그인</a>--%>
<%--<a class="p-2" href="https://kauth.kakao.com/oauth/authorize?client_id=20f88d6bd6aba3224d8eddf828f928fa&redirect_uri=--%>
<%--http://localhost:3306/&response_type=code">--%>
<%--    <img th:src="@{/images/kakao_login_medium_narrow.png}" style="height:60px"/>--%>
<%--</a>--%>



<%--<a href="javascript:kakaoLogin();"><img src="./kakao_login.png" alt="카카오계정 로그인" style="height: 100px;"/></a>--%>



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
</script>
</html>
