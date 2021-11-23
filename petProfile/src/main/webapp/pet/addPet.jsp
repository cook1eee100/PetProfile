<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css?after" />
	<script type="text/javascript">

	</script>
	<title>펫 등록</title>
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
		<h1>펫 등록</h1>
	</div>
	
	<div>
		<form name="newPet" action="processAddPet.jsp" method="post">
			<ul>
				<li> <label class="reg">펫 이름</label>
					<input name="name" type="text" placeholder="name" >
				</li>
				<li> <label class="reg">펫 나이</label>
					<input name="age" type="number" placeholder="age" >
				</li>
			</ul>
			
			<div>
				<input type="submit" value="등록 " > 
				<input type="reset" value="취소 " onclick="reset()" >
			</div>
		</form>
	</div>

</body>
</html>