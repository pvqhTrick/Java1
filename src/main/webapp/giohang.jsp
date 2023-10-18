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
      <li class="active"><a href="giohang.jsp">Giỏ hàng</a></li>
      <li ><a href="#">Thanh toán</a></li>
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
	
	<%//Hien thi do trong session: gh
	giohangbo gh1 = (giohangbo)session.getAttribute("gh");
	
	
	if(session.getAttribute("gh")!=null){
		giohangbo g;
	 	g=(giohangbo)session.getAttribute("gh");
	 	int sh=g.ds.size();%>
	 	<form action = "XoaChon.jsp" method = "post">
	 	<table border='1' width='100%'>
	 		
	 		<%for(int i=0;i<sh;i++){ 
	 			//for(giohangbo gh: g.ds)%>
	 			<tr>
	 				<td><input type = "checkbox" name="c1" value="<%=g.ds.get(i).getMasach() %>">
	 				<td><%=g.ds.get(i).getMasach() %></td>
					<td><%=g.ds.get(i).getTensach() %></td>
					<td><%=g.ds.get(i).getGia() %></td>
					<td><%=g.ds.get(i).getSoluongmua() %></td>
					
					<td>
					<form method='post' action='xoasua.jsp?ms=<%=g.ds.get(i).getMasach()%>'>
						<input type='number' name="<%=g.ds.get(i).getMasach()%>">
						<button type='submit' name='but1' value='<%=g.ds.get(i).getMasach() %>'> +</button>
					</form>
		 			</td>
		 			
		 			<td><%=g.ds.get(i).getThanhtien()%></td>
		 			<td> <a href = "xoasua.jsp?ms=<%=g.ds.get(i).getMasach()%>">Xóa</a></td>			 				
	 			</tr>
			<%}%> 
		</table>
		<input type = "submit" name = "txtchon" value = "Xóa chọn" method = "post">
		</form>
		<tr>
			<td>
			</td>
		</tr>
	 <div align='right'>Tong tien: <%=g.TongTien() %></div>
		
	 <%}else {%>
	 	<h1>Giỏ hàng của bạn đang trống</h1>
	 	<a href="Menu.jsp">Trở lại menu</a>
	 <%} %>
</body>
</html>
 
