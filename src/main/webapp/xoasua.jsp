<%@page import="bo.giohangbo"%>
<%@page import="bean.giohangbean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Xóa sửa</title>
</head>
<body>
<%
giohangbo g=(giohangbo)session.getAttribute("gh");

String ms= request.getParameter("ms");


String sl= request.getParameter("txtsl");
if(sl != null){
	g.Them(ms, "", (long)0, Long.parseLong(sl), "");	
}
else{
	g.Xoa(ms);
}

session.setAttribute("gh", g);
response.sendRedirect("giohang.jsp");

%>
</body>
</html>