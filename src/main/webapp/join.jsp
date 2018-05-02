<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<body>
<h1>회원가입</h1>

<p>
	<form action ="Join">
		이      름 :  <input type="text" name = "name" placeholder="이름을 입력하세요"><br>
		I   D :  <input type="text" name = "id" placeholder="아이디를 입력하세요"><br>
		비밀번호 :  <input type="text" name = "password" placeholder="비밀번호를 입력하세요"> <br>
		설      명 :  <input type="text" name = "account" placeholder="설명 입력하세요?"><br>
		
		<input type="submit" value="가입">
		<input type="reset" value = "다시 입력하기">	
	</form>

</p>

<a href="Login">가입 취소+ 메인으로</a>

</body>
</html>