package icia.TblOrders.dto;

public class MenuDTO {
	private String mncode;		//코드
	private String mnname;		//이름
	private int mnprice;		//가격
	private String mnimg;		//이미지
	private String mninfo;		//상세정보
	private String mnstate;		//상태
	public String getMncode() {
		return mncode;
	}
	public void setMncode(String mncode) {
		this.mncode = mncode;
	}
	public String getMnname() {
		return mnname;
	}
	public void setMnname(String mnname) {
		this.mnname = mnname;
	}
	public int getMnprice() {
		return mnprice;
	}
	public void setMnprice(int mnprice) {
		this.mnprice = mnprice;
	}
	public String getMnimg() {
		return mnimg;
	}
	public void setMnimg(String mnimg) {
		this.mnimg = mnimg;
	}
	public String getMninfo() {
		return mninfo;
	}
	public void setMninfo(String mninfo) {
		this.mninfo = mninfo;
	}
	public String getMnstate() {
		return mnstate;
	}
	public void setMnstate(String mnstate) {
		this.mnstate = mnstate;
	}
	@Override
	public String toString() {
		return "MenuDTO [mncode=" + mncode + ", mnname=" + mnname + ", mnprice=" + mnprice + ", mnimg=" + mnimg
				+ ", mninfo=" + mninfo + ", mnstate=" + mnstate + "]";
	}
	
	
	
}
