<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="../../httpobject/common/js/jquery-1.11.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>Join Form</title>
<script type="text/javascript">
$(function(){
	var checkFlag = 'N';

		$('#m_id').change(function(){
			checkFlag = 'N';
			console.log(checkFlag);
		});

		$('#join').click(function() {

			if($('#m_pwd').val() != $('#check_pwd').val()) {
				alert('비밀번호가 일치하지 않습니다.');
				$('#m_pwd').focus();
				return false;
			}

		  if(checkFlag == 'N') {
				alert('아이디 중복확인이 필요합니다.');
				return false;
			} 
			
			$('#joinForm').submit();
			
		});

 		$('#check_id').click(function() {
			if (checkFlag == 'N') {
				
				$.ajax({
					type : 'POST',
					url : '/member/checkDupId.do',
					data : $('#m_id').val(),
					dataType : 'json',
					error : function(x,e) {
						alert('요청 중 오류발생');
						return false;
					},
					success : function(result) {
						if(result == 'dup') {
							alert('사용중인 아이디 입니다.');
							$('#m_id').focus();
						}else if(result == 'able') {
							alert('사용가능한 아이디 입니다.');
							checkFlag = 'Y';
						}
						
					}
				});
			}
		});

	});
</script>
</head>
<body>
 <h3>회원 가입</h3>
 <form id="joinForm" action="joinProc.do" method="POST" style="width: 75%; height: 50%; margin-left: 100px;">
 <fieldset class="form-group">
    <label for="m_name">이름</label>
    <input type="text" class="form-control" id="m_name" name="m_name" size="20">
    <small class="text-muted"></small>
  </fieldset>
  <fieldset class="form-group">
    <label for="m_birth">생년월일</label>
    <input type="text" class="form-control" id="m_birth" name="m_birth">
    <small class="text-muted">(예, 19910121)</small>
  </fieldset>
  <label for="gender">성별</label>
  <div class="radio">
    <label>
      <input type="radio" name="m_gender" id="M" value="남" checked>
      	남자
    </label>
  </div>
  <div class="radio">
    <label>
      <input type="radio" name="m_gender" id="F" value="여">
     		여자
    </label>
  </div>
  <fieldset class="form-group">
    <label for="m_id">아이디</label>
    <input type="text" class="form-control" id="m_id" name="m_id" >
  </fieldset>
  <input type="button" id="check_id" class="btn btn-secondary" value="중복확인"/>
  <fieldset class="form-group">
    <label for="m_pwd">비밀번호</label>
    <input type="password" class="form-control" id="m_pwd" name="m_pwd">
  </fieldset>
  <fieldset class="form-group">
    <label for="check_pwd">비밀번호 확인</label>
    <input type="password" class="form-control" id="check_pwd" name="check_pwd">
  </fieldset>
  <fieldset class="form-group">
    <label for="exampleInputFile">File input</label>
    <input type="file" class="form-control-file" id="exampleInputFile">
    <small class="text-muted"></small>
  </fieldset>

  <button type="button" class="btn btn-primary" id="join">확인</button>
  <button type="reset" class="btn btn-primary" id="cancel">취소</button>
  </form>
<!--  <form id="joinForm" action="" method="POST">
	<table class="joinTable" border="1" cellpadding="0" cellspacing="0"> 
 		<tr height="40">
 			<th width="80" align="center">이름</th>
 			<td><input type="text" id="name" name="name" value="" size="10"/></td>
 			<th width="80">생년월일</th>
 			<td>
 				<input type="text" id="birth" name="birth" value="" size="10"/>(예,19910121)
 				<select name="birth_month">
 					<option value="1"></option>
 					<option value="2"></option>
 					<option value="3"></option>
 					<option value="4"></option>
 					<option value="5"></option>
 					<option value="6"></option>
 					<option value="7"></option>
 					<option value="8"></option>
 					<option value="9"></option>
 					<option value="10"></option>
 					<option value="11"></option>
 					<option value="12"></option>
 				</select>
 				<select name="birth_day">
 					<option value="1"></option>
 					<option value="2"></option>
 					<option value="3"></option>
 					<option value="4"></option>
 					<option value="5"></option>
 					<option value="6"></option>
 					<option value="7"></option>
 					<option value="8"></option>
 					<option value="9"></option>
 					<option value="10"></option>
 					<option value="11"></option>
 					<option value="12"></option>
 					<option value="13"></option>
 					<option value="14"></option>
 					<option value="15"></option>
 					<option value="16"></option>
 					<option value="17"></option>
 					<option value="18"></option>
 					<option value="19"></option>
 					<option value="20"></option>
 					<option value="21"></option>
 					<option value="22"></option>
 					<option value="23"></option>
 					<option value="24"></option>
 					<option value="25"></option>
 					<option value="26"></option>
 					<option value="27"></option>
 					<option value="28"></option>
 					<option value="29"></option>
 					<option value="30"></option>
 					<option value="31"></option>
 				</select>
 			</td>
 		</tr>
 		<tr height="40">
 			<th width="80">성별</th>
 			<td colspan="3">
 				남<input type="radio" name="gender" checked="checked"/>
 				여<input type="radio" name="gender"/>
 			</td>
 		</tr>
 		<tr height="40">
 			<th width="80">아이디</th>
 			<td colspan="3">
 				<input type="text" id="id" name="id" value="" size="15"/>
 				<input type="button" id="check_id" name="check_id" value="중복체크"/>
 			</td>
 		</tr>
 		<tr height="40">
 			<th width="80">비밀번호</th>
 			<td colspan="3">
 				<input type="text" id="pwd" name="pwd" value="" size="20"/>
 			</td>
 		</tr>
 		<tr height="40">
 			<th width="80">비밀번호 확인</th>
 			<td colspan="3">
 				<input type="text" id="check_pwd" name="check_pwd" value="" size="20"/>
 			</td>
 		</tr>
 	</table>
 </form> -->
</body>
</html>