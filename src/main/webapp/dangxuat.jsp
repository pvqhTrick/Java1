<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<body>
<%
	session.removeAttribute("dn");
	session.removeAttribute("gh");
	response.sendRedirect("Menu.jsp");
%>
</body>
</html>