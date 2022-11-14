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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>index.jsp</title>

</head>
<body>
<%--        <button onclick="saveFn()">회원가입</button>--%>
<%--        <button onclick="loginFn()">로그인</button>--%>




</body>
<script>
    function saveToDos(token) { //item을 localStorage에 저장합니다.
        typeof(Storage) !== 'undefined' && sessionStorage.setItem('AccessKEY', JSON.stringify(token));
    };

    window.Kakao.init('20f88d6bd6aba3224d8eddf828f928fa');

    function kakaoLogin() {
        window.Kakao.Auth.login({
            scope: 'profile_nickname, account_email', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
            success: function(response) {
                saveToDos(response.access_token)  // 로그인 성공하면 사용자 엑세스 토큰 sessionStorage에 저장
                window.Kakao.API.request({ // 사용자 정보 가져오기
                    url: '/v2/user/me',
                    success: (res) => {
                        const kakao_account = res.kakao_account;
                        alert('로그인 성공');
                        window.location.href='/ex/kakao_login.html'
                    }
                });
            },
            fail: function(error) {
                console.log(error);
            }
        });
    };

    const login = document.querySelector('#kakaoLogin');
    login.addEventListener('click', kakaoLogin);
</script>
</html>
