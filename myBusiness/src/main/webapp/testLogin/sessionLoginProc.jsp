<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="regMgr" class="Test.RegisterMgr" />
<%
	String id="";
	String pwd="";
	if (request.getParameter("id") != null)
		id = request.getParameter("id");
	if (request.getParameter("pwd") != null)
		pwd = request.getParameter("pwd");
	if (regMgr.loginRegister(id,pwd))  {
		session.setAttribute("idKey",id);
%>
	<script>
		alert("로그인 되었습니다.")
			location.href="sessionLoginOK.jsp"
	</script>
<% }else{ %>
	<script>
		alert("로그인 되지않았습니다.")
			location.href="sessionLogin.jsp"
	</script>
<%} %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>