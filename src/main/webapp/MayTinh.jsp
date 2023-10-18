<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Máy tính</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>

<%
		String value_a = request.getParameter("txta");
		String value_b = request.getParameter("txtb");
		String btnCong = request.getParameter("btnCong");
		String btnTru  = request.getParameter("btnTru");
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
		if(btnChia != null && b!= 0){
			kq = a/b;
		}

		//out.print("Ket qua :"  + kq);
	
		//response.sendRedirect("MayTinh.jsp?kq="+kq+"&a="+a+"&b="+b);
	%>



	<form action="MayTinh.jsp" method="post">
		a	=<input type="number" name = "txta"	 value = <%=a %>> <br>
		b	=<input type="number" name = "txtb"  value = <%=b %>> <br>	
		kq  =<input type="number" name = "txtkq" value = <%=kq%>> <br>
		
		<input type = "submit" name ="btnCong" 	value = " + " class="btn btn-primary">
		<input type = "submit" name ="btnTru" 	value = " - " class="btn btn-primary">
		<input type = "submit" name ="btnNhan" 	value = " * " class="btn btn-primary">
		<input type = "submit" name ="btnChia" 	value = " / " class="btn btn-primary">
	</form>
</body>
</html>