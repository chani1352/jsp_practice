<%@page import="utils.JSFunction"%>
<%@page import="utils.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.title {
	color : gray;
}
</style>
</head>
<body>
	
	<%
	int val = 3;
	int l = 2;
	String sval = request.getParameter("val");
	if (sval != null){
		val = Integer.parseInt(sval);
	}
	for (int k = val; k < 20; k+=val) { %>
	<%-- <div style ="display:grid; grid-template=columns:repeat(<%=val %>,1000px);"> --%>
	<div style = font-size:20px;>
	<%	for (int i = l ; i < (k+2) ; i++){ 
			if (i > 9) break;  %>
			<%= i%>단 &nbsp&nbsp&nbsp&nbsp
	<% } %>
	<br/>
	</div>
	<div>
	 <%
		for (int i = 1; i < 10; i++) {
			for (int j = l ; j < (k+2) ; j++) {
				if (j > 9) break; %>
				  <%=j %>*<%=i %>=<%=j * i %> &nbsp&nbsp&nbsp&nbsp
	<% } %>
	<br/>
	<% } %>
	<% l += val; %>
	<% } %>
	 </div>

</body>
</html>