package sleep.model.vo;

public class Sleep {
	private int sId; // 숙박업체no seq로 번호주기
	private String sType; // 숙박업체 타입(1.호텔 2.모텔 3.펜션)
	private String sName; // 숙박업체명
	private String sContent; // 숙박업체 설명
	private int rId; //방 번호
	private int lCode; // 지역코드
	private int price;
	
	
	public  Sleep() {}


	public Sleep(int sId, String sType, String sName, String sContent, int rId, int lCode,int price) {
		super();
		this.sId = sId;
		this.sType = sType;
		this.sName = sName;
		this.sContent = sContent;
		this.rId = rId;
		this.lCode = lCode;
		this.price = price;
	}


	public Sleep(String sType, String sName, String sContent, int lCode,int price) {
		super();
		this.sType = sType;
		this.sName = sName;
		this.sContent = sContent;
		this.lCode = lCode;
		this.price = price;
	}
	
	public Sleep(int sId,String sType, String sName, String sContent, int lCode) {
		super();
		this.sId = sId;
		this.sType = sType;
		this.sName = sName;
		this.sContent = sContent;
		this.lCode = lCode;
	}

	public int getprice() {
		return price;
	}
	
	public void setprice(int price) {
		this.price = price;
	}

	public int getsId() {
		return sId;
	}


	public void setsId(int sId) {
		this.sId = sId;
	}


	public String getsType() {
		return sType;
	}


	public void setsType(String sType) {
		this.sType = sType;
	}


	public String getsName() {
		return sName;
	}


	public void setsName(String sName) {
		this.sName = sName;
	}


	public String getsContent() {
		return sContent;
	}


	public void setsContent(String sContent) {
		this.sContent = sContent;
	}


	public int getrId() {
		return rId;
	}


	public void setrId(int rId) {
		this.rId = rId;
	}


	public int getlCode() {
		return lCode;
	}


	public void setlCode(int lCode) {
		this.lCode = lCode;
	}


	@Override
	public String toString() {
		return "Sleep [sId=" + sId + ", sType=" + sType + ", sName=" + sName + ", sContent=" + sContent + ", rId=" + rId
				+ ", lCode=" + lCode + ",price"+price+"]";
	}
	
	

}
