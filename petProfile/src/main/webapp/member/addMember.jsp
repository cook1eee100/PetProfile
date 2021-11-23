<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css?after" />
	<script type="text/javascript">
		function checkForm() {
			if (!document.newMember.id.value) {
				alert("아이디를 입력하세요.");
				return false;
			}
	
			if (!document.newMember.password.value) {
				alert("비밀번호를 입력하세요.");
				return false;
			}
	
			if (document.newMember.password.value != document.newMember.password_confirm.value) {
				alert("비밀번호를 동일하게 입력하세요.");
				return false;
			}
		}
	</script>
	<title>회원 가입</title>
	<style>
		form label.reg {
            font-size: 14px;
            width: 120px;
            float: left;
        }
		form fieldset {
            margin: 10px 0px;
        }
        ul{
	   		list-style:none;
	   	}
	</style>
</head>
<body>
	<div>
		<h1>회원 가입</h1>
	</div>
	
	<div>
		<form name="newMember" action="processAddMember.jsp" method="post" onsubmit="return checkForm()">
			<ul>
				<li> <label class="reg">아이디</label>
					<input name="id" type="text" placeholder="id" >
				</li>
				<li> <label class="reg">비밀번호</label>
					<input name="password" type="password" placeholder="password" >
				</li>
				<li> <label class="reg">비밀번호확인</label>
					<input name="password_confirm" type="password" placeholder="password confirm" >
				</li>
				<li> <label class="reg">성명</label>
					<input name="name" type="text" placeholder="name" >
				</li>
				<li> <label class="reg">전화번호</label>
					<input name="phone" type="text" class="input-1" placeholder="phone" >
				</li>
			</ul>
			
			<div>
				<input type="submit" class="btn btn-primary " value="등록 " > 
				<input type="reset" class="btn btn-primary " value="취소 " onclick="reset()" >
			</div>
		</form>
	</div>

</body>
</html>