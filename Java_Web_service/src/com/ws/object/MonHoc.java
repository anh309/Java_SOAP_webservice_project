package com.ws.object;

public class MonHoc {
	int mmh;
	String tenMH;
	String giaoVien;
	String thu;
	String Tiet;
	String phongHoc;
	float tk;
	float gk;
	float ck;
	float th;
	float tb;
	public int getMmh() {
		return mmh;
	}
	public void setMmh(int mmh) {
		this.mmh = mmh;
	}
	public String getTenMH() {
		return tenMH;
	}
	public void setTenMH(String tenMH) {
		this.tenMH = tenMH;
	}
	public String getGiaoVien() {
		return giaoVien;
	}
	public void setGiaoVien(String giaoVien) {
		this.giaoVien = giaoVien;
	}
	public String getThu() {
		return thu;
	}
	public void setThu(String thu) {
		this.thu = thu;
	}
	public String getTiet() {
		return Tiet;
	}
	public void setTiet(String tiet) {
		Tiet = tiet;
	}
	public String getPhongHoc() {
		return phongHoc;
	}
	public void setPhongHoc(String phongHoc) {
		this.phongHoc = phongHoc;
	}
	
	
	public float getTk() {
		return tk;
	}
	public void setTk(float tk) {
		this.tk = tk;
	}
	public float getGk() {
		return gk;
	}
	public void setGk(float gk) {
		this.gk = gk;
	}
	public float getCk() {
		return ck;
	}
	public void setCk(float ck) {
		this.ck = ck;
	}
	public float getTh() {
		return th;
	}
	public void setTh(float th) {
		this.th = th;
	}
	public float getTb() {
		return tb;
	}
	public void setTb(float tb) {
		this.tb = tb;
	}
	public MonHoc(int mmh, String tenMH, String giaoVien, String thu, String tiet, String phongHoc) {
		super();
		this.mmh = mmh;
		this.tenMH = tenMH;
		this.giaoVien = giaoVien;
		this.thu = thu;
		Tiet = tiet;
		this.phongHoc = phongHoc;
	}
	
	public MonHoc(int mmh, String tenMH, String giaoVien, String thu, String tiet, String phongHoc, float tk, float gk,
			float ck, float th, float tb) {
		super();
		this.mmh = mmh;
		this.tenMH = tenMH;
		this.giaoVien = giaoVien;
		this.thu = thu;
		Tiet = tiet;
		this.phongHoc = phongHoc;
		this.tk = tk;
		this.gk = gk;
		this.ck = ck;
		this.th = th;
		this.tb = tb;
	}
	public String toString () {
		return "|"+mmh+"~"+tenMH+"~"+giaoVien+"~"+thu+"~"+Tiet+"~"+phongHoc+"~"+tk+"~"+gk+"~"+ck+"~"+th+"~"+tb;
	}
	public MonHoc() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
