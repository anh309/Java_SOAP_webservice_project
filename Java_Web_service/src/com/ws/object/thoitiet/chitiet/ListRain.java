package com.ws.object.thoitiet.chitiet;

public class ListRain {
	float rain3h; // lượng mưa trong 3 h qua (mm)

	public float getRain3h() {
		return rain3h;
	}

	public void setRain3h(float rain3h) {
		this.rain3h = rain3h;
	}

	public ListRain(float rain3h) {
		super();
		this.rain3h = rain3h;
	}

	public ListRain() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
