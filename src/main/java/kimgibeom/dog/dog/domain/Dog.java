package kimgibeom.dog.dog.domain;

import java.sql.Date;

public class Dog {
	private int dogNum;
	private String dogName;
	private int dogAge;
	private String dogKind;
	private int dogWeight;
	private String dogSpecialFeature;
	private String dogGender;
	private String dogAdoptionStatus;
	private Date dogEntranceDate;
	private String attachName;

	public Dog() {
	}

	public Dog(int dogNum, String dogName, int dogAge, String dogKind, int dogWeight, String dogSpecialFeature,
			String dogGender, String dogAdoptionStatus, Date dogEntranceDate, String attachName) {
		this.dogNum = dogNum;
		this.dogAge = dogAge;
		this.dogAge = dogAge;
		this.dogKind = dogKind;
		this.dogWeight = dogWeight;
		this.dogSpecialFeature = dogSpecialFeature;
		this.dogGender = dogGender;
		this.dogAdoptionStatus = dogAdoptionStatus;
		this.dogEntranceDate = dogEntranceDate;
		this.attachName = attachName;
	}

	public int getDogNum() {
		return dogNum;
	}

	public void setDogNum(int dogNum) {
		this.dogNum = dogNum;
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

	public String getDogSpecialFeature() {
		return dogSpecialFeature;
	}

	public void setDogSpecialFeature(String dogSpecialFeature) {
		this.dogSpecialFeature = dogSpecialFeature;
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

	public String getAttachName() {
		return attachName;
	}

	public void setAttachName(String attachName) {
		this.attachName = attachName;
	}
}