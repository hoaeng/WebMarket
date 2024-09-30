<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<link rel="stylesheet" href="../resources/css/login.css?after" type="text/css">
</head>
<body>
    <div class="container">
        <div class="header">
            로고부분
            <h1>시작</h1>
        </div>
        <form class="login-box" action="processLoginMember.jsp" method="post">
   			<input type="text" id="username" name="username" placeholder="사용자 이름" required>
    
			<input type="password" id="password" name="password" placeholder="비밀번호" required>
			
        	<%
				String error = request.getParameter("error");
				if (error != null) {
					out.println("<div class='errormessage'>");
					out.println("아이디와 비밀번호를 확인해 주세요");
					out.println("</div>");
				}
			%>
    
    		<button class="btn btn btn-lg btn-success btn-block" type="submit">로그인</button>
		</form>
		<br><span class = "JTSU">계정이 없으신가요? <a href="./member/addMember.jsp">가입</a>하기</span>

    </div>
</body>
</html>