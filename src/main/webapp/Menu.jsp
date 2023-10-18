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
      <li class="active"><a href="Menu.jsp">Trang chủ</a></li>
      <li><a href="giohang.jsp">Giỏ hàng</a></li>
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
  	<td valign = "top" width = "200">
  		<table class ="table table-hover">
  			<%for(loaibean items: lbo.getloai()){ %>
  			<tr>
  			<td>
  				<a href="Menu.jsp?ml=<%=items.getMaloai()%>"><%=items.getTenloai()%></a>
  			</td>
  			</tr>
  			<%} %>
  		</table>
	</td>
  	<td valign = "top" width = "600">
  		<table class ="table">
  			<%
  				String ml = request.getParameter("ml");
  				String key= request.getParameter("txttk");
  				ArrayList<sachbean> ds = sbo.getsach();
  				if(ml != null) //kich ben trai
  					ds = sbo.TimMa(ml);
  				else 
  					if(key!= null)
  						ds=sbo.Tim(key);
  				int n = ds.size();
  				for (int i = 0; i < n; i++){
  					sachbean s = ds.get(i);
  				%>
  					<tr>
  					<td>
  					<img src="<%=s.getAnh()%>" ><br>
  					<%=s.getTensach() %><br>
  					<%=s.getTacgia() %><br>
  					<%=s.getGia() %><br>
  						<a href="DatHang.jsp?ms=<%=s.getMasach() %>&ts=<%=s.getTensach()%>&gia=<%=s.getGia()%>">
	  					<img src ="buynow.jpg"></a>
					</td>
  					<%i++;if(i<n){ s = ds.get(i);%>
  					<td>
	  					<img src="<%=s.getAnh()%>" ><br>
	  					<%=s.getTensach() %><br>
	  					<%=s.getTacgia() %><br>
	  					<%=s.getGia() %><br>
	  					<a href="DatHang.jsp?ms=<%=s.getMasach() %>&ts=<%=s.getTensach()%>&gia=<%=s.getGia()%>">
	  					<img src ="buynow.jpg"></a>
	  					
	  				</td>
  					<%} %>
  					</tr>
  					
  			<%}%>
  			<td>
					Hien thị sách của loại: <%=request.getParameter("ml") %>
			</td>
  		</table>
	  	
	<td>
		<form action = "Menu.jsp" method = "post">
			<input type = "text" name= "txttk" class ="form-control"><br>
			<input type = "submit" name = "th" value = "Tìm kiếm" >
		</form>
	</td>
	</tr>
</table>
</body>
</html>
