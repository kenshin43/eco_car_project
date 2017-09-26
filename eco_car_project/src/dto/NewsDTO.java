package dto;
/**
 * 
 * @author DG
 *
 */
public class NewsDTO {
	private int code;
	private String title;
	private String linkUrl;
	private String des;
	
	public NewsDTO() {}
	public NewsDTO(String title, String linkUrl, String des) {
		super();
		this.title = title;
		this.linkUrl = linkUrl;
		this.des = des;
	}
	public NewsDTO(int code, String title, String linkUrl, String des) {
		super();
		this.code = code;
		this.title = title;
		this.linkUrl = linkUrl;
		this.des = des;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getLinkUrl() {
		return linkUrl;
	}
	public void setLinkUrl(String linkUrl) {
		this.linkUrl = linkUrl;
	}
	public String getDes() {
		return des;
	}
	public void setDes(String des) {
		this.des = des;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("NewsDTO [code=");
		builder.append(code);
		builder.append(", title=");
		builder.append(title);
		builder.append(", linkUrl=");
		builder.append(linkUrl);
		builder.append(", des=");
		builder.append(des);
		builder.append("]");
		return builder.toString();
	}
	
	
	
}
