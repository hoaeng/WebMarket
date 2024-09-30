<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
	function checkForm() {
		if (!document.newMember.id.value) {
			alert("아이디를 입력하세요.");
			return false;
		}

		if (!document.newMember.password.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}

		if (document.newMember.password.value != document.newMember.password_confirm.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
	}
</script>
<title>회원가입 페이지</title>
<link rel="stylesheet" href="../resources/css/login.css?after" type="text/css">
</head>
<body>
    <div class="container">
        <div class="header">
            로고부분
            <h1>시작</h1>
        </div>
        <form class="login-box" action="processAddMember.jsp">
   			<input type="text" id="username" name="username" placeholder="사용자 이름">
    
			<input type="password" id="password" name="password" placeholder="비밀번호">
			
			<input type="password" id="password_confirm" name="password_confirm" placeholder="비밀번호 확인">
			
			<input type="text" id="name" name="name" placeholder="성명">
			
			<div class="form-group row">
				<label class="col-sm-2"></label>
				<div class="col-sm-4  ">
					<input type="text" name="birthyy" maxlength="4" placeholder="년(4자)" size="6"> 
					<select name="birthmm" class="select">
						<option disabled selected>월</option>
						<option value="01">1</option>
						<option value="02">2</option>
						<option value="03">3</option>
						<option value="04">4</option>
						<option value="05">5</option>
						<option value="06">6</option>
						<option value="07">7</option>
						<option value="08">8</option>
						<option value="09">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <input type="text" name="birthdd" maxlength="2" placeholder="일" size="4">
				</div>
			</div>
			
			<label class="col-sm-2">이메일</label>
				<div class="col-sm-10">
					<input type="text" name="mail1" maxlength="50">@ 
					<select name="mail2">
						<option>naver.com</option>
						<option>daum.net</option>
						<option>gmail.com</option>
						<option>nate.com</option>
					</select>
				</div>	
    
    		<button type="submit" class="btn btn-primary " value="등록 " >가입</button>
		</form>
		<br><span class = "JTSU">이미 계정이 있으신가요? <a href="../login.jsp">로그인</a>하기</span>

    </div>
</body>
</html>