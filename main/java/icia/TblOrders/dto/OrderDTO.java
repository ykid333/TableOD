package icia.TblOrders.dto;

public class OrderDTO {
	
	private String odcode;
	public String getOdcode() {
		return odcode;
	}
	public void setOdcode(String odcode) {
		this.odcode = odcode;
	}
	
	private String mncode;
	private String odcount;
	private String tbnumber;
	private String tbvisit;
	
	public String getMncode() {
		return mncode;
	}
	public void setMncode(String mncode) {
		this.mncode = mncode;
	}
	public String getOdcount() {
		return odcount;
	}
	public void setOdcount(String odcount) {
		this.odcount = odcount;
	}
	public String getTbnumber() {
		return tbnumber;
	}
	public void setTbnumber(String tbnumber) {
		this.tbnumber = tbnumber;
	}
	public String getTbvisit() {
		return tbvisit;
	}
	public void setTbvisit(String tbvisit) {
		this.tbvisit = tbvisit;
	}
	@Override
	public String toString() {
		return "OrderDTO [odcode=" + odcode + ", mncode=" + mncode + ", odcount=" + odcount + ", tbnumber=" + tbnumber
				+ ", tbvisit=" + tbvisit + "]";
	}
}
