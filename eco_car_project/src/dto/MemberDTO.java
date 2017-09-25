package dto;

public class MemberDTO {
	private String id;
	private String pwd;
	private String salt;
	private String email;
	private int isAdmin;
	
	public MemberDTO() {}
	public MemberDTO(String id, String pwd, String salt, String email, int isAdmin) {
		this.id = id;
		this.pwd = pwd;
		this.salt = salt;
		this.email = email;
		this.isAdmin = isAdmin;
	}
	public MemberDTO(String id, String pwd, String email, int isAdmin) {
		this.id = id;
		this.pwd = pwd;
		this.email = email;
		this.isAdmin = isAdmin;
	}
	public MemberDTO(String id, String pwd) {
		this.id = id;
		this.pwd = pwd;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getIsAdmin() {
		return isAdmin;
	}
	public void setIsAdmin(int isAdmin) {
		this.isAdmin = isAdmin;
	}
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("memberDTO [id=");
		builder.append(id);
		builder.append(", pwd=");
		builder.append(pwd);
		builder.append(", salt=");
		builder.append(salt);
		builder.append(", email=");
		builder.append(email);
		builder.append(", isAdmin=");
		builder.append(isAdmin);
		builder.append("]");
		return builder.toString();
	}
}
