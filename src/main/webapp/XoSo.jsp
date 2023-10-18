<%@page import="java.util.Calendar"%>
<%@page import ="java.util.Random" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Xổ số</title>
</head>
<body>

<%
	Calendar c = Calendar.getInstance();
	int ngayHienTai = c.get(Calendar.DAY_OF_MONTH);
	int thangHienTai = c.get(Calendar.MONTH)+1;
	int namHienTai = c.get(Calendar.YEAR);
	String ngay_i 	=request.getParameter("ngay_i");
	String ngay		=request.getParameter("sngay");
	String thang 	=request.getParameter("sthang");
	String nam 		=request.getParameter("snam");
	String isSubmit =request.getParameter("sumbit");
	
	int n=1,t=1,na=2020;
	if(ngay!=null&& thang!=null &&nam != null){
		n=Integer.parseInt(ngay);
		t=Integer.parseInt(thang);
		na=Integer.parseInt(nam);
	}
%>

<div align = "right">
	Hôm nay, Ngày <%=ngayHienTai %> tháng <%=thangHienTai %> năm <%=namHienTai %>
</div>

<from action = "XoSo.jsp" method = "post">
	Chon ngày
	<select name = "sngay">
		<% for(int i=1;i<=31;i++){%>
		 <option value = "ngay_<%=i%>"><%=i %></option>
		<%} %>
	</select>	
	
	Chon tháng
	<select name = "sthang">
		<% for(int i=1;i<=12;i++){%>
		 <option value = "thang_<%=i%>"><%=i %></option>
		 <%} %>
	</select>
	
	Chon năm
	<select name = "snam">
		<% for(int i=2000;i<=2023;i++){%>
		 <option value = "nam_<%=i%>"><%=i %></option>
		 <%} %>
	</select>

	<input type = "submit" name ="submit" value = "Xem kết quả xổ số"><br>
	
		Kêt quả xố số ngày <%=ngayHienTai %> tháng <%=thangHienTai %> năm <%=namHienTai %><br>
	<%
		Random r = new Random();
		out.print(r.nextInt(100));
		out.print(ngay_i);
	%>
</from>
</body>
</html>