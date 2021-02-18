<%-- [7.영화 리뷰 작성 페이지] @minhee --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.PrintWriter" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>영화 리뷰 작성 사이트</title>
</head>
<body>
<%
	String userID = null;
	if(session.getAttribute("userID") != null) {
		userID = (String)session.getAttribute("userID");
	}
%>

<nav class="navbar navbar-default">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			aria-expanded="false">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>		
		</button>
		<a class="navbar-brand" href="main.jsp">영화 리뷰 소장</a>	
	</div>
	
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		
<%-- 로그인 되어있지 않은 사람들은 회원가입이나 로그인을 할 수 있도록. --%>		
		<% 
			if (userID == null) {
		%>
			<ul class="nav navbar-nav">
				<li><a href="join.jsp">회원가입</a></li>
				<li><a href="login.jsp">로그인</a></li>
			</ul>
		<%
			} else {
		%>
			<ul class="nav navbar-nav">
				<li><a href="logoutAction.jsp">로그아웃</a></li>
			</ul>
		<%
			}
		%>

			<ul class="nav navbar-nav navbar-right">
			<li class="dropdown">
				<a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">메뉴<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="movie.jsp">현재 상영작</a></li>
					<li><a href="pre_movie.jsp">상영 예정작</a></li>
					<li class="active"><a href="review_write.jsp">영화 리뷰</a></li>
				</ul>
			</li>
		</ul>
	</div>
</nav>



<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>