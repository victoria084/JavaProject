<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Model.member"%>
<%
member m=(member)session.getAttribute("M");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>

<h2><%=m.getName() %>�w��A,�n�J���\</h2>
<a href="../porder/index.jsp">�i�J�ʪ�</a>
</body>
</html>