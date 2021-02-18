<%-- [3_1. 로그인 처리 페이지]
	- 세션관리: 로그인 성공 후 세션 관리 회원 id 부여
	- 로그인 처리	@minhee --%>
	
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%> 
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.UserDTO" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 리뷰 작성 사이트</title>
</head>
<body>
	<%
	String userID = null;
	if(session.getAttribute("userID") != null) {
		userID = (String)session.getAttribute("userID");
	}
	if(userID != null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 로그인 되어있습니다.')");
		script.println("location.href = main2.jsp");
		script.println("</script>");
	}
	
	UserDAO userDAO = new UserDAO();
		int result = userDAO.login(user.getUserID(), user.getUserPassword());
		if(result == 1) { // login 성공
			session.setAttribute("userID", user.getUserID()); // 세션 부여
			PrintWriter script = response.getWriter();
			script.print("<script>");
			script.print("location.href = 'main.jsp'");
			script.print("</script>");
		} else if(result == 0) { // password 불일치
			PrintWriter script = response.getWriter();
			script.print("<script>");
			script.print("alert('비밀번호가 틀립니다.')");
			script.print("history.back()"); // 이전 페이지(login.jsp)로 돌려보냄
			script.print("</script>");
		} else if(result == -1) { // ID 없음
			PrintWriter script = response.getWriter();
			script.print("<script>");
			script.print("alert('존재하지 않는 아이디입니다.')");
			script.print("history.back()"); 
			script.print("</script>");
		} else if(result == -2) { // 데이터베이스 오류
			PrintWriter script = response.getWriter();
			script.print("<script>");
			script.print("alert('데이터베이스 오류가 발생했습니다.')");
			script.print("history.back()"); 
			script.print("</script>");
		}
	%>
</body>
</html>