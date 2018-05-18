package com.example.web;

import com.example.model.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;

public class BeerSelect extends HttpServlet { // HttpServlet �� ��ӹ޾ƿɴϴ�.
	public void doPost(HttpServletRequest request, HttpServeletResponse response)throws IOException, servletException {
		//HttpServletRequest/Response�� ��üȭ ���Ѽ� �޽��ϴ�. 
		String c = request.getParameter("color"); //
		BeerEexpert be = new BeerExpert(); //BeerExpert�� ��üȭ���� �����ɴϴ�.
		List Result = be.getBrands(c); //�𵨿��� ���õ� ���� ���� ������� �޾ƿɴϴ�.

		request.setAttribute("styles", result); //request��ü�� ������� �־��ݴϴ�. 
		
			RequestDispatcher view =
				request.getRequestDispatcher("result.jsp"); //������ �����ֱ� ���� �並 ���� ����ġ�� ȣ���մϴ�.
		
			view.forward(request, response); request�� response�� �������ϸ� ������Ʈ�� ���� ��� �Ѿ�ϴ�.
	}
}
