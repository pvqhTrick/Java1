<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%String t = request.getParameter("ts");
	if(t==null) 
		t="1";

%>
Noi dung của trang: <%=t %>

	<table width="1000" align="center">
		<tr> <td colspan = "3" bgcolor = "blue">Logo <hr></td>
		</tr>
		<tr> 
			<td  valign = "top" width = "200">
				<a href ="trang1.jsp"> Trang 1</a> <hr>
				<a href ="http://ums.husc.edu.vn"> Tin Chi</a> <hr>
				<a href = "bt.docx">Tai Bai Giang</a><hr>
			</td>
			<td  valign = "top" width = "600">
				<img src ="anh1.jpg" width = "200">
				<hr>
				
				<%for (int i=1;i <=20; i ++) {%>
					<a href = "trang2.jsp?ts=<%=i%>">  <%=i %> </a>
				<%} %>
			</td>
			<td> Tim kiem</td>
		</tr> 
		<tr> 
			<td colspan = "3"> Ban quyen </td>
		</tr>
	</table>
</body>
</html>