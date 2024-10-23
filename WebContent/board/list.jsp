<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="mvc.model.BoardDTO"%>
<%
String sessionId = (String) session.getAttribute("sessionId");
List boardList = (List) request.getAttribute("boardlist");
int total_record = ((Integer) request.getAttribute("total_record")).intValue();
int pageNum = ((Integer) request.getAttribute("pageNum")).intValue();
int total_page = ((Integer) request.getAttribute("total_page")).intValue();
int board_type = ((Integer) request.getAttribute("board_Type")).intValue();
%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<%
if (board_type == 1) {
%>
<title>아이디어 게시판</title>
<%
} else if (board_type == 0) {
%>
<title>커뮤니티 게시판</title>
<%
}
%>
<script type="text/javascript">
	function checkForm() {	
		if (${sessionId==null}) {
			alert("로그인 해주세요.");
			return false;
		}

		location.href = "./BoardWriteForm.do?id=<%=sessionId%>"
	}
</script>
</head>
<body>
	<jsp:include page="../menu.jsp" />
	<div class="jumbotron"
		style="background-image: linear-gradient(to right, #e37682, #5f4d93);">
		<div class="container">
			<%
			if (board_type == 1) {
			%>
			<h1 class="display-3" style="color: white;">아이디어 게시판</h1>
			<%
			} else if (board_type == 0) {
			%>
			<h1 class="display-3" style="color: white;">커뮤니티 게시판</h1>
			<%
			}
			%>
		</div>
	</div>
	<div class="container" style="background-color: white;">
		<form action="<c:url value="./BoardListAction.do"/>" method="post">
			<hr>
			<div>
				<div align="center" style="position: relative; top: 0px">
					<table>
						<tr>
							<td width="100%" align="left">&nbsp;&nbsp; <select
								name="items" class="txt">
									<option value="subject">제목에서</option>
									<option value="content">본문에서</option>
									<option value="name">글쓴이에서</option>
							</select> <input name="text" type="text" /> <input type="submit"
								id="btnAdd" class="btn btn-primary " value="검색 " />
							</td>
						</tr>
					</table>
				</div>
				<div class="text-right">
					<span class="badge badge-success">전체 <%=total_record%>건
					</span>
				</div>
			</div>
			<div style="padding-top: 50px">
				<table class="table table-hover">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성일</th>
						<th>조회</th>
						<th>글쓴이</th>
					</tr>
					<%
					for (int j = 0; j < boardList.size(); j++) {
						BoardDTO notice = (BoardDTO) boardList.get(j);
						if(board_type == notice.getType()) {
					%>
					<tr>
						<td><%=notice.getNum()%></td>
						<td><a
							href="./BoardViewAction.do?num=<%=notice.getNum()%>&pageNum=<%=pageNum%>"><%=notice.getSubject()%></a></td>
						<td><%=notice.getRegist_day()%></td>
						<td><%=notice.getHit()%></td>
						<td><%=notice.getName()%></td>
					</tr>
					<%
						}
					}
					%>
				</table>
			</div>
			<div align="center" style="position: relative; top: 450px">
				<c:set var="pageNum" value="<%=pageNum%>" />
				<c:forEach var="i" begin="1" end="<%=total_page%>">
					<a href="<c:url value="./BoardListAction.do?pageNum=${i}" /> ">
						<c:choose>
							<c:when test="${pageNum==i}">
								<font color='4C5317'><b> [${i}]</b></font>
							</c:when>
							<c:otherwise>
								<font color='4C5317'> [${i}]</font>

							</c:otherwise>
						</c:choose>
					</a>
				</c:forEach>
			</div>
			<div align="left" style="position: relative; top: 450px">
				<table>
					<tr>
						<td width="100%" align="left">&nbsp;&nbsp; <select
							name="items" class="txt">
								<option value="subject">제목에서</option>
								<option value="content">본문에서</option>
								<option value="name">글쓴이에서</option>
						</select> <input name="text" type="text" /> <input type="submit"
							id="btnAdd" class="btn btn-primary " value="검색 " />
						</td>
						<td width="100%" align="right"><a href="#"
							onclick="checkForm(); return false;" class="btn btn-primary">&laquo;글쓰기</a>
						</td>
					</tr>
				</table>
			</div>
		</form>
		<hr style="position: relative; top: 450px">
	</div>
</body>
</html>