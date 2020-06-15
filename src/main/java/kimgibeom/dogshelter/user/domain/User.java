package kimgibeom.dogshelter.user.domain;

import java.sql.Date;

public class User {
	private String userId;
	private int userPw;
	private String userName;
	private String userPhone;
	private String userEmail;
	private Date regDate;

	public User() {
	}

	public User(String userId, int userPw, String userName, String userPhone, String userEmail, Date regDate) {
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.userPhone = userPhone;
		this.userEmail = userEmail;
		this.regDate = regDate;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getUserPw() {
		return userPw;
	}

	public void setUserPw(int userPw) {
		this.userPw = userPw;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

}
