<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
	<h1>PetProfile</h1>
	
	<%
		String ownerId = (String) session.getAttribute("sessionId");
		
		
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		
		try{
			String sql="select * from pet where owner_id='"+ownerId+"'";
			pstmt=conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()){
				String name = rs.getString("name");
				int age = rs.getInt("age");
				out.println(name + age);
			}
		}catch (SQLException ex){
		
		}
		
	%>
</body>
</html>