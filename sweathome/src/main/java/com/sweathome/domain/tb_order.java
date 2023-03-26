package com.sweathome.domain;

public class tb_order {
	private int ORDER_IDX; // 주문서 순번
	private String USER_ID; // 주문자 아이디
	private String ORDER_DT; // 주문 일자
	private int TOTAL_AMOUNT; // 총 주문 가격
	private int USER_POINT; // 적립금
	private char ORDER_STATUS; // 주문상태 (상품준비:0, 배송중:1, 배송완료:2)
	public int getORDER_IDX() {
		return ORDER_IDX;
	}
	public void setORDER_IDX(int oRDER_IDX) {
		ORDER_IDX = oRDER_IDX;
	}
	public String getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(String uSER_ID) {
		USER_ID = uSER_ID;
	}
	public String getORDER_DT() {
		return ORDER_DT;
	}
	public void setORDER_DT(String oRDER_DT) {
		ORDER_DT = oRDER_DT;
	}
	public int getTOTAL_AMOUNT() {
		return TOTAL_AMOUNT;
	}
	public void setTOTAL_AMOUNT(int tOTAL_AMOUNT) {
		TOTAL_AMOUNT = tOTAL_AMOUNT;
	}
	public int getUSER_POINT() {
		return USER_POINT;
	}
	public void setUSER_POINT(int uSER_POINT) {
		USER_POINT = uSER_POINT;
	}
	public char getORDER_STATUS() {
		return ORDER_STATUS;
	}
	public void setORDER_STATUS(char oRDER_STATUS) {
		ORDER_STATUS = oRDER_STATUS;
	}
	public tb_order(int oRDER_IDX, String uSER_ID, String oRDER_DT, int tOTAL_AMOUNT, int uSER_POINT,
			char oRDER_STATUS) {
		super();
		ORDER_IDX = oRDER_IDX;
		USER_ID = uSER_ID;
		ORDER_DT = oRDER_DT;
		TOTAL_AMOUNT = tOTAL_AMOUNT;
		USER_POINT = uSER_POINT;
		ORDER_STATUS = oRDER_STATUS;
	}
	
	
	
	
	
	
}
