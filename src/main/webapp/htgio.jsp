<%@page import="bean.giohangbean"%>
<%@page import="bo.giohangbo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.sachbo"%>
<%@page import="dao.loaidao"%>
<%@page import="bean.loaibean"%>
<%@page import="bo.loaibo"%>
<%@page import="dao.sachdao"%>
<%@page import="bean.sachbean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Menu</title>
  <meta charset="utf-8">
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
      <li> <a href="Menu.jsp">Trang chủ</a></li>
      <li class="active">><a href="giohang.jsp">Giỏ hàng</a></li>
      <li><a href="DatHang.jsp">Thanh toán</a></li>
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

<% 	loaibo lbo = new loaibo(); 
	sachbo sbo = new sachbo(); 
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
%>
<table class="table">
  	<tr>
  	<td valign = "top" width = "600">
  		<table class ="table">
  			<%
  				giohangbo gh= (giohangbo)session.getAttribute("gh");
  			if(gh == null){
  				for(giohangbean g : gh.ds){
  				%>
  					<tr>
  					<td> <%=g.getMasach() %></td>
  					<td> <%=g.getTensach() %></td>
  					<td> <%=g.getGia () %></td>
  					<td> <%=g.getSoluongmua() %></td>
  					<td> <%=g.getThanhtien() %></td>
  					<td>
  					<form action = "xoasua.jsp" method = "post">
						<input type="number" name ="txtsl" style = "width: 50px;"><br>
						<input type = "submit" name = "th" value = "+" class = "btn-primary">
					</form>
  					</td>
  					<td>
  					<a href = "xoasua.jsp?ms=<%=g.getMasach()%>" >
  						
  					</a>
  					</td>
  				<% }%>	
  			<% } %>
  			
  		</table>
	  	
	<td>
		<form action = "Menu.jsp" method = "post">
			<input type = "text" name= "txttk" value="0" class ="form-control"><br>
			<input type = "submit" name = "th" value = "Tìm kiếm" >
		</form>
	</td>
	</tr>
</table>
</body>
</html>
