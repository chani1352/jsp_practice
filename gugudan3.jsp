<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
int val = 2;
String sval = request.getParameter("val");
if (sval != null){
	val = Integer.parseInt(sval);
}
if (val > 9) {
	val = 9;
} else if (val < 2) {
	val = 2;
}
out.println(val + "*단입니다." + "</br>");
for (int i = 1 ; i < 10 ; i++){
	out.println(val + "*" + i + "=" +(val * i) + "</br>");
}
%>
</body>
</html>

