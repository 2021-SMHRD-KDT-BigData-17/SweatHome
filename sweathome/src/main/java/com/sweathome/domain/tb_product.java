package com.sweathome.domain;

public class tb_product {
	
	private int PROD_IDX; // 상품 순번
	private String PROD_CODE; // 제품 식별 코드
	private String PROD_NAME; // 제품 이름
	private int CARBOHYDRATE; // 탄수
	private int PROTEIN; // 단백질
	private int FAT; // 지방
	private int CALORIES; //칼로리
	private int PROD_PRICE; // 제품 가격
	private int PROD_STOCK; // 제품 재고
	private String PROD_URL; // 제품 이미지 링
	
	
	
	public int getPROD_IDX() {
		return PROD_IDX;
	}
	public void setPROD_IDX(int pROD_IDX) {
		PROD_IDX = pROD_IDX;
	}
	public String getPROD_CODE() {
		return PROD_CODE;
	}
	public void setPROD_CODE(String pROD_CODE) {
		PROD_CODE = pROD_CODE;
	}
	public String getPROD_NAME() {
		return PROD_NAME;
	}
	public void setPROD_NAME(String pROD_NAME) {
		PROD_NAME = pROD_NAME;
	}
	public int getCARBOHYDRATE() {
		return CARBOHYDRATE;
	}
	public void setCARBOHYDRATE(int cARBOHYDRATE) {
		CARBOHYDRATE = cARBOHYDRATE;
	}
	public int getPROTEIN() {
		return PROTEIN;
	}
	public void setPROTEIN(int pROTEIN) {
		PROTEIN = pROTEIN;
	}
	public int getFAT() {
		return FAT;
	}
	public void setFAT(int fAT) {
		FAT = fAT;
	}
	public int getCALORIES() {
		return CALORIES;
	}
	public void setCALORIES(int cALORIES) {
		CALORIES = cALORIES;
	}
	public int getPROD_PRICE() {
		return PROD_PRICE;
	}
	public void setPROD_PRICE(int pROD_PRICE) {
		PROD_PRICE = pROD_PRICE;
	}
	public int getPROD_STOCK() {
		return PROD_STOCK;
	}
	public void setPROD_STOCK(int pROD_STOCK) {
		PROD_STOCK = pROD_STOCK;
	}
	public String getPROD_URL() {
		return PROD_URL;
	}
	public void setPROD_URL(String pROD_URL) {
		PROD_URL = pROD_URL;
	}
	public tb_product(int pROD_IDX, String pROD_CODE, String pROD_NAME, int cARBOHYDRATE, int pROTEIN, int fAT,
			int cALORIES, int pROD_PRICE, int pROD_STOCK, String pROD_URL) {
		super();
		PROD_IDX = pROD_IDX;
		PROD_CODE = pROD_CODE;
		PROD_NAME = pROD_NAME;
		CARBOHYDRATE = cARBOHYDRATE;
		PROTEIN = pROTEIN;
		FAT = fAT;
		CALORIES = cALORIES;
		PROD_PRICE = pROD_PRICE;
		PROD_STOCK = pROD_STOCK;
		PROD_URL = pROD_URL;
	}
	public tb_product(String pROD_NAME, int cARBOHYDRATE, int pROTEIN, int fAT, int cALORIES, int pROD_PRICE,
			String pROD_URL) {
		super();
		PROD_NAME = pROD_NAME;
		CARBOHYDRATE = cARBOHYDRATE;
		PROTEIN = pROTEIN;
		FAT = fAT;
		CALORIES = cALORIES;
		PROD_PRICE = pROD_PRICE;
		PROD_URL = pROD_URL;
	}
	public tb_product() {
		super();
	}
	
	
	
	

	
}
