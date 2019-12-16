package QA.model.vo;

import java.util.Date;

public class QA {
	private int qId;
	private int qType;
	private String qTitle;
	private String qContent;
	private String status;
	private Date enrollDate;
	private String answer;
	private Date answerDate;
	private String writer;
	
	public QA() {}

	public QA(int qId, int qType, String qTitle, String qContent, String status, Date enrollDate, String answer,
			Date answerDate, String writer) {
		super();
		this.qId = qId;
		this.qType = qType;
		this.qTitle = qTitle;
		this.qContent = qContent;
		this.status = status;
		this.enrollDate = enrollDate;
		this.answer = answer;
		this.answerDate = answerDate;
		this.writer = writer;
	}
	
	

	public QA(int qType, String qTitle, String qContent, String status, Date enrollDate, String answer,
			Date answerDate, String writer) {
		super();
		this.qType = qType;
		this.qTitle = qTitle;
		this.qContent = qContent;
		this.status = status;
		this.enrollDate = enrollDate;
		this.answer = answer;
		this.answerDate = answerDate;
		this.writer = writer;
	}
	
	

	public QA(int qType, String qTitle, String qContent, String writer) {
		super();
		this.qType = qType;
		this.qTitle = qTitle;
		this.qContent = qContent;
		this.writer = writer;
	}
 
	
	public QA(int qId, int qType, String qTitle, String status, Date enrollDate) {
		super();
		this.qId = qId;
		this.qType = qType;
		this.qTitle = qTitle;
		this.status = status;
		this.enrollDate = enrollDate;
	}

	
	

	public QA(int qType, String qTitle, String status, Date enrollDate, String writer) {
		super();
		this.qType = qType;
		this.qTitle = qTitle;
		this.status = status;
		this.enrollDate = enrollDate;
		this.writer = writer;
	}

	public int getqId() {
		return qId;
	}

	public void setqId(int qId) {
		this.qId = qId;
	}

	public int getqType() {
		return qType;
	}

	public void setqType(int qType) {
		this.qType = qType;
	}

	public String getqTitle() {
		return qTitle;
	}

	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}

	public String getqContent() {
		return qContent;
	}

	public void setqContent(String qContent) {
		this.qContent = qContent;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Date getAnswerDate() {
		return answerDate;
	}

	public void setAnswerDate(Date answerDate) {
		this.answerDate = answerDate;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	@Override
	public String toString() {
		return "QA [qId=" + qId + ", qType=" + qType + ", qTitle=" + qTitle + ", qContent=" + qContent + ", status="
				+ status + ", enrollDate=" + enrollDate + ", answer=" + answer + ", answerDate=" + answerDate
				+ ", writer=" + writer + "]";
	}
	
	
	
}