package domain;

// 테이블 하나당 하나씩 객체 생성
public class Member {

	
	// 객체의 필드명 == 테이블의 컬럼명
	private String email; 
	private String pw; 
	private String tel; 
	private String address;
	
	
	
	// 4개 다 묶는생성자
	public Member(String email, String pw, String tel, String address) {
		super();
		this.email = email;
		this.pw = pw;
		this.tel = tel;
		this.address = address;
	} 
	
	// email, pw 묶는 생성자
	

	public Member(String email, String pw) {
		super();
		this.email = email;
		this.pw = pw;
	}

	public void setEmail(String email) {
		this.email = email;
	}


	// getters setters

	public String getEmail() {
		return email;
	}






	public String getPw() {
		return pw;
	}



	public void setPw(String pw) {
		this.pw = pw;
	}



	public String getTel() {
		return tel;
	}



	public void setTel(String tel) {
		this.tel = tel;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}


	
	// toString : 객체에 담긴 정보를 출력하는 메소드
	
	
	@Override
	public String toString() {
		return "Member [email=" + email + ", pw=" + pw + ", tel=" + tel + ", address=" + address + "]";
	} 

	
	
	
}
