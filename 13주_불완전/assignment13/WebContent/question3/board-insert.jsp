<%@ page contentType="text/html; Charset=EUC-KR" pageEncoding="EUC-KR" %> 
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("EUC-KR"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>�Խ��� �۾�</title>
</head>
<body>
<center><h2>�� �� ��</h2></center>


<!--  �Ķ���� :name, e_mail, title, content, --> 
	<form method="post" action="insert.do" > 
	<!--  board-insert-db�� ������ ���εǾ��ִ� insert_action�� ó���ϵ��� �մϴ�. -->
	<table>
		<tr>
			<td width = "130" align="justify">	<img src=image/ball.gif>�� �� �� : </td>
			<td width ="330"><input type="text" name="name"><br></td>
		</tr>
		<tr>
			<td width = "130" align="justify"><img src=image/ball.gif>�����ּ� : </td>
			<td width="330"><input type="text" name="e_mail" size="40"></td>
		</tr>
		<tr>
			<td width = "130" align="justify">	<img src=image/ball.gif>�� �� �� :</td>
			<td width="330"><input type="text" name="title" size="70"></td>
		</tr>
		<tr>	
			<td width = "130" align="justify"><img src=image/ball.gif>�� �� �� :</td>
			<td width="330"><textarea name="content" rows="10" cols="40"></textarea><br></td>
		</tr>	
		<tr>
			<td colspan=2>
				<input type="submit" value="����ϱ�"><input type="reset" value="�ٽþ���"><br>
			</td>
		</table>
	</form>


		<center>
		<img src="image/green_tree.gif"><a href="board-list.jsp"> ��Ϻ��� </a>
		<img src="image/island.gif" width="95%">
		</center>


</body>
</html>