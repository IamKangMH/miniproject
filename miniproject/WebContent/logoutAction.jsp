<%-- 로그아웃 처리 페이지 @minhee --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 리뷰 작성 사이트</title>
</head>
<body>
<%
	session.invalidate();
%>
<script>
	location.href = "main.jsp";
</script>
</body>
</html>