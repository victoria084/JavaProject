<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="Model.porder"%>
 <%
 porder p=(porder)session.getAttribute("P");
 
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<SCRIPT LANGUAGE="JavaScript">

<!-- This script and many more are available free online at -->
<!-- The JavaScript Source!! http://javascript.internet.com -->

<!-- Begin
function varitext(text){
text=document
print(text)
}
//  End -->
</script>

</head>
<body>
<table width=600 align=center border=1>
		<tr height=100>
			<td align=center><jsp:include page="title.jsp"/>
		<tr height=450>
			<td>
			<table width=450 align=center border=1>
				<tr>
					<td colspan=2 align=center><h3>�q�槹��~�o�O�A���q��ӥ�</h3>
				<tr>
					<td width=100 align=center><h5>�ู</h5>
					<td ><%=p.getDesk() %>
				<tr>
					<td width=100 align=center><h5>A�\</h5>
					<td ><%=p.getA() %>
				<tr>
					<td width=100 align=center><h5>B�\</h5>
					<td ><%=p.getB() %>
				<tr>
					<td width=100 align=center><h5>C�\</h5>
					<td ><%=p.getC() %>
				<tr>
					<td width=100 align=center><h5>�@</h5>
					<td ><%=p.getSum() %>��
				<tr>
					<td colspan=2 align=center>
					<a href="index.jsp">�^����</a>
					
					<DIV ALIGN="CENTER">
					<FORM>
						<INPUT NAME="print" TYPE="button" VALUE="�C�L����" ONCLICK="varitext()">
					</FORM>
					</DIV>
			
			
			</table>
		<tr height=50>
			<td align=center><jsp:include page="footer.jsp"/>
	
	</table>

</body>
</html>