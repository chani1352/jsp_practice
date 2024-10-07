<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gugudan2</title>
<style>
table {
	border: 1px solid;
	border-collapse: collapse;
}

td, tr {
	border: 1px soild;
	padding: 5px 20px;
}

.title {
	text-align: center;
	background-color: lightgray;
}
</style>
</head>
<body>
	<table border="1">
		<%
		out.println("<tr class='title'>");
		for (int i = 2; i < 10; i++) {
			out.println("<td>" + i + "단</td>");
		}
		out.println("</tr>");

		for (int i = 1; i < 10; i++) {
			out.println("<tr>");
			for (int j = 2; j < 10; j++) {
				out.println("<td>" + j + "*" + i + "=" + (i * j) + "</td>");
			}
			out.println("</tr>");
		}
		%>
	</table>
</body>
</html>