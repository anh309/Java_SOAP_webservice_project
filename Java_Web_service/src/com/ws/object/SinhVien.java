package com.ws.object;

import java.util.ArrayList;

public class SinhVien {
	public String acc;
	protected String pass;
	public String email;
	public int mssv;
	public String hoten;
	public String phai;
	public String lop;
	public String namNhapHoc;
	public String namSinh;
	public String que;
	public ArrayList<MonHoc> monHoc;
	public String getAcc() {
		return acc;
	}
	public void setAcc(String acc) {
		this.acc = acc;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getMssv() {
		return mssv;
	}
	public void setMssv(int mssv) {
		this.mssv = mssv;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public String getPhai() {
		return phai;
	}
	public void setPhai(String phai) {
		this.phai = phai;
	}
	public String getLop() {
		return lop;
	}
	public void setLop(String lop) {
		this.lop = lop;
	}
	public String getNamNhapHoc() {
		return namNhapHoc;
	}
	public void setNamNhapHoc(String namNhapHoc) {
		this.namNhapHoc = namNhapHoc;
	}
	public String getNamSinh() {
		return namSinh;
	}
	public void setNamSinh(String namSinh) {
		String[] ns = namSinh.split("-");
		namSinh = ns[2]+"-"+ns[1]+"-"+ns[0];
		this.namSinh = namSinh;
	}
	public String getQue() {
		return que;
	}
	public void setQue(String que) {
		this.que = que;
	}
	public ArrayList<MonHoc> getMonHoc() {
		return monHoc;
	}
	public void setMonHoc(ArrayList<MonHoc> monHoc) {
		this.monHoc = monHoc;
	}
	public SinhVien(String acc, String pass, String email, int mssv, String hoten, String phai, String lop,
			String namNhapHoc, String namSinh, String que, ArrayList<MonHoc> monHoc) {
		super();
		this.acc = acc;
		this.pass = pass;
		this.email = email;
		this.mssv = mssv;
		this.hoten = hoten;
		this.phai = phai;
		this.lop = lop;
		this.namNhapHoc = namNhapHoc;
		this.namSinh = namSinh;
		this.que = que;
		this.monHoc = monHoc;
	}
	public SinhVien(String acc, String pass, String email, int mssv, String hoten, String phai, String lop,
			String namNhapHoc, String namSinh, String que) {
		super();
		this.acc = acc;
		this.pass = pass;
		this.email = email;
		this.mssv = mssv;
		this.hoten = hoten;
		this.phai = phai;
		this.lop = lop;
		this.namNhapHoc = namNhapHoc;
		this.namSinh = namSinh;
		this.que = que;
	}
	public SinhVien() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public String toString() {
		return "~"+acc+"~"+email+"~"+mssv+"~"+hoten+"~"+phai+"~"+lop+"~"+namNhapHoc+"~"+namSinh+"~"+que;
	}
	
	
}
