<%@ page contentType="text/html; Charset=EUC-KR" pageEncoding="EUC-KR" %> 
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("EUC-KR"); %>

<%@ page import = "java.sql.*" %>

<% request.setCharacterEncoding("UTF-8");%>


<%
    // request��ü���� ���� �Ķ���͵��� �����ɴϴ�.
	String name= request.getParameter("name");
	String e_mail = request.getParameter("e_mail");
	String title = request.getParameter("title");
	String content = request.getParameter("content");




	//db����
	Connection conn = null;
	PreparedStatement pstmt=null;
	ResultSet rs = null;
	// �Խ����� idó��, ��۱���� �����Ƿ� ref�� ����
	String str="";
	
	try {
		//Connection ��ü ��ºκ�, forName�� ���� drivermanager�� ������Ŵ.
			String jdbcurl = "jdbc:mysql://localhost:3306/jsptest";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(jdbcurl, "jspid", "jsppass");
        		// ������ query��      
			// id, name, e_mail, title, content, passwd, ref
			
			String sql = "insert into board_tbl(name,e_mail,title,content) values(?,?,?,?)";
			pstmt=conn.prepareStatement(sql);

			pstmt.setString(1,name);
			pstmt.setString(2,e_mail);
			pstmt.setString(3,title);
			pstmt.setString(4,content);
			pstmt.executeUpdate(); //���� ����!
			//���� ���� �� db�� �Է��� ���� board-insert-success.jsp�� �������մϴ�.
%>
		<jsp:forward page="board-insert-success.jsp"></jsp:forward>
<%

	}catch(Exception e){
		e.printStackTrace();
	}finally{
		// ���� ����, ���� Ŀ�ؼ� ���� ����
		if(pstmt !=null) try{pstmt.close();} catch(SQLException sqle){}
		if(conn != null) try{conn.close();}catch(SQLException sqle){}    
	}
	
%>