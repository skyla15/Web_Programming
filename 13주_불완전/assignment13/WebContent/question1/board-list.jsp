<%@ page contentType="text/html; Charset=EUC-KR" pageEncoding="EUC-KR" %> 
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("EUC-KR"); %>

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

<%		
		request.setCharacterEncoding("UTF-8");
      	Connection conn = null;
        PreparedStatement pstmt = null;
        String sql = null;
        ResultSet rs = null;

	try {		//dbĿ�ؼ��� �������ݴϴ�.
		Class.forName("com.mysql.jdbc.Driver");
		String jdbcurl = "jdbc:mysql://localhost:3306/jsptest";
		conn = DriverManager.getConnection(jdbcurl, "jspid", "jsppass");
              	
		//����Ʈ�� ������ ������ ���� �����ϴ� �����Դϴ�.
		sql = "select * from board_tbl";
		pstmt = conn.prepareStatement(sql);
     	rs=pstmt.executeQuery();
     	//������ �����մϴ�.
		
  	 while(rs.next())
  		 //���� �����Ͱ� �ִٸ� Ŀ���� ������ �����͵��� �о���� ȭ�鿡 ǥ���մϴ�.
	 {	
  		 int id = rs.getInt("id");
  		 String name = rs.getString("name");
  		 String e_mail = rs.getString("e_mail");
  		 String title = rs.getString("title");
  		 String content = rs.getString("content");
%>

      <tr>
         <td align="center"> <%=id%></td>
         <td align="left"> <%=name %></td>
         <td align="left"><a href=board-read.jsp?id=<%=id%> width="250"/><%=title%></td>
         <!-- �Խñ��� Ŭ���� ��� �󼼺��� ����� �־��ݴϴ�. --> -->
         <td align="center"><%=content%></td>
      </tr>
<% }
	}catch(Exception e){
	e.printStackTrace();
	}finally{
		if(rs!=null)try{rs.close();}catch(SQLException sqle){}
		if(rs!=null)try{rs.close();}catch(SQLException sqle){}
		if(rs!=null)try{rs.close();}catch(SQLException sqle){}
		//�ڿ�������ŵ�ϴ�.
	}
%>
	
      	
      	 
  </table>
  <center>
	<img src="image/green_tree.gif"> 
    	  	<a href="board-insert.jsp">�Խñ۾���</a>
	</center>
  </body>
</html>