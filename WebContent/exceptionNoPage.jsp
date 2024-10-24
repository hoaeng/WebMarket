<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="./resources/css/nopage.css?after" type="text/css">
<title>페이지 오류</title>
<h1>404 Error Page</h1>
<p class="zoom-area"><b>요청하신 페이지를 찾을 수 없습니다.</b> <%=request.getRequestURL()%> </p>
<section class="error-container">
  <span class="four"><span class="screen-reader-text">4</span></span>
  <span class="zero"><span class="screen-reader-text">0</span></span>
  <span class="four"><span class="screen-reader-text">4</span></span>
</section>
<div class="link-container">
  <a href="welcome.jsp" class="more-link">메인으로 가기</a>
</div>