<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String value_a = request.getParameter("txta");
		String value_b = request.getParameter("txtb");
		String btnCong = request.getParameter("btnCong");
		String btnTru = request.getParameter("btnTru");
		String btnNhan = request.getParameter("btnNhan");
		String btnChia = request.getParameter("btnChia");
			
		int a=0, b=0,kq=0;
		if(value_a!=null && value_b !=null){
			a= Integer.parseInt(value_a);
			b= Integer.parseInt(value_b);
		}
		if(btnCong != null)
			kq = a+b;
		if(btnTru != null)
			kq = a-b;
		if(btnNhan != null)
			kq = a*b;
		if(btnChia != null && b!= 0)
			kq = a/b;
	
		//out.print("Ket qua :"  + kq);
	
		response.sendRedirect("MayTinh.jsp?kq="+kq+"&a="+a+"&b="+b);
	%>
</body>
</html>