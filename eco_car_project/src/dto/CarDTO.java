package dto;
/**
 *
 * @author DG
 *
 */
public class CarDTO {
	private int code;
	private String brand;
	private String name;
	private int year;
	private String price;
	private String distance;
	private String img;
	
	public CarDTO() {}
	public CarDTO(int code, String brand, String name, int year, String price, String distance, String img) {
		super();
		this.code = code;
		this.brand = brand;
		this.name = name;
		this.year = year;
		this.price = price;
		this.distance = distance;
		this.img = img;
	}
	
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getDistance() {
		return distance;
	}
	public void setDistance(String distance) {
		this.distance = distance;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("CarDTO [code=");
		builder.append(code);
		builder.append(", brand=");
		builder.append(brand);
		builder.append(", name=");
		builder.append(name);
		builder.append(", year=");
		builder.append(year);
		builder.append(", price=");
		builder.append(price);
		builder.append(", distance=");
		builder.append(distance);
		builder.append(", img=");
		builder.append(img);
		builder.append("]");
		return builder.toString();
	}
} // end of class
