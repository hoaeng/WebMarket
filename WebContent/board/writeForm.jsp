<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String name = (String) request.getAttribute("name");
int board_type = Integer.parseInt(request.getParameter("board_type"));
%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>글쓰기</title>
</head>
<script type="text/javascript">
	function checkForm() {
		if (!document.newWrite.name.value) {
			alert("성명을 입력하세요.");
			return false;
		}
		if (!document.newWrite.subject.value) {
			alert("제목을 입력하세요.");
			return false;
		}
		if (!document.newWrite.content.value) {
			alert("내용을 입력하세요.");
			return false;
		}
	}
</script>
<body
	style="background-image: linear-gradient(to right, #e37682, #5f4d93);">
	<jsp:include page="../menu.jsp" />
	<div class="jumbotron"
		style="background-color: white; width: 1140px; margin: 0 auto; height: 60px; line-height: 60px; text-align: center; margin-bottom: 0; border-top-left-radius: 4px; border-top-right-radius:4px; margin-top: 15px; padding: 0px">
		<div class="container">
			<h1 class="display-3">게시판</h1>
		</div>
	</div>

	<div class="container" style="background-color: white; padding-top: 120px;">

		<form name="newWrite" action="./BoardWriteAction.do"
			class="form-horizontal" method="post" onsubmit="return checkForm()">
			<div class="form-group  row">
				<label class="col-sm-2">업로드 게시판</label>
				<div class="col-sm-10">
					<%
					if (board_type == 1) {
					%>
					<input name="board_type" type="radio" value="1" checked style="margin-left: 53px; margin-right: 53px;"/><input name="board_type" type="radio" value="0" style="margin-left: 53px; margin-right: 53px;"/> <br>
					아이디어 게시판 
					커뮤니티 게시판
					<%
					} else if (board_type == 0) {
					%>
					<input name="board_type" type="radio" value="0" checked style="margin-left: 53px; margin-right: 53px;"/><input name="board_type" type="radio" value="1" style="margin-left: 53px; margin-right: 53px;"/> <br>
					커뮤니티 게시판 
					아이디어 게시판
					<%
					}
					%>
				</div>
			</div>
			<br>
			<div class="form-group row">
				<label class="col-sm-2 control-label">제목</label>
				<div class="col-sm-5">

					<input name="subject" type="text" class="form-control"
						placeholder="subject">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 control-label">내용</label>
				<div class="col-sm-8">
					<textarea name="content" cols="50" rows="5" class="form-control"
						placeholder="content"
						style="resize: none; width: 100%; height: 450px;"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="submit" class="btn btn-primary " value="등록 ">
					<input type="reset" class="btn btn-primary " value="취소 ">
				</div>
			</div>
		</form>
		<hr>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>
