<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
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
			<td valign=top>
			<form action="confirm.jsp" method="post">
				<table width=500 align=center border=1>
					<tr >
						<td colspan=3 align=center>
							<h3>�I�\</h3>
					<tr>
						<td colspan=3 align=center>
						�ู:
						<select name="desk">
							<option value="A��">A��
							<option value="B��">B��
							<option value="C��">C��
							<option value="D��">D��
						
						</select>
					<tr valign=top>
						<td>
						A<br>
						<img alt="1." src="pic/1.jpg"><br>
						<select name="A">
							<option value="0">0
							<option value="1">1
							<option value="2">2
							<option value="3">3
							<option value="4">4
							<option value="5">5
							<option value="6">6
							<option value="7">7
							<option value="8">8
							<option value="9">9					
						
						</select>
						
						<td>
						B<br>
						<img alt="2" src="pic/2.jpg"><br>
						<select name="B">
							<option value="0">0
							<option value="1">1
							<option value="2">2
							<option value="3">3
							<option value="4">4
							<option value="5">5
							<option value="6">6
							<option value="7">7
							<option value="8">8
							<option value="9">9					
						
						</select>
						<td>
						C<br>
						<img alt="3" src="pic/3.jpg"><br>
						<select name="C">
							<option value="0">0
							<option value="1">1
							<option value="2">2
							<option value="3">3
							<option value="4">4
							<option value="5">5
							<option value="6">6
							<option value="7">7
							<option value="8">8
							<option value="9">9					
						
						</select>
					<tr>
						<td colspan=3 align="center">
						<input type="submit" value="�e�X">
						<a href="index.jsp">�W�@��</a>
				
				</table>
			
			</form>
			
			
		<tr height=50>
			<td align=center><jsp:include page="footer.jsp"/>
	
	</table>

</body>
</html>