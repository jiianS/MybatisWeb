<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

		<h3>로그인</h3>
		<p>
		<form action="MemberInfo" method="post">
			<input type="text" name="id" placeholder="아이디를 입력하세요."><br>
			<input type="text" name="password" placeholder="비밀번호를 입력하세요."><br>
			

			<input type="submit" value="로그인">
		</form>

		<form action="M_join.jsp">
			<input type="submit" value="회원가입">
		</form>
		</p>


</body>
</html>
