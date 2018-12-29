package com.ws.object.thoitiet.chitiet;

public class ListWeather {
	String id;
	String main; // chỉ thông số tình trạng thời tiết chung 
	String description; // Quy định thời tiết 
	String icon; // icon
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getMain() {
		return main;
	}
	public void setMain(String main) {
		this.main = main;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public ListWeather(String id, String main, String description, String icon) {
		super();
		this.id = id;
		this.main = main;
		this.description = description;
		this.icon = icon;
	}
	public ListWeather() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
