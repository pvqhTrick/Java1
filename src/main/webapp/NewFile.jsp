<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
    />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    
    <style type="text/css">
    .Heading {
  /* width: 400px;
  height: 70px; */
  background-color: red;
  text-align: center;
  width: fit-content;
}

body{
	background-color: #97FFFF;
}

.Form {
  margin-left: 2px;
  margin-top: 70px;
  display: flex;
}

.NUT {
  margin-top: 40px;
  text-align: center;
  color: blue;
}

.Formbang1 {
  border: 5px solid white;
  width: 130px;
  height: 350px;
  background-color: #FFCCFF;
  margin-left: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px 27px;
  font-family: bold;
  font-size: 18px;
  
}

    
    </style>
    
</head>
<body>
	<div class="d-flex justify-content-center">
      <h1 class="Heading">BẢNG CỬU CHƯƠNG</h1>
    </div>
    <form method="post" class="NUT" action="KQBANGCUUCHUONG.jsp">
      <label for="Number" class="mr-3">Nhập số=</label>
      <input type="number" class="Khung" name="KhungNhap" />
      <button
      	name="OK"
        type="submit"
        class="BtbOK mx-3"
        style="background-color: blue; color: yellow"
      >
        OK
      </button>
      <button
      	name="Adimin"
        type="submit"
        class="BtbAdmin mr-3"
        style="background-color: blue; color: yellow"
      >
        Trang chủ
      </button>
    </form>
    <div class="Form">
		<%if(request.getParameter("kq") == null){%>
			<%for(int i=2; i<=10; i++){%>
				<div class="Formbang1">
				<%for(int j=1; j<=10; j++){ %>
				<p><%=i%> x <%=j%> = <%=i*j%> </p>
			<%} %>
			</div>
			<%} %>
			<%} %>

			
			
			


     <% if (request.getParameter("kq") != null) {%>
   <div class="Formbang1">
   <%for(int j=1; j<=10; j++){%>
    	<p><%=request.getParameter("kq") + "x" + j + "=" + Integer.parseInt(request.getParameter("kq"))%></p> 
	<%}%>
</div>
<% } %>
<%
	String a=request.getParameter("a");
%>

      
    </div>
</body>
</html>