<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보 확인</title>
</head>
<body>
	<%
		HashMap<String, Object> data 
			= (HashMap<String, Object>) request.getAttribute("data");
		String html = data.toString();
		
	%>
	
	<h1> 회원 정보 </h1>
	<p> 
		이름 : <%= data.get("name") %> <br>
		ID : <%= data.get("id") %> <br>
		설명 : <%= data.get("account") %> <br>	
	</p>
	
	
	<a href = "update.jsp?id=<%=data.get("id") %>"> 수정 </a>
	<a href = "m_login.jsp"> 확인 </a>
	
	


</body>
</html>