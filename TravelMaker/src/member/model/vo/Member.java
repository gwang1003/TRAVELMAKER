package member.model.vo;

import java.sql.Date;
import java.util.ArrayList;

public class Member {
	private String mId;
	private String mName;
	private String pass;
	private String phone;
	private String mNo;
	private String email;
	private Date joinDate;
	private String nickName;
	private String bIdArray;
	private int m_seq;
	
	public Member() {}

	public Member(String mId, String mName, String pass, String phone, String mNo, String email, Date joinDate,
			String nickName, String bIdArray, int m_seq) {
		super();
		this.mId = mId;
		this.mName = mName;
		this.pass = pass;
		this.phone = phone;
		this.mNo = mNo;
		this.email = email;
		this.joinDate = joinDate;
		this.nickName = nickName;
		this.bIdArray = bIdArray;
		this.m_seq = m_seq;
	}

	public Member(String mId, String mName, String pass, String phone, String mNo, String email, String nickName) {
		super();
		this.mId = mId;
		this.mName = mName;
		this.pass = pass;
		this.phone = phone;
		this.mNo = mNo;
		this.email = email;
		this.nickName = nickName;
	}

	public Member(String mId, String phone, String email, String nickName) {
		super();
		this.mId = mId;
		this.phone = phone;
		this.email = email;
		this.nickName = nickName;
	}
	
	

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getmNo() {
		return mNo;
	}

	public void setmNo(String mNo) {
		this.mNo = mNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getbIdArray() {
		return bIdArray;
	}

	public void setbIdArray(String bIdArray) {
		this.bIdArray = bIdArray;
	}

	public int getM_seq() {
		return m_seq;
	}

	public void setM_seq(int m_seq) {
		this.m_seq = m_seq;
	}

	@Override
	public String toString() {
		return "Member [mId=" + mId + ", mName=" + mName + ", pass=" + pass + ", phone=" + phone + ", mNo=" + mNo
				+ ", email=" + email + ", joinDate=" + joinDate + ", nickName=" + nickName + ", bIdArray=" + bIdArray
				+ ", m_seq=" + m_seq + "]";
	}
}
