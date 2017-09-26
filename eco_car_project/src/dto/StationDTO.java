package dto;

public class StationDTO {
	private int cpid;
	private String csnm;
	private String addr;
	private double lat;
	private double longi;
	private int chargetp;
	
	public StationDTO() {}
	public StationDTO(int cpid, String csnm, String addr, double lat, double longi, int chargetp) {
		super();
		this.cpid = cpid;
		this.csnm = csnm;
		this.addr = addr;
		this.lat = lat;
		this.longi = longi;
		this.chargetp = chargetp;
	}
	
	public int getCpid() {
		return cpid;
	}
	public void setCpid(int cpid) {
		this.cpid = cpid;
	}
	public String getCsnm() {
		return csnm;
	}
	public void setCsnm(String csnm) {
		this.csnm = csnm;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public double getLat() {
		return lat;
	}
	public void setLat(double lat) {
		this.lat = lat;
	}
	public double getLongi() {
		return longi;
	}
	public void setLongi(double longi) {
		this.longi = longi;
	}
	public int getChargetp() {
		return chargetp;
	}
	public void setChargetp(int chargetp) {
		this.chargetp = chargetp;
	}
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("StationDTO [cpid=");
		builder.append(cpid);
		builder.append(", csnm=");
		builder.append(csnm);
		builder.append(", addr=");
		builder.append(addr);
		builder.append(", lat=");
		builder.append(lat);
		builder.append(", longi=");
		builder.append(longi);
		builder.append(", chargetp=");
		builder.append(chargetp);
		builder.append("]");
		return builder.toString();
	}
}
