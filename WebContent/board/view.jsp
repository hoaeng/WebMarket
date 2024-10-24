<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="mvc.model.BoardDTO"%>

<%
BoardDTO notice = (BoardDTO) request.getAttribute("board");
int num = ((Integer) request.getAttribute("num")).intValue();
int nowpage = ((Integer) request.getAttribute("page")).intValue();
%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>Board</title>
</head>
<body>
	<jsp:include page="../menu.jsp" />
	<div class="jumbotron"
		style="background-color: white; width: 1140px; height: 60px; text-align: center; margin-bottom: 0; border-radius: 4px; margin-top: 15px; padding: 0px">
		<div class="container">
			<h1 class="display-3"
				style="color: #000; font-weight: bolder; font-size: 30px; line-height: 60px">게시판</h1>
		</div>
	</div>

	<div class="container"
		style="background-color: white; margin-top: 0; height: 100%; border-radius: 4px;">
		<form name="newUpdate"
			action="BoardUpdateAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowpage%>"
			class="form-horizontal" method="post">
			<div class="form-group row">
				<label class="col-sm-2 control-label">성명</label> 
				<div class="col-sm-3">
					<%=notice.getName()%> <!--  글쓴이로 바꿔야  됨 -->
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 control-label">제목</label>
				<div class="col-sm-5">
					<%=notice.getSubject()%> <!-- 제목 -->
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 control-label">내용</label>
				<div class="col-sm-8" style="word-break: break-all;">
					<div>
						<%=notice.getContent()%> <!-- 글 내용 -->
					</div>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<c:set var="userId" value="<%=notice.getId()%>" />
					<c:if test="${sessionId==userId}">
						<p>
							<a
								href="./BoardDeleteAction.do?num=<%=notice.getNum()%>&pageNum=<%=nowpage%>"
								class="btn btn-danger"> 삭제</a> <input type="submit"
								class="btn btn-success" value="수정 ">
					</c:if>
					<a href="./BoardListAction.do?pageNum=<%=nowpage%>"
						class="btn btn-primary"> 목록</a>
				</div>
			</div>
		</form>
		<hr>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>
