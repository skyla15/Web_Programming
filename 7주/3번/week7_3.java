

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class week7_3
 */
@WebServlet("/week7_3") //���� ����
public class week7_3 extends HttpServlet {  //week7_3 class ������ HttpServlet ���
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public week7_3() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Ŭ���̾𿡰� get ��û�� �޾� doGet�޼ҵ带 �������̵��մϴ�. 
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String str1 = request.getParameter("num1"); //num1�� ������ �ؼ� ���ڸ� str���·� �޾ƿɴϴ�.
		String str2 = request.getParameter("num2");
		int num1 = Integer.parseInt(str1); //parseInt(string)�� ���� string�� int������ ��ȯ�մϴ�.
		int num2 = Integer.parseInt(str2); //����ȯ ����ó���� ��� ���ͼ� parameter�� ���ڷ� ���� �ʾҽ��ϴ�.
						   //�ڵ忡�� ������ ����ε� 3�� �߿� 2���� ������ ������ 1���� 500������ ���ϴ�.. 

		response.setContentType("text/html;charset=euc-kr"); 
		
		int AddRst = num1 + num2; // ��Ģ����
		int SubRst = num1 - num2;
		int MulRst = num1 * num2;
		int DivRst = 0;		  // num1 / num2���� num2 = 0�ΰ�� ������ ���⶧���� 
					  // ������ ������ ��� �μ��� �ʱ�ȭ��ŵ�ϴ�.
		
		
		
		
		PrintWriter out = response.getWriter(); 
		out.println("ADD :"+ AddRst + "<br/>"); //�� ��Ģ������ ����� ����մϴ�.
		out.println("SUB :"+ SubRst + "<br/>");
		out.println("MUL :"+ MulRst + "<br/>");
		if(num2 != 0)	// num2�� 0�� �ƴѰ�� ������ �����ϰ� 0�� ��� �޼����� ����մϴ�.
		{
			DivRst = num1 / num2;
			out.println("DIV :"+ DivRst + "<br/>");
		}
		else
			out.println("�߸��� ���� �Է��ϼ̽��ϴ�.");

	}

}
