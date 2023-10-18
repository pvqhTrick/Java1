<%@page import="bo.giohangbo"%>
<%@page import="Tam.CGioHang"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO8859-1">
	<title>Đặt hàng</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<style type="text/css"> padding =10px;</style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <ul class="nav navbar-nav">
      <li ><a href="Menu.jsp">Trang chủ</a></li>
      <li><a href="giohang.jsp">Giỏ 	hàng</a></li>
      <li class="active"><a href="#">Thanh toán</a></li>
      <li><a href="#">Lịch sử mua hàng</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
    	<%
    		String un=(String)session.getAttribute("dn");
    		if(un!= null){
    	%>
      <li><a href="#"> Xin chào: <%=un %></a></li>
       <li><a href="dangxuat.jsp"><span class="glyphicon glyphicon-log-out"></span> Đăng xuất</a></li>
       <%}else{ %>
      <li><a href="dangnhap.jsp"><span class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>
      <li><a href="dangky.jsp"><span class="glyphicon glyphicon-user"></span> Đăng ký</a></li>
      <%} %>
    </ul>
  </div>
</nav>

	<%
	
	String ms= request.getParameter("ms");
	String ts= request.getParameter("ts");
	String gia= request.getParameter("gia");
	if(ms!=null&&gia!=null&&ts!=null){
		
	//CGioHang g= new CGioHang();
		giohangbo gh = null;
		 //Neu mua hang lan dau
		 if(session.getAttribute("gh")==null){
			gh = new giohangbo();
		 	session.setAttribute("gh", gh);//Tao gio
		 }
		 //Gian session: gh vao bien: gh
		 gh=(giohangbo)session.getAttribute("gh");
		 //Them hang vao bien: gh
		 gh.Them(ms,ts,Long.parseLong(gia), (long)1, "");
		 
		 //Luu bien vao session
		 session.setAttribute("gh", gh);
		 response.sendRedirect("giohang.jsp");
	}
	//Hien thi do trong session: gh
	%>
</body>
</html>
 
