package com.example.model;
import java.util.*;

public class BeerExpert {
	public ArrayList getBrands(String color) { 
		ArrayList brands = new ArrayList(); //ArrayList ��ü����, ������Ʈ���� �Ķ���͸� ���Ͽ� 
 						   
		if(color.equals("amber")){
			brands.add("jack");
			brands.add("red");
		}
		else {
			brands.add("jail");
			brands.add("gout");
		}
		return(brands); //������� ������ �Ѱ��ݴϴ�.
	}
}