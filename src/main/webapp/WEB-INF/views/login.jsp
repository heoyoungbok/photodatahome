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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login.jsp</title>

<%--    <script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>--%>

</head>
<body>
<a href="#0" id="kakaoLogout">로그아웃</a> |
<a href="#0" id="secession">탈퇴</a>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
    window.Kakao.init('20f88d6bd6aba3224d8eddf828f928fa');
    window.Kakao.Auth.setAccessToken(JSON.parse(sessionStorage.getItem('AccessKEY'))); //sessionStorage에 저장된 사용자 엑세스 토큰 받아온다.

    function kakaoLogout() {
        if (!Kakao.Auth.getAccessToken()) {
            console.log('Not logged in.');
            return;
        }
        Kakao.Auth.logout(function(response) {
            alert(response +' logout');
            window.location.href='/'
        });
    };

    function secession() {
        Kakao.API.request({
            url: '/v1/user/unlink',
            success: function(response) {
                console.log(response);
                //callback(); //연결끊기(탈퇴)성공시 서버에서 처리할 함수
                window.location.href='/'
            },
            fail: function(error) {
                console.log('탈퇴 미완료')
                console.log(error);
            },
        });
    };

    const logout = document.querySelector('#kakaoLogout');
    const sion = document.querySelector('#secession');

    logout.addEventListener('click', kakaoLogout);
    sion.addEventListener('click', secession);
</script>
<%--<a href="https://kauth.kakao.com/oauth/authorize--%>
<%--    ?client_id=20f88d6bd6aba3224d8eddf828f928fa--%>
<%--    &redirect_uri=http://localhost:8080/--%>
<%--    &response_type=code&scope=account_email">로그인</a>--%>
<%--<a class="p-2" href="https://kauth.kakao.com/oauth/authorize?client_id=20f88d6bd6aba3224d8eddf828f928fa&redirect_uri=--%>
<%--http://localhost:3306/&response_type=code">--%>
<%--    <img th:src="@{/images/kakao_login_medium_narrow.png}" style="height:60px"/>--%>
<%--</a>--%>


</body>
<%--<a href="javascript:kakaoLogin();"><img src="./kakao_login.png" alt="카카오계정 로그인" style="height: 100px;"/></a>--%>


<script>

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
