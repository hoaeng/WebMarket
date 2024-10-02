<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="../resources/css/login.css?after" />
<%
String msg = request.getParameter("msg");
if (msg != null) {
	if (msg.equals("0"))
		out.println(" <title>회원 정보 수정</title>");
	else if (msg.equals("1"))
		out.println(" <title>회원 가입 성공</title>");
	else if (msg.equals("2")) {
		String loginId = (String) session.getAttribute("sessionId");
		out.println(" <title>로그인 성공</title>");
	}
} else {
	out.println("<title>회원 정보 삭제</title>");
}
%>
</head>
<body>
	<div class="jumbotron">
		<div class="container">
			<%
			//String msg = request.getParameter("msg");
			if (msg != null) {
				if (msg.equals("0"))
					out.println(" <h1>회원정보가 수정되었습니다!</h1>");
				else if (msg.equals("1"))
					out.println(" <h1>회원가입을 축하드립니다!</h1>");
				else if (msg.equals("2")) {
					String loginId = (String) session.getAttribute("sessionId");
					out.println(" <h1>" + loginId + "님 환영합니다! </h1>");
				}
			} else {
				out.println("<h1>회원정보가 삭제되었습니다.</h1>");
			}
			%>
		</div>
		<div class="rmcenterd">
			<button class="rsm" onClick="location.href='../welcome.jsp'" type="button">메인으로 가기</button>
		</div>
	</div>
		

</body>
</html>