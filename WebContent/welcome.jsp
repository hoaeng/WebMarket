<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String sessionId = (String) session.getAttribute("sessionId");
%>
<html>
<html lang="ko">
<head>
<title>INSPIRE</title>
<meta charset="utf-8" />
<meta name="vie	wport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header" class="alt">
			<span class="logo"><img src="images/logo.svg" alt="" /></span>
			<h1>INSPIRE</h1>
			<c:choose>
				<c:when test="${empty sessionId}">
					<p>
						당신의 아이디어, 지금 공유하세요<br /> 계정이 없나요? 지금 <a
							href="./member/loginMember.jsp">로그인</a> 하기
					</p>
				</c:when>
				<c:otherwise>
					<p>당신의 아이디어, 지금 공유하세요!</p>
				</c:otherwise>
			</c:choose>
		</header>

		<!-- Nav -->
		<nav id="nav">
			<ul>
				<c:choose>
					<c:when test="${empty sessionId}">
						<li><a href="#intro" class="active">소개</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="#intro" class="active">프로필</a></li>
					</c:otherwise>
				</c:choose>
				<li><a href="#first">아이디어 목록</a></li>
				<li><a href="#second">MY아이디어</a></li>
				<li><a href="#cta">프리미엄</a></li>
				
				<c:choose>
					<c:when test="${empty sessionId}">
					</c:when>
					<c:otherwise>
						<li><a href="./member/logoutMember.jsp">로그아웃</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</nav>

		<!-- Main -->
		<div id="main">

			<!-- Introduction -->
			<section id="intro" class="main">
				<div class="spotlight">
					<c:choose>
						<c:when test="${empty sessionId}">
							<div class="content">
								<header class="major">
									<h2>INSPIRE</h2>
								</header>
								<p>저희 사이트는 아이디어를 공유할 수 있는 사이트입니다.</p>
								<ul class="actions">
									<li><a href="./member/loginMember.jsp" class="button">시작하기</a></li>
								</ul>
							</div>
							<span class="image"><img src="images/pic01.jpg" alt="" /></span>
						</c:when>
						<c:otherwise>
							<div class="content">
								<header class="major">
									<h2><%=sessionId%></h2>
								</header>
								<p>프로필 편집하러 가기</p>
								<ul class="actions">
									<li><a href="./member/updateMember.jsp" class="button">프로필 관리</a></li>
								</ul>
							</div>
							<span class="image"><img src="images/pic01.jpg" alt="" /></span>
						</c:otherwise>
					</c:choose>
				</div>
			</section>

			<!-- First Section -->
			<section id="first" class="main special">
				<header class="major">
					<h2>아이디어 목록</h2>
				</header>
				<ul class="features">
					<li><span class="material-symbols-outlined"
						style="font-size: 150px;">social_leaderboard</span>
						<h3>랭킹</h3>
						<p>주간, 월간 등 기간 인기 아이디어 목록을 확인할 수 있습니다</p> <a href="./BoardListAction.do?pageNum=1&board_type=2"
						class="button">랭킹</a></li>
					<li><span class="material-symbols-outlined"
						style="font-size: 150px;">lightbulb_circle</span>
						<h3>아이디어</h3>
						<p>아이디어 게시판으로 이동합니다.</p><br> <a href="./BoardListAction.do?pageNum=1&board_type=1" class="button">아이디어</a></li>
					<li><span class="material-symbols-outlined"
						style="font-size: 150px;">forum</span>
						<h3>커뮤니티</h3>
						<p>커뮤니티로 이동합니다.</p><br> <a href="./BoardListAction.do?pageNum=1&board_type=0" class="button">커뮤니티</a></li>
				</ul>
				<footer class="major">
					<ul class="actions special">
						<li><a href="generic.html" class="button">Learn More</a></li>
					</ul>
				</footer>
			</section>
			<!-- Second Section -->
			<section id="second" class="main special">
            <header class="major">
               <h2>MY 아이디어</h2>
               <p>
                  자신만의 아이디어를 만들고 수정해 보세요.<br>
                  많은 사람들에게 자신의 아이디어를 공유해 보세요.
               </p>
            </header>
            <ul class="statistics">
               <li class="style1"><span class="icon solid fa-code-branch"></span>
                  <strong>5,120</strong> Etiam</li>
               <li class="style2"><span class="icon fa-folder-open"></span> <strong>8,192</strong>
                  Magna</li>
               <li class="style3"><span class="icon solid fa-signal"></span>
                  <strong>2,048</strong> Tempus</li>
               <li class="style4"><span class="icon solid fa-laptop"></span>
                  <strong>4,096</strong> Aliquam</li>
               <li class="style5"><span class="icon fa-gem"></span> <strong>1,024</strong>
                  Nullam</li>
            </ul>
            <footer class="major">
               <ul class="actions special">
                  <li><a href="generic.html" class="button">Learn More</a></li>
               </ul>
            </footer>
         </section>

			<!-- Get Started -->
			<section id="cta" class="main special">
				<header class="major">
					<h2>프리미엄</h2>
					<p>
						프리미엄을 통해 유료 아이디어를 게시해 수익을 창출하고, 모든 아이디어를 마음껏 확인하세요!<br />
                  모든 유료 프로그램과 회원 혜택을 통해 더 질 좋은 아이디어들의 주인이 되어보세요!
					</p>
				</header>
				<footer class="major">
					<ul class="actions special">
						<li><a href="generic.html" class="button primary">Get
								Started</a></li>
						<li><a href="generic.html" class="button">Learn More</a></li>
					</ul>
				</footer>
			</section>
		</div>

		<!-- Footer -->
		<footer id="footer">
			<section>
				<h2>Aliquam sed mauris</h2>
				<p>Sed lorem ipsum dolor sit amet et nullam consequat feugiat
					consequat magna adipiscing tempus etiam dolore veroeros. eget
					dapibus mauris. Cras aliquet, nisl ut viverra sollicitudin, ligula
					erat egestas velit, vitae tincidunt odio.</p>
				<ul class="actions">
					<li><a href="generic.html" class="button">Learn More</a></li>
				</ul>
			</section>
			<section>
				<h2>Etiam feugiat</h2>
				<dl class="alt">
					<dt>Address</dt>
					<dd>1234 Somewhere Road &bull; Nashville, TN 00000 &bull; USA</dd>
					<dt>Phone</dt>
					<dd>(000) 000-0000 x 0000</dd>
					<dt>Email</dt>
					<dd>
						<a href="#">information@untitled.tld</a>
					</dd>
				</dl>
				<ul class="icons">
					<li><a href="#" class="icon brands fa-twitter alt"><span
							class="label">Twitter</span></a></li>
					<li><a href="#" class="icon brands fa-facebook-f alt"><span
							class="label">Facebook</span></a></li>
					<li><a href="#" class="icon brands fa-instagram alt"><span
							class="label">Instagram</span></a></li>
					<li><a href="#" class="icon brands fa-github alt"><span
							class="label">GitHub</span></a></li>
					<li><a href="#" class="icon brands fa-dribbble alt"><span
							class="label">Dribbble</span></a></li>
				</ul>
			</section>
			<p class="copyright">
				&copy; INSPIRE</a>
			</p>
		</footer>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>