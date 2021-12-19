<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%@ include file="dbconn.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String sex = request.getParameter("sex");
	int age = Integer.parseInt(request.getParameter("age"));
	int weight = Integer.parseInt(request.getParameter("weight"));
	String ownerId = (String) session.getAttribute("sessionId");
	
	java.util.Date currentDatetime = new java.util.Date(System.currentTimeMillis());
	java.sql.Date sqlDate = new java.sql.Date(currentDatetime.getTime());
	java.sql.Timestamp timestamp = new java.sql.Timestamp(currentDatetime.getTime());
	
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	
	
	String sql="select * from pet where owner_id='"+ownerId+"'";
	pstmt=conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	
	
	
	
%>

<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/petdb"
	driver="com.mysql.jdbc.Driver" user="root" password="1234" />






<%
	if (!rs.next()){
%>
		<sql:update dataSource="${dataSource}" var="resultSet">
			INSERT INTO pet(name, sex, age, weight, owner_id, regist_day) VALUES (?, ?, ?, ?, ?, ?)
			<sql:param value="<%=name%>" />
			<sql:param value="<%=sex%>" />
			<sql:param value="<%=age%>" />
			<sql:param value="<%=weight%>" />
			<sql:param value="<%=ownerId %>"/>
			<sql:param value="<%=timestamp%>" />
		</sql:update>
<%
	} else{
%>
		<sql:update dataSource="${dataSource}" var="resultSet">
		UPDATE pet SET name=?, sex=?, age=?, weight=?
		<sql:param value="<%=name%>" />
		<sql:param value="<%=sex%>" />
		<sql:param value="<%=age%>" />
		<sql:param value="<%=weight%>" />
	</sql:update>
<%	
	}
%>


<c:if test="${resultSet>=1}">
	<c:redirect url="resultPet.jsp?msg=1" />
</c:if>

