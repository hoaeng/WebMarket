﻿<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<%!String greeting = "웹 쇼핑몰에 오신 것을 환영합니다";
	String tagline = "Welcome to Web Market!";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>	
	<div class="container">
		<div class="text-center">
			수정해서 내용을 보강하는곳
			
		</div>
		<hr>
	</div>	
	<%@ include file="footer.jsp"%>
</body>
</html>