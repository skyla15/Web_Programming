<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="euc-kr" %>
<%@ page import = "com.example.db.BoardDataBean" %>
<%@ page import = "com.example.db.BoardDBBean" %>
<%@ page import = "java.text.*" %>


<%@ page import="java.sql.*" %>
<html>
  <head><title> �Խ��� </title></head>
  <body> 
     <center><h2> �Խñ� ���� </h2></center>
     <center>

<form>
    <table border="0" width="500">
      <tr height="30">
        <td width="100"><img src="image/ball.gif"> �� �� �� : </td>
	   	<td>${name}</td>
      </tr>
      <tr height="30">
	      <td><img src="image/ball.gif"> �����ּ� : </td>
	      <td>${e_mail}</td>
      </tr>      
      <tr>
	      <td><img src="image/ball.gif"> �� �� �� : </td>
	      <td>${title}</td>
      </tr>
      <tr height="30">
	      <td><img src="image/ball.gif"> �� �� �� : </td>
	      <td>${content}</td>
      </tr>
</table>
</form>

 
	
	<div align = right>
    <img src="image/green_tree.gif">
    <a href="board-list.jsp"> �Խñ� ��� ���� </a>
    </div>

  </body>
</html>