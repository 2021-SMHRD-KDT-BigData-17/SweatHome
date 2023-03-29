package com.sweathome.domain;

public class tb_orderdetail {
	
	private int OD_IXD; // 주문상세 순번
	private int ORDER_IDX; // 주문 순번
	private int PROD_IDX; // 상품 순번
	private int OD_CNT; // 주문 수량
	public int getOD_IXD() {
		return OD_IXD;
	}
	public void setOD_IXD(int oD_IXD) {
		OD_IXD = oD_IXD;
	}
	public int getORDER_IDX() {
		return ORDER_IDX;
	}
	public void setORDER_IDX(int oRDER_IDX) {
		ORDER_IDX = oRDER_IDX;
	}
	public int getPROD_IDX() {
		return PROD_IDX;
	}
	public void setPROD_IDX(int pROD_IDX) {
		PROD_IDX = pROD_IDX;
	}
	public int getOD_CNT() {
		return OD_CNT;
	}
	public void setOD_CNT(int oD_CNT) {
		OD_CNT = oD_CNT;
	}
	public tb_orderdetail(int oD_IXD, int oRDER_IDX, int pROD_IDX, int oD_CNT) {
		super();
		OD_IXD = oD_IXD;
		ORDER_IDX = oRDER_IDX;
		PROD_IDX = pROD_IDX;
		OD_CNT = oD_CNT;
	}
	public tb_orderdetail(int oRDER_IDX, int pROD_IDX, int oD_CNT) {
		super();
		ORDER_IDX = oRDER_IDX;
		PROD_IDX = pROD_IDX;
		OD_CNT = oD_CNT;
	}
	
	
	
	
	
}
