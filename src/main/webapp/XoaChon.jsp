<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Xóa chọn</title>
</head>
<body>
	<%
		String[] ds= request.getParameterValues("c1");
		out.print("danh sach ca ma sach vua chon: ");
		if(ds!=null)
			for(String pt: ds ){
				out.print(pt+ "<br>");
			}
		String ms = request.getParameter("but1");
		String slsua = request.getParameter(ms);
		out.print(ms +":"+ slsua);
	%>
</body>
</html>