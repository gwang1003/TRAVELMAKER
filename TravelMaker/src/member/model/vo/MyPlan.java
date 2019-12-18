package member.model.vo;

import java.util.Date;

public class MyPlan {
	private int pSeq;
	private int mSeq;
	private String pName;
	private String pContent;
	private Date startDate;
	private Date endDate;
	private String startTime;
	private String endTime;
	private String fileName;

	public MyPlan() {
	}

	public MyPlan(int pSeq, int mSeq, String pName, String pContent, Date startDate, Date endDate, String startTime,
			String endTime, String fileName) {
		super();
		this.pSeq = pSeq;
		this.mSeq = mSeq;
		this.pName = pName;
		this.pContent = pContent;
		this.startDate = startDate;
		this.endDate = endDate;
		this.startTime = startTime;
		this.endTime = endTime;
		this.fileName = fileName;
	}

	public MyPlan(int mSeq, String pName, String pContent, Date startDate, Date endDate, String startTime,
			String endTime, String fileName) {
		super();
		this.mSeq = mSeq;
		this.pName = pName;
		this.pContent = pContent;
		this.startDate = startDate;
		this.endDate = endDate;
		this.startTime = startTime;
		this.endTime = endTime;
		this.fileName = fileName;
	}

	public int getpSeq() {
		return pSeq;
	}

	public void setpSeq(int pSeq) {
		this.pSeq = pSeq;
	}

	public int getmSeq() {
		return mSeq;
	}

	public void setmSeq(int mSeq) {
		this.mSeq = mSeq;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getpContent() {
		return pContent;
	}

	public void setpContent(String pContent) {
		this.pContent = pContent;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	@Override
	public String toString() {
		return "MyPlan [pSeq=" + pSeq + ", mSeq=" + mSeq + ", pName=" + pName + ", pContent=" + pContent
				+ ", startDate=" + startDate + ", endDate=" + endDate + ", startTime=" + startTime + ", endTime="
				+ endTime + ", fileName=" + fileName + "]";
	}

	
}
