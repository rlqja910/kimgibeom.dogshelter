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
	}
}
