package com.ws.object.thoitiet.chitiet;

public class ListWind {
	float speed; //tốc độ gió
	float deg; // hướng gió
	public float getSpeed() {
		return speed;
	}
	public void setSpeed(float speed) {
		this.speed = speed;
	}
	public float getDeg() {
		return deg;
	}
	public void setDeg(float deg) {
		this.deg = deg;
	}
	public ListWind() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ListWind(float speed, float deg) {
		super();
		this.speed = speed;
		this.deg = deg;
	}
	
}
