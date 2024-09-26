<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<link rel="stylesheet" href="resources/css/login.css" type="text/css">
</head>
<body>
    <div class="container">
        <div class="header">
            로고부분
            <h1>시작</h1>
        </div>
        <form class="login-box">
   			<input type="text" id="username" name="username" placeholder="사용자 이름">
    
			<input type="password" id="password" name="password" placeholder="비밀번호">
    
    		<button type="submit">로그인</button>
		</form>
		<br><span class = "JTSU">계정이 없으신가요? <a href="./member/addMember.jsp">가입</a>하기</span>

    </div>
</body>
</html>