<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>
</head>
<body>
<%
	//lay ve un,pass
	//neu un = abc va pass = 123
	//tao ra 1 session ten la dn, gan un vao session
	
	//Quay ve trang menu
//Nguoc lai: Hien thi tb
	String un 	= request.getParameter("txtun");
	String pass = request.getParameter("txtpass");

	if(un!= null && pass != null){
		if(un.equals("abc") && pass.equals("123")){
			session.setAttribute("dn",(String)un);
			response.sendRedirect("Menu.jsp");
		}
		else{
			out.print ("Thong tin dang nhap sai!!");
		}
	}
	
	
%>

<form action = "dangnhap.jsp" method = "post">
		Username = <input type="text" name ="txtun"><br>
		Password = <input type="password" name ="txtpass"><br>
		<input type = "submit" name = "th" value = "Đăng nhập">
</form>
</body>
</html>