<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>INSPRE</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
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
			<h1>INSPRE</h1>
			<p>
				당신의 아이디어 지금 공유하세요<br /> 계정이 없나요? 지금 <a
					href="./member/loginMember.jsp">로그인</a> 하기
			</p>
		</header>

		<!-- Nav -->
		<nav id="nav">
			<ul>
				<li><a href="#intro" class="active">소개</a></li>
				<li><a href="#first">랭킹</a></li>
				<li><a href="#second">커뮤니티</a></li>
				<li><a href="#cta">프리미엄</a></li>
				<li><a href="./login.jsp">login</a></li>
			</ul>
		</nav>

		<!-- Main -->
		<div id="main">

			<!-- Introduction -->
			<section id="intro" class="main">
				<div class="spotlight">
					<div class="content">
						<header class="major">
							<h2>INSPIRE</h2>
						</header>
						<p>저희 사이트는 아이디어를 공유할 수 있는 사이트입니다.</p>
						<ul class="actions">
							<li><a href="generic.html" class="button">Learn More</a></li>
						</ul>
					</div>
					<span class="image"><img src="images/pic01.jpg" alt="" /></span>
				</div>
			</section>

			<!-- First Section -->
			<section id="first" class="main special">
				<header class="major">
					<h2>랭킹</h2>
				</header>
				<div>
					<table class="table">
						<tr>
							<td colspan="2"><h2>게시판</h2></td>
						</tr>
						<tr class="header">
							<td class="num">번호</td>
							<td class="title">제목</td>
							<td>작성자</td>
							<td>작성날짜</td>
						</tr>
						<script>
							var i, day = 20;
							for (i = 10; i > 0; i--) {
								document.write("<tr class='body'>");
								document.write("<td>" + i + "</td>");
								document.write("<td class='title'>제목입니다.</td>");
								document.write("<td>작성자</td>");
								document.write("<td>24-01-" + day-- + "</td>");
								document.write("</tr>");
							}
						</script>
					</table>
				</div>
				<footer class="major">
					<ul class="actions special">
						<li><a href="generic.html" class="button">Learn More</a></li>
					</ul>
				</footer>
			</section>

			<!-- Second Section -->
			<section id="second" class="main special">
				<header class="major">
					<h2>커뮤니티</h2>
					<p>
						Donec imperdiet consequat consequat. Suspendisse feugiat congue<br />
						posuere. Nulla massa urna, fermentum eget quam aliquet.
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
				<p class="content">Nam elementum nisl et mi a commodo porttitor.
					Morbi sit amet nisl eu arcu faucibus hendrerit vel a risus. Nam a
					orci mi, elementum ac arcu sit amet, fermentum pellentesque et
					purus. Integer maximus varius lorem, sed convallis diam accumsan
					sed. Etiam porttitor placerat sapien, sed eleifend a enim pulvinar
					faucibus semper quis ut arcu. Ut non nisl a mollis est efficitur
					vestibulum. Integer eget purus nec nulla mattis et accumsan ut
					magna libero. Morbi auctor iaculis porttitor. Sed ut magna ac risus
					et hendrerit scelerisque. Praesent eleifend lacus in lectus aliquam
					porta. Cras eu ornare dui curabitur lacinia.</p>
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
						Donec imperdiet consequat consequat. Suspendisse feugiat congue<br />
						posuere. Nulla massa urna, fermentum eget quam aliquet.
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
				&copy; Untitled. Design: <a href="https://html5up.net">HTML5 UP</a>.
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