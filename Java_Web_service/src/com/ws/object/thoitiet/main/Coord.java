package com.ws.object.thoitiet.main;

public class Coord {
	String lat; // vĩ độ
	String lon;	// vĩ độ
	public String getLat() {
		return lat;
	}
	public void setLat(String lat) {
		this.lat = lat;
	}
	public String getLon() {
		return lon;
	}
	public void setLon(String lon) {
		this.lon = lon;
	}
	public Coord(String lat, String lon) {
		super();
		this.lat = lat;
		this.lon = lon;
	}
	public Coord() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
