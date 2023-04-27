<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id=(String )session.getAttribute("idKey");
	if(id!=null){

%>
	<script>
		alert("로그인 되었습니다.");
		location.href="sessionLoginOK.jsp";
	</script>
<%
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Session 로그인</h2>
		<table>
			<tr>
				<td>
					<form method="post" action="sessionLoginProc.jsp">
						<table>
							<tr>
								<td>ID</td>
								<td><input name="id"></td>
							</tr>
							<tr>
								<td>PWD</td>
								<td><input name="pwd"></td>
							</tr>
							<tr>
								<td>
									<input type="submit" value="login">
									<input type="reset" value="reset">
								</td>
							</tr>
						</table>
					</form></td>
				</tr>
		</table>
</body>
</html>