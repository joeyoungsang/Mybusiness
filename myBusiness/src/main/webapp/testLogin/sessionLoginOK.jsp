<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("idKey");
	if(id == null){
%>
	<script>
		alert("로그인되지 않았습니다.");
		location.href="sessionLogin.jsp";
	</script>
<%} %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
			<tr>
				<td>
					<form method="post" action="sessionLoginProc.jsp">
						<table>
							<tr>
								<td><%=id %>님이 로그인하셨습니다.</td>
							</tr>
							<tr>
								<td><a href="../ch11/usingJDBCBean.jsp">전체 정보 조회</a></td>
							</tr>
							<tr>
								<td><a href="myInfo.jsp">본인 정보 조회</a></td>
							</tr>
							<tr>
								<td><a href = "sessionLogout.jsp">Log out</a></td>
							</tr>
						</table>
					</form></td>
				</tr>
		</table>
</body>
</html>