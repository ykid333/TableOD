package icia.TblOrders.dto;

public class TableInfoDTO {
	
	private String tbnumber;
	private String tbvisit;
	private String tbstate;
	
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
	public String getTbstate() {
		return tbstate;
	}
	public void setTbstate(String tbstate) {
		this.tbstate = tbstate;
	}
	
	@Override
	public String toString() {
		return "TableInfoDTO [tbnumber=" + tbnumber + ", tbvisit=" + tbvisit + ", tbstate=" + tbstate + "]";
	}
	
	
	

}
