<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css?after" />
	<title>Login</title>
	<style>

	</style>
</head>
<body>
	<div align="center">
		<h1 class="display-3">로그인</h1>
	</div>

	
	<div align="center">
			<h3 >Please sign in</h3>
			<%
				String error = request.getParameter("error");
				if (error != null) {
					out.println("<script> alert('아이디와 비밀번호를 확인해 주세요'); </script>");
				}
			%>
			<form action="processLoginMember.jsp" method="post">
				 <div>
					<label for="inputUserName" >ID : </label> 
					<input type="text" class="input-1" placeholder="ID" name="id" required autofocus>
				</div>
				<div>
					<label for="inputPassword" >Password : </label> 
					<input type="password" class="input-1" placeholder="Password" name="password" required>
				</div>
				<br>
				<button type="submit">로그인</button>
				<button type="button" onClick="location.href='addMember.jsp'">회원가입</button>
			</form>
			
			
	</div>
</body>
</html>