<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1"/>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> -->
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="../../httpobject/common/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
$(function() { 
	var result = "${result}";
		
	$('#loginBtn').click(function(){
		console.log('아이디:'+$('#m_id'));
		console.log('비밀번호:'+$('#m_pwd'));
		if($('#m_id').val() == '') {
			alert('아이디를 입력하세요.');
			$('#m_id').focus();
			return false;
		}
		if($('#m_pwd').val() == '') {
			alert('비밀번호를 입력하세요.');
			$('#m_pwd').focus();
			return false;
		}
		
		$.ajax({
//			type : 'POST', 
//			url : '/member/login.do',
			data : $('#loginForm').serialize(),
			dataType : 'json',
			timeout : 10000,
			error : function(e){
				alert('요청하신 작업이 중지되었습니다.');
			},
			success : function(data){
				alert(data);
				if(data == 'nomember') {
					alert('로그인 정보를 확인해주세요.');
				}else {
					alert(data);
					location.href='/main.do?idx=${data.member.idx}';
				}
			}
		});
	/* 	$('#loginForm').submit(); */
		
	});
	
/* 	 	if(result=='failed') {
	 		console.log('result : '+result);
			console.log('login failed');
			alert('로그인 정보를 확인해주세요.');
		} */

});


/* $('#page1').on('pageshow',function(){
	if('${result}'=='failed') {
		console.log('login failed');
		alert('로그인 정보를 확인해주세요.');
	}
}); */
</script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
 -->
<script type="text/javascript">
function join(){
	location.href="/member/join.do";
}
</script>

	<title>Home</title>
</head>
<body>
			<div data-role="page" id="page1" >
 
  	<div data-role="header" >
  		<h1>Header</h1>
  	</div>
  	<div data-role="content" >
  		<form id="loginForm" action="/member/login.do"method="POST"  data-ajax="false">
				<label for="m_id">아이디</label>
				<input type="text" name="m_id" id="m_id" value=""/>
				<label for="m_pwd">비밀번호</label>
				<input type="password" name="m_pwd" id="m_pwd" value=""/>
				<button id="loginBtn" type="submit">확인</button>
				<button id="joinBtn" type="button" onclick="join();">가입하기</button>
			</form>
  	</div>
  	<div data-role="footer">
  		<h1>Footer</h1>
  	</div>
  	
  </div>
			
			<!-- Bootstrap -->
      <!-- <form class="form-signin" id="loginForm" action="/member/login.do" method="POST" >
        <h2 class="form-signin-heading">Please sign in</h2>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="text" id="m_id" name="m_id" class="form-control" placeholder="Id" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="m_pwd" name="m_pwd" class="form-control" placeholder="Password" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <button id="loginBtn" class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
        <button class="btn btn-lg btn-primary btn-block" type="button" onclick="join();">Join</button>
      </form> -->

</body>
</html>
