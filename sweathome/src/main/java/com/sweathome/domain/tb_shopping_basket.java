package com.sweathome.domain;

public class tb_shopping_basket {
	private int BASKET_IDX; // 장바구니 순번
	private String USER_ID; // 회원 아이디
	private int PROD_IDX; // 상품 순번
	private int PROD_CNT; // 상품 수량
	private int RDG_DATE; // 등록 날짜
	
	
	
	
	
	public int getBASKET_IDX() {
		return BASKET_IDX;
	}
	public void setBASKET_IDX(int bASKET_IDX) {
		BASKET_IDX = bASKET_IDX;
	}
	public String getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(String uSER_ID) {
		USER_ID = uSER_ID;
	}
	public int getPROD_IDX() {
		return PROD_IDX;
	}
	public void setPROD_IDX(int pROD_IDX) {
		PROD_IDX = pROD_IDX;
	}
	public int getPROD_CNT() {
		return PROD_CNT;
	}
	public void setPROD_CNT(int pROD_CNT) {
		PROD_CNT = pROD_CNT;
	}
	public int getRDG_DATE() {
		return RDG_DATE;
	}
	public void setRDG_DATE(int rDG_DATE) {
		RDG_DATE = rDG_DATE;
	}
	
	
	public tb_shopping_basket(int bASKET_IDX, String uSER_ID, int pROD_IDX, int pROD_CNT, int rDG_DATE) {
		super();
		BASKET_IDX = bASKET_IDX;
		USER_ID = uSER_ID;
		PROD_IDX = pROD_IDX;
		PROD_CNT = pROD_CNT;
		RDG_DATE = rDG_DATE;
	}
	
	
	
	
	
}
