<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Dao.porder.implPorder"
    import="java.util.List"
    import="Model.porder"%>
<%
List<porder> l=new implPorder().selectAll();    
    
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<table width=600 align=center border=1>
		<tr height=100>
			<td align=center><jsp:include page="title.jsp"/>
		<tr height=450>
			<td >
			<form action="../updatePorderController" method="post">
				<table width=500 align=center border=1>
					<tr align=center>
						<td>�ק�q����
					<tr align=center>
						<td>
						ID:<input type="text" name="id" size=3>
						�ู:
						<select name="desk">
							<option value="A��">A��
							<option value="B��">B��
							<option value="C��">C��
							<option value="D��">D��
						</select>
						A�\:<input type="text" name="A" size=3>
						B�\:<input type="text" name="B" size=3>
						C�\:<input type="text" name="C" size=3>
						<input type="submit" value="�T�w">					
						
				</table>
			</form>
			<hr>
			<table width=500 align=center border=1>
			<tr>
				<td>ID<td>�ู<td>A�\<td>B�\<td>C�\<td>���B
			<%
				for(porder p:l)
				{
					out.println("<tr><td>"+p.getId()+
							"<td>"+p.getDesk()+
							"<td>"+p.getA()+
							"<td>"+p.getB()+
							"<td>"+p.getC()+
							"<td>"+p.getSum());
				}
			
			
			%>
			<tr>
				<td colspan=6 align=center>
				<a href="index.jsp">�^����</a>
			</table>
			
			
			
			
			
		<tr height=50>
			<td align=center><jsp:include page="footer.jsp"/>
	
	</table>

</body>
</html>