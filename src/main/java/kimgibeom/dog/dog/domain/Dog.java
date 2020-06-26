package kimgibeom.dog.dog.domain;

import java.sql.Date;

public class Dog {
	private int dogNum;
	private String dogTitle;
	private String dogName;
	private int dogAge;
	private String dogKind;
	private int dogWeight;
	private String dogGender;
	private String dogAdoptionStatus;
	private Date dogEntranceDate;
	private String dogContent;
	private String attachName;

	public Dog() {
	}

	public Dog(int dogNum, String dogTitle, String dogName, int dogAge, String dogKind, int dogWeight, String dogGender,
			String dogAdoptionStatus, Date dogEntranceDate, String dogContent, String attachName) {
		this.dogNum = dogNum;
		this.dogTitle = dogTitle;
		this.dogAge = dogAge;
		this.dogAge = dogAge;
		this.dogKind = dogKind;
		this.dogWeight = dogWeight;
		this.dogGender = dogGender;
		this.dogAdoptionStatus = dogAdoptionStatus;
		this.dogEntranceDate = dogEntranceDate;
		this.dogContent = dogContent;
		this.attachName = attachName;
	}

	public int getDogNum() {
		return dogNum;
	}

	public void setDogNum(int dogNum) {
		this.dogNum = dogNum;
	}

	public String getDogTitle() {
		return dogTitle;
	}

	public void setDogTitle(String dogTitle) {
		this.dogTitle = dogTitle;
	}

	public String getDogName() {
		return dogName;
	}

	public void setDogName(String dogName) {
		this.dogName = dogName;
	}

	public int getDogAge() {
		return dogAge;
	}

	public void setDogAge(int dogAge) {
		this.dogAge = dogAge;
	}

	public String getDogKind() {
		return dogKind;
	}

	public void setDogKind(String dogKind) {
		this.dogKind = dogKind;
	}

	public int getDogWeight() {
		return dogWeight;
	}

	public void setDogWeight(int dogWeight) {
		this.dogWeight = dogWeight;
	}

	public String getDogGender() {
		return dogGender;
	}

	public void setDogGender(String dogGender) {
		this.dogGender = dogGender;
	}

	public String getDogAdoptionStatus() {
		return dogAdoptionStatus;
	}

	public void setDogAdoptionStatus(String dogAdoptionStatus) {
		this.dogAdoptionStatus = dogAdoptionStatus;
	}

	public Date getDogEntranceDate() {
		return dogEntranceDate;
	}

	public void setDogEntranceDate(Date dogEntranceDate) {
		this.dogEntranceDate = dogEntranceDate;
	}

	public String getDogContent() {
		return dogContent;
	}

	public void setDogContent(String dogContent) {
		this.dogContent = dogContent;
	}

	public String getAttachName() {
		return attachName;
	}

	public void setAttachName(String attachName) {
		this.attachName = attachName;
	}
}