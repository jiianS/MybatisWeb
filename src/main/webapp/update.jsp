<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 정보 수정</title>
</head>
<body>
	<%
		HashMap<String, Object> data 
			= (HashMap<String, Object>) request.getAttribute("data");
		String html = data.toString();
		
	%>
<h1>회원정보 수정</h1>
<p>
	<form action ="M_update">
		이      름 :  <input type="text" name = "name" placeholder="이름을 입력하세요"><br>
		I   D :  <%=data.get("id") %>
		비밀번호 :  <input type="text" name = "password" placeholder="비밀번호를 입력하세요"> <br>
		설      명 :  <input type="text" name = "account" placeholder="설명 입력하세요?"><br>
		
		<input type="submit" value="수정">
		<input type="reset" value = "취소">	
	</form>

</p>


</body>
</html>