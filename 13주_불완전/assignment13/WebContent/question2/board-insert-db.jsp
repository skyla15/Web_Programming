<%@ page contentType="text/html; Charset=EUC-KR" pageEncoding="EUC-KR" %> 
<%@ page import="java.sql.*" %>
<%@ page import = "question2.BoardDBBean" %>
<% request.setCharacterEncoding("EUC-KR"); %>

<jsp:useBean id="article" scope="page" class="question2.BoardDataBean">
	<jsp:setProperty name = "article" property = "*"/>
</jsp:useBean>


<%
	// 1�� �������� �Ͽ��� ������ �󿡼� �����ϰ� ���� ��üȭ ���Ѽ� �ȿ��ִ� �޼ҵ���� ����մϴ�.
	BoardDBBean dbPro = BoardDBBean.getInstance();
	// �����ͺ��� insert���ݴϴ�
	dbPro.insertArticle(article);
%>
		<jsp:forward page="board-insert-success.jsp"></jsp:forward>

