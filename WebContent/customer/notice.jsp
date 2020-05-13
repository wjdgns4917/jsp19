<%@page import="notice.vo.Notice"%>
<%@page import="java.util.List"%>
<%@page import="notice.dao.NoticeDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>notice.jsp</title>
<link rel="stylesheet" href="../css/nstyle.css" />
</head>
<body>
<c:if test="${empty sessionScope.uid }">
<a href="../login/login.do">login</a>
</c:if>

<c:if test="${not empty sessionScope.uid }">
<a href="../login/logoutProc.do">logout</a>
</c:if>

<a href="/join.do">join</a>
<c:if test="${not empty uid }">
	${uid } 님 하위~
</c:if>

</body>
</html>
