<html>
<%@ page contentType="text/html;charset=utf-8" %>


	<body>

	
	Return string  :       
	<% String str = "web program";
	   out.println("'"+str+"'"+" -> ");	
	   str = str.substring(0,3); 
	//��Ʈ���� �⺻������ �迭�� ��
	//0~3��° ���ڸ� substring�� ���� ���ݴϴ�.
	   out.println("'"+str+"'"+"<br>"); 
	%>

	Substitute string  :      
	<% String str2 = "web program"; 
	   out.println("'"+str2+"'"+" -> ");
	   str2 = str2.replace("program", "programming");
	//replace�޼ҵ带 �̿��Ͽ� program�� programming���� ��ü�մϴ�.
	   out.println("'"+str2+"'"+"<br>"); 
	%>

	Erasing space  :    
	<% String str3 = "  web program"; 
   	   out.println("'"+str3+"'"+" -> ");
	   str3 = str3.trim(); 
	//trim�޼ҵ带 �̿��Ͽ� ���ڿ��� �յ� ������ �����ݴϴ�.
	   out.println("'"+str3+"'"+"<br>"); 
	%>
	<br><br><br><br><hr>

	
	<% 
		try{
			int i;
		 	int num;
	 		for(i=5;i>=0;i--){
			num = 30/i;
			out.println(num + "<br>");}
		    
		}
		
		catch(Exception e){
			out.println("Exception Error occured" + e.getMessage() + "<br>");
		}
	%>
		//try catch���� �̿��Ͽ� 0���� �������� ���� ����ó���� ����մϴ�.
	</body>
</html> 
	 