package com.ws.object.thoitiet.main;

import java.util.ArrayList;

public class ThongTinThoiTiet {
	String cod; //tham số, k quan trọng
	String message; // tham số, k quan trọng
	int cnt; // số lượng dòng API phản hồi
	ArrayList<ThongSoThoiTiet> list; // thông tin thời tiết
	ThanhPho city; // thành phố
	public String getCod() {
		return cod;
	}
	public void setCod(String cod) {
		this.cod = cod;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public ArrayList<ThongSoThoiTiet> getList() {
		return list;
	}
	public void setList(ArrayList<ThongSoThoiTiet> list) {
		this.list = list;
	}
	public ThanhPho getCity() {
		return city;
	}
	public void setCity(ThanhPho city) {
		this.city = city;
	}
	public ThongTinThoiTiet(String cod, String message, int cnt, ArrayList<ThongSoThoiTiet> list, ThanhPho city) {
		super();
		this.cod = cod;
		this.message = message;
		this.cnt = cnt;
		this.list = list;
		this.city = city;
	}
	public ThongTinThoiTiet() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
