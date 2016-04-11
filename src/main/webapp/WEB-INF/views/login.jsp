<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="../../httpobject/common/js/jquery-1.11.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
function join(){
	location.href="/member/join.do";
}

$(function(){
	
	$('#loginBtn').click(function(){
		
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
		
		$('#loginForm').submit();
		
	});
	
	
	
		if('${result}'=='failed') {
			alert('로그인 정보를 확인해주세요.');
		}

});
</script>
	<title>Home</title>
</head>
<body>
  <div class="container">
			
      <form class="form-signin" id="loginForm" action="/member/login.do" method="POST" >
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
      </form>

    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
   <!--  <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script> -->
<%-- <P>  The time on the server is ${serverTime}. </P> --%>
</body>
</html>
