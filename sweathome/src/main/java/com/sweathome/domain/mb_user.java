package com.sweathome.domain;

public class mb_user {
	
	private String USER_ID; // 유저 아이디
	private String USER_PW; // 유저 비밀번호
	private String USER_NAME; // 유저 이름
	private String USER_PHONE; // 유저 전화번호
	private int USER_HEIGHT; // 유저 키
	private int USER_AGE; // 유저 나이
	private int USER_GENDER; // 유저 성별 (남자:0, 여자:1)
	private int USER_WEIGHT; // 유저 몸무게
	private int USER_PURPOSE; // 유저 운동목적 (다이어트:0, 벌크업:1 유지:2)
	private int USER_MOMENT; // 유저 활동량 (매우적음:0, 적음:1, 보통:2, 많음:3, 매우 많음:4)
	private int USER_DIET_DAY; // 유저 다이어트기간(달)
	private int USER_MOMENT_CALORIES; // 유저 활동 칼로리
	private int USER_CALORIES; // 유저 권장 섭취 칼로리
	private int USER_CARBOHYDRATE; // 유저 권장 섭취 탄수
	private int USER_PROTEIN; // 유저 권장 섭취 단백질
	private int USER_FAT; // 유저 권장 섭취 지방
	private int USER_ACCU_POINT; // 유저 누적 포인트
	private int USER_POINT; // 유저 보유 포인트
	private String USER_JOINDATE; // 유저 가입일자
	private int USER_TYPE; // 관리자 구분(일반 사용자:0, 관리자:1)
	
	
	
	
	
	public mb_user() {
		super();
	}
	public String getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(String uSER_ID) {
		USER_ID = uSER_ID;
	}
	public String getUSER_MB_PW() {
		return USER_PW;
	}
	public void setUSER_MB_PW(String uSER_MB_PW) {
		USER_PW = uSER_MB_PW;
	}
	public String getUSER_MB_NAME() {
		return USER_NAME;
	}
	public void setUSER_MB_NAME(String uSER_MB_NAME) {
		USER_NAME = uSER_MB_NAME;
	}
	public String getUSER_PHONE() {
		return USER_PHONE;
	}
	public void setUSER_PHONE(String uSER_PHONE) {
		USER_PHONE = uSER_PHONE;
	}
	public int getUSER_HEIGHT() {
		return USER_HEIGHT;
	}
	public void setUSER_HEIGHT(int uSER_HEIGHT) {
		USER_HEIGHT = uSER_HEIGHT;
	}
	public int getUSER_AGE() {
		return USER_AGE;
	}
	public void setUSER_AGE(int uSER_AGE) {
		USER_AGE = uSER_AGE;
	}
	public int getUSER_GENDER() {
		return USER_GENDER;
	}
	public void setUSER_GENDER(int uSER_GENDER) {
		USER_GENDER = uSER_GENDER;
	}
	public int getUSER_WEIGHT() {
		return USER_WEIGHT;
	}
	public void setUSER_WEIGHT(int uSER_WEIGHT) {
		USER_WEIGHT = uSER_WEIGHT;
	}
	public int getUSER_PURPOSE() {
		return USER_PURPOSE;
	}
	public void setUSER_PURPOSE(int uSER_PURPOSE) {
		USER_PURPOSE = uSER_PURPOSE;
	}
	public int getUSER_MOMENT() {
		return USER_MOMENT;
	}
	public void setUSER_MOMENT(int uSER_MOMENT) {
		USER_MOMENT = uSER_MOMENT;
	}
	public int getUSER_DIET_DAY() {
		return USER_DIET_DAY;
	}
	public void setUSER_DIET_DAY(int uSER_DIET_DAY) {
		USER_DIET_DAY = uSER_DIET_DAY;
	}
	public int getUSER_CALORIES() {
		return USER_CALORIES;
	}
	public void setUSER_CALORIES(int uSER_CALORIES) {
		USER_CALORIES = uSER_CALORIES;
	}
	public int getUSER_CARBOHYDRATE() {
		return USER_CARBOHYDRATE;
	}
	public void setUSER_CARBOHYDRATE(int uSER_CARBOHYDRATE) {
		USER_CARBOHYDRATE = uSER_CARBOHYDRATE;
	}
	public int getUSER_PROTEIN() {
		return USER_PROTEIN;
	}
	public void setUSER_PROTEIN(int uSER_PROTEIN) {
		USER_PROTEIN = uSER_PROTEIN;
	}
	public int getUSER_FAT() {
		return USER_FAT;
	}
	public void setUSER_FAT(int uSER_FAT) {
		USER_FAT = uSER_FAT;
	}
	public int getUSER_MOMENT_CALORIES() {
		return USER_MOMENT_CALORIES;
	}
	public void setUSER_MOMENT_CALORIES(int uSER_MOMENT_CALORIES) {
		USER_MOMENT_CALORIES = uSER_MOMENT_CALORIES;
	}
	public int getUSER_ACCU_POINT() {
		return USER_ACCU_POINT;
	}
	public void setUSER_ACCU_POINT(int uSER_ACCU_POINT) {
		USER_ACCU_POINT = uSER_ACCU_POINT;
	}
	public int getUSER_POINT() {
		return USER_POINT;
	}
	public void setUSER_POINT(int uSER_POINT) {
		USER_POINT = uSER_POINT;
	}
	public String getUSER_JOINDATE() {
		return USER_JOINDATE;
	}
	public void setUSER_JOINDATE(String uSER_JOINDATE) {
		USER_JOINDATE = uSER_JOINDATE;
	}
	public int getUSER_TYPE() {
		return USER_TYPE;
	}
	public void setUSER_TYPE(char uSER_TYPE) {
		USER_TYPE = uSER_TYPE;
	}
	public mb_user(String uSER_ID, String uSER_PW, String uSER_NAME, String uSER_PHONE, int uSER_HEIGHT, int uSER_AGE,
			int uSER_GENDER, int uSER_WEIGHT, int uSER_PURPOSE, int uSER_MOMENT, int uSER_DIET_DAY,
			int uSER_MOMENT_CALORIES, int uSER_CALORIES, int uSER_CARBOHYDRATE, int uSER_PROTEIN, int uSER_FAT,
			int uSER_ACCU_POINT, int uSER_POINT, String uSER_JOINDATE, int uSER_TYPE) {
		super();
		USER_ID = uSER_ID;
		USER_PW = uSER_PW;
		USER_NAME = uSER_NAME;
		USER_PHONE = uSER_PHONE;
		USER_HEIGHT = uSER_HEIGHT;
		USER_AGE = uSER_AGE;
		USER_GENDER = uSER_GENDER;
		USER_WEIGHT = uSER_WEIGHT;
		USER_PURPOSE = uSER_PURPOSE;
		USER_MOMENT = uSER_MOMENT;
		USER_DIET_DAY = uSER_DIET_DAY;
		USER_MOMENT_CALORIES = uSER_MOMENT_CALORIES;
		USER_CALORIES = uSER_CALORIES;
		USER_CARBOHYDRATE = uSER_CARBOHYDRATE;
		USER_PROTEIN = uSER_PROTEIN;
		USER_FAT = uSER_FAT;
		USER_ACCU_POINT = uSER_ACCU_POINT;
		USER_POINT = uSER_POINT;
		USER_JOINDATE = uSER_JOINDATE;
		USER_TYPE = uSER_TYPE;
	}
	public mb_user(String uSER_ID, String uSER_PW) {
		super();
		USER_ID = uSER_ID;
		USER_PW = uSER_PW;
	}
	
	
	public mb_user(String uSER_ID, String uSER_PW, String uSER_NAME, String uSER_PHONE, int uSER_HEIGHT, int uSER_AGE,
			int uSER_GENDER, int uSER_WEIGHT, int uSER_PURPOSE, int uSER_MOMENT, int uSER_DIET_DAY) {
		super();
		USER_ID = uSER_ID;
		USER_PW = uSER_PW;
		USER_NAME = uSER_NAME;
		USER_PHONE = uSER_PHONE;
		USER_HEIGHT = uSER_HEIGHT;
		USER_AGE = uSER_AGE;
		USER_GENDER = uSER_GENDER;
		USER_WEIGHT = uSER_WEIGHT;
		USER_PURPOSE = uSER_PURPOSE;
		USER_MOMENT = uSER_MOMENT;
		USER_DIET_DAY = uSER_DIET_DAY;
	}
	public mb_user(String uSER_ID, String uSER_PW, String uSER_NAME, String uSER_PHONE, int uSER_HEIGHT, int uSER_AGE,
			int uSER_GENDER, int uSER_WEIGHT, int uSER_PURPOSE, int uSER_MOMENT, int uSER_DIET_DAY,
			int uSER_MOMENT_CALORIES, int uSER_CALORIES, int uSER_CARBOHYDRATE, int uSER_PROTEIN, int uSER_FAT,
			int uSER_ACCU_POINT, int uSER_POINT, String uSER_JOINDATE) {
		super();
		USER_ID = uSER_ID;
		USER_PW = uSER_PW;
		USER_NAME = uSER_NAME;
		USER_PHONE = uSER_PHONE;
		USER_HEIGHT = uSER_HEIGHT;
		USER_AGE = uSER_AGE;
		USER_GENDER = uSER_GENDER;
		USER_WEIGHT = uSER_WEIGHT;
		USER_PURPOSE = uSER_PURPOSE;
		USER_MOMENT = uSER_MOMENT;
		USER_DIET_DAY = uSER_DIET_DAY;
		USER_MOMENT_CALORIES = uSER_MOMENT_CALORIES;
		USER_CALORIES = uSER_CALORIES;
		USER_CARBOHYDRATE = uSER_CARBOHYDRATE;
		USER_PROTEIN = uSER_PROTEIN;
		USER_FAT = uSER_FAT;
		USER_ACCU_POINT = uSER_ACCU_POINT;
		USER_POINT = uSER_POINT;
		USER_JOINDATE = uSER_JOINDATE;
	}
	
	
	
	
	
	

}
