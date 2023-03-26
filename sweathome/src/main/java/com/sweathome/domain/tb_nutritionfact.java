package com.sweathome.domain;

public class tb_nutritionfact {

	private int NUTRI_IDX; // 영양소 순번
	private String FOOD_NAME; // 음식물 명
	private int CARBOHYDRATE; // 탄수화물
	private int PROTEIN; // 단백질
	private int FAT; // 지방
	private int CALORIES; //칼로리
	private int SERVING_SIZE; // 1회 제공량
	private String SERVING_GRAM; // 1회 제공량 단위
	private String ADMIN_ID; // 관리자 아이디
	public int getNUTRI_IDX() {
		return NUTRI_IDX;
	}
	public void setNUTRI_IDX(int nUTRI_IDX) {
		NUTRI_IDX = nUTRI_IDX;
	}
	public String getFOOD_NAME() {
		return FOOD_NAME;
	}
	public void setFOOD_NAME(String fOOD_NAME) {
		FOOD_NAME = fOOD_NAME;
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
	public int getSERVING_SIZE() {
		return SERVING_SIZE;
	}
	public void setSERVING_SIZE(int sERVING_SIZE) {
		SERVING_SIZE = sERVING_SIZE;
	}
	public String getSERVING_GRAM() {
		return SERVING_GRAM;
	}
	public void setSERVING_GRAM(String sERVING_GRAM) {
		SERVING_GRAM = sERVING_GRAM;
	}
	public String getADMIN_ID() {
		return ADMIN_ID;
	}
	public void setADMIN_ID(String aDMIN_ID) {
		ADMIN_ID = aDMIN_ID;
	}
	public tb_nutritionfact(int nUTRI_IDX, String fOOD_NAME, int cARBOHYDRATE, int pROTEIN, int fAT, int cALORIES,
			int sERVING_SIZE, String sERVING_GRAM, String aDMIN_ID) {
		super();
		NUTRI_IDX = nUTRI_IDX;
		FOOD_NAME = fOOD_NAME;
		CARBOHYDRATE = cARBOHYDRATE;
		PROTEIN = pROTEIN;
		FAT = fAT;
		CALORIES = cALORIES;
		SERVING_SIZE = sERVING_SIZE;
		SERVING_GRAM = sERVING_GRAM;
		ADMIN_ID = aDMIN_ID;
	}
	
	
	
}
