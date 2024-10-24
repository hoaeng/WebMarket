<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<nav class="navbar navbar-expand  navbar-dark bg-dark">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="./welcome.jsp">Home</a>
		</div>
		<div>
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="<c:url value="/BoardListAction.do?pageNum=1&board_type=1"/>">아이디어 게시판</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/BoardListAction.do?pageNum=1&board_type=0"/>">커뮤니티 게시판</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/BoardListAction.do?pageNum=1&board_type=2"/>">랭킹</a></li>
				<c:choose>
					<c:when test="${empty sessionId}">
						<li class="nav-item"><a class="nav-link" href="<c:url value="/member/loginMember.jsp"/>">로그인 </a></li>
						<li class="nav-item"><a class="nav-link" href='<c:url value="/member/addMember.jsp"/>'>회원 가입</a></li>
					</c:when>
					<c:otherwise>
						<li style="padding-top: 7px; color: white"><%=sessionId%>님</li>
						<li class="nav-item"><a class="nav-link" href="<c:url value="/member/logoutMember.jsp"/>">로그아웃 </a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>
</nav>
