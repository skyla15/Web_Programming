<%@ page import = "java.util.*" %>

<body>
	<h1 align="center">Beer Recommendation JSP</h1>
	<p>
		<%
		List styles = (List)request.getAtrribute("styles"); // ��Ʈ�ѿ��� �޾ƿ� ������Ʈ�� ������� �޾ƿ���
		Iterator it = styles.ierator(); //������ݴϴ�.  
		while(it.hasNext()){
			out.print("<br>try: " + it.next());
		} //������ִ� ���� ���� ���̰� �� ������� �����̳ʸ� ���� HTTPrequest�� ���� ����ڿ��� ���������Դϴ�.
                 
		%>
	</p>
</body>