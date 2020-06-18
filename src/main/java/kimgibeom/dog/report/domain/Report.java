package kimgibeom.dog.report.domain;

import java.sql.Date;

public class Report {
	private String title;
	private String userId;
	private String content;
	private int view;
	private Date regDate;
	private int postNum;
	
	public String getTitle() {
		return title;
	}
	public String getUserId() {
		return userId;
	}
	public int getHit() {
		return view;
	}
	public Date getRegDate() {
		return regDate;
	}
	public int getPostNum() {
		return postNum;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public void setview(int view) {
		this.view = view;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public void setPostNum(int postNum) {
		this.postNum = postNum;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}
