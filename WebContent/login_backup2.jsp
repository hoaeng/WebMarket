<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<title>로그인</title>


</head>
<body class="is-preload">
	<div id="wrapper">


		<header id="header" class="alt">
			<span class="logo"><img src="images/logo.svg" alt="" /></span>
			<h1>시작하기</h1>
			<p>
				당신의 아이디어를 공유해보세요<br /> <a href="./index.html">메인메뉴</a>로 돌아가기
			</p>
		</header>

		<div id="main">

			<section id="first" class="main special">
				<header class="major">
					<h2>로그인</h2>
				</header>
				<div class="major">
					<div class="container">
						<div class="col-md-4 col-md-offset-4" align="center">
							<h3 class="form-signin-heading"></h3>
							<%
							String error = request.getParameter("error");
							if (error != null) {
								out.println("<div>");
								out.println("아이디와 비밀번호를 확인해 주세요");
								out.println("</div>");
							}
							%>
							<form class="form-signin" action="j_security_check" method="post">
								<div class="form-group">
									<label for="inputUserName" class="sr-only">User Name</label> <input
										type="text" class="form-control" placeholder="ID"
										name='j_username' required autofocus>
								</div>
								<h4></h4>
								<div class="form-group">
									<label for="inputPassword" class="sr-only">Password</label> <input
										type="password" class="form-control" placeholder="Password"
										name='j_password' required>
								</div>
							</form>
							<p>계정이 없으신가요? <a href="./index.html">가입</a>하기</p>
						</div>
					</div>
				</div>
				<footer class="major">
					<ul class="actions special">
						<li><button class="button" type="submit">로그인</button></li>
					</ul>
				</footer>
			</section>
		</div>
	</div>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
</body>
</html>