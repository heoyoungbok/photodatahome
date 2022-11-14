<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-11-14
  Time: 오전 9:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>callBack</title>
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<script>

  const naverLogin = new naver.LoginWithNaverId({
    clientId:"XeAeOCCAkjv1GZ69jLvW",
    callbackUrl: "http://localhost:3306/memberLogin",
    isPopup: false,
    callbackHandle: true
  })
  naverLogin.init();

  window.addEventListener('load',function (){
    naverLogin.getLoginStatus(function (status){

      if (status){
        const age = naverLogin.user.getAge();
        const birthday = naverLogin.user.getBirthday();
        const email = naverLogin.user.getEmail();
        const gender = naverLogin.user.getGender();
        const id = naverLogin.user.getId();
        const name =naverLogin.user.getName();
        const nickName = naverLogin.user.getNickName();

        $.ajax({
          type:'post',
          url:'naverSave',
          data:{'n_age':age, 'n_birthday':birthday, 'n_email':email, 'n_gender':gender, 'n_id':id, 'n_name':name, 'n_nickName':nickName},
          dataType:'text',
          success: function (result){
            if (result == 'ok'){
              console.log('성공');
              location.replace("http://localhost:3306/memberLogin");
            }else if(result=='no'){
              console.log('실패');
              location.replace("http://localhost:3306/index");
            }
          },
          error: function (result){
            console.log('오류 발생');
          }
        })
      }else {
        console.log("callback 처리에 실패하였습니다.");
      }
    });
  })
</script>

</body>
</html>
