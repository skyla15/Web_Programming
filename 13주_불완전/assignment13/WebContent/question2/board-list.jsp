<%@ page contentType="text/html; Charset=EUC-KR" pageEncoding="EUC-KR" %> 
<%@ page import="java.sql.*" %>
<%@ page import = "java.util.*" %>

<%@ page import = "question2.BoardDataBean" %>
<%@ page import = "question2.BoardDBBean" %>

<% request.setCharacterEncoding("EUC-KR"); %>


<!--  ��1, �ڹ��ڵ� ���� ���־� ���Ⱑ �����ϰ� �����ϱⰡ �����. -->

<%
	// databean�� �迭����Ʈ�� �����ɴϴ�.
	List<BoardDataBean> articleList = null;
	BoardDBBean dbPro = BoardDBBean.getInstance();
	int count = dbPro.getArticleCount(); // ������ �������� row����
	
	if(count>0){ //������ �����Ͱ� ������ article List�� ����
	articleList = dbPro.getArticles(count); 
	}
%>

<html>
  <head><title> �Խ��� </title></head>
  <body>
     <center><h2> �Խñ� ��� ���� </h2></center>
    
     <table border="1" align="center" width="603">
      <tr>
	  <td align="center" bgcolor="silver" width="100"> �۹�ȣ </td>
	  <td align="center" bgcolor="silver" width="150"> �۾��� </td>
	  <td align="center" bgcolor="silver" width="275"> ������ </td>
	  <td align="center" bgcolor="silver" width="200"> ���ڿ��� </td>
      </tr>

<% if(count!=0) // ��ϵ� �Խñ��� ���� ��츸 for������ ���ϴ�. ��ϵ� �Խù��� ���� ��� null point error�� ����⶧���� ����ó�����ݴϴ�.
	// for���� ���� �迭����Ʈ�� ���̸�ŭ ������ ��Ű�鼭 ����Ʈ�� �����մϴ�.
	for ( int i = 0 ; i < articleList.size() ; i++){
		BoardDataBean article = articleList.get(i);
%>
      <tr>
         <td align="center"> <%=article.getId()%></td>
         <td align="left"> <%=article.getName() %></td>
         <td align="left"><a href=board-read.jsp?id=<%=article.getId()%> width="250"><%=article.getTitle()%></td>
         <td align="center"><%=article.getContent()%></td>
      </tr>      
<%
	}
%>      	
      	 
  </table>
  <center>
	<img src="image/green_tree.gif"> 
    	  	<a href="board-insert.jsp">�Խñ۾���</a>
	</center>
  </body>
</html>