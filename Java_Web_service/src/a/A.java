package a;

import java.net.MalformedURLException;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.ws.object.MonHoc;
import com.ws.object.SinhVien;


public class A {
	public static SinhVien sv = new SinhVien();
	public String hi(String acc, String pass) throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException{
		//vao database
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
		Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=QuanLySinhVien;user=sa;password=123");

		//tao statement de chay cau lenh sql
		Statement stmt = (Statement) conn.createStatement();
		String query = "SELECT * FROM TaiKhoan";	//lay moi tai khoan ra xet
		stmt.executeQuery(query);
		ResultSet rs = stmt.getResultSet();

		while(rs.next()) {	
			String user = rs.getString(1);
			String pw = rs.getString(2);
			String ms = rs.getString(4);
			if(user.equals(acc) && pw.equals(pass)) { // lay acc voi pass ra kiem tra
				//sv = new SinhVien(); // sinh vien dang nhap phai tao moi
				//Gan cac gia tri thong tin cua sinh vien tu bang TaiKhoan
				sv.setAcc(user);
				sv.setPass(pw);
				sv.setEmail(rs.getString(3));
				sv.setMssv(rs.getInt(4));

				//Lay cac thong tin tu bang ThongTinSV
				query = "select * from ThongTinSV where MSSV ="+ms;
				stmt.executeQuery(query);
				rs = stmt.getResultSet();
				if(rs.next()) {
					sv.setHoten(rs.getString(2));
					sv.setPhai(rs.getString(3));
					sv.setLop(rs.getString(4));
					sv.setNamNhapHoc(rs.getString(5));
					sv.setNamSinh(rs.getString(6));
					sv.setQue(rs.getString(7));

				}
				//Lay mon hoc, xem func: layLop(ms);
				sv.monHoc = layLop(ms);
				conn.close();//dong ket noi
				
				return "true"+sv.toString() +"~"+diemTBTL()+sv.getMonHoc().toString();
			}
		}
		conn.close();
		return "false";
	}

	public String dangKy(String acc, String pass, String email, String mssv, String hoTen, String Phai, String lop, String namNhapHoc, String namSinh, String que) throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException {
		//database conecction
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
		Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=QuanLySinhVien;user=sa;password=123");
		Statement stmt = (Statement) conn.createStatement();

		PreparedStatement st = null;
		int n;

		String query = "select Acc from TaiKhoan";
		stmt.executeQuery(query);
		ResultSet rs = stmt.getResultSet();

		//xÃ©t ten tk
		while(rs.next()) {
			String user = rs.getString(1);
			if(user.equals(acc)) {
				conn.close();
				return "TÃ i khoáº£n Ä‘Ã£ tá»“n táº¡i";
			}
		}
		//xet mssv
		query = "select MSSV from ThongTinSV";
		stmt.executeQuery(query);
		rs = stmt.getResultSet();

		while(rs.next()) {
			String ms = rs.getString(1);
			if(ms.equals(mssv)) {
				conn.close();
				return "MÃ£ sinh viÃªn Ä‘Ã£ tá»“n táº¡i";
			}
		}

		//them vao thongtinsv
		query = "insert into ThongTinSV values ("+mssv+", N'"+hoTen+"',N'"+Phai+"',N'"+lop+"',"+namNhapHoc+", '"+namSinh+"',N'"+que+"')";
		st = conn.prepareStatement(query);
		n=st.executeUpdate();
		//them vao taikhoan
		query = "insert into TaiKhoan values (N'"+acc+"', N'"+pass+"', N'"+email+"', "+mssv+")";
		st = conn.prepareStatement(query);
		n=st.executeUpdate();
		conn.close();
		return "Ä�Äƒng kÃ­ thÃ nh cÃ´ng";
	}
	private ArrayList<MonHoc> layLop(String ms) throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException{

		ArrayList<MonHoc> lop = new ArrayList<MonHoc>();
		//connection
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
		Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=QuanLySinhVien;user=sa;password=123");

		Statement stmt = (Statement) conn.createStatement();

		String query = "select m.MMH,m.TenMH,m.GiaoVien,m.Thu,m.Tiet,m.PhongHoc " + 
				"from ThongTinSV t join Diem d on d.MSSV=t.MSSV join MonHoc m on m.MMH=d.MMH " + 
				"where t.MSSV=" +ms;
		stmt.executeQuery(query);
		ResultSet rs = stmt.getResultSet();
		//mon hoc ma ms hoc
		while(rs.next()) {

			MonHoc mh = new MonHoc();
			mh.setMmh(rs.getInt(1));
			mh.setTenMH(rs.getString(2));
			mh.setGiaoVien(rs.getString(3));
			mh.setThu(rs.getString(4));
			mh.setTiet(rs.getString(5));
			mh.setPhongHoc(rs.getString(6));

			String query2 = "select d.* " + 
					"from ThongTinSV t join Diem d on d.MSSV=t.MSSV join MonHoc m on m.MMH=d.MMH " + 
					"where t.MSSV=" +ms +" and m.MMH="+ mh.getMmh();
			Statement stmt2 = (Statement) conn.createStatement();
			stmt2.executeQuery(query2);
			ResultSet rsDiem = stmt2.getResultSet();
			while (rsDiem.next()) {
				mh.setTk(rsDiem.getFloat(3));
				mh.setGk(rsDiem.getFloat(4));
				mh.setCk(rsDiem.getFloat(5));
				mh.setTh(rsDiem.getFloat(6));
				mh.setTb(rsDiem.getFloat(7));
				
			}
			lop.add(mh);	
		}
		conn.close();
		return lop;
	}

	public String whoami() {
		return "" + sv.getHoten();
	}
	public String timKiemTT(String info) throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException {
		if(info == "" || info == null)
			return "ThÃ´ng tin khÃ´ng há»£p lá»‡";
		SinhVien svien = timEmail(info);
		if(svien.getMssv()!=0)
			return "founded"+svien.toString();
		
		svien = timMSSV(info);
		if(svien.getMssv()!=0)
			return "founded"+svien.toString();
		
		svien = timHoTen(info);
		if(svien.getMssv()!=0)
			return "founded"+svien.toString();
		
		
		return "KhÃ´ng tháº¥y thÃ´ng tin cáº§n tÃ¬m";
	}
	
	private SinhVien timEmail(String email) throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException {
		SinhVien svien = new SinhVien("","","",0,"","","","","","");
		
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
		Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=QuanLySinhVien;user=sa;password=123");
		
		

		Statement stmt = (Statement) conn.createStatement();
		String query = "select ThongTinSV.MSSV, HoTen, Phai, Lop, NamNhapHoc, NamSinh, Que , Email " + 
				"from TaiKhoan join ThongTinSV on TaiKhoan.MSSV=ThongTinSV.MSSV " + 
				"where Email = N'"+email+"'";
		stmt.executeQuery(query);
		ResultSet rs = stmt.getResultSet();
		if(rs.next()) {
			svien.setMssv(rs.getInt(1));
			svien.setHoten(rs.getString(2));
			svien.setPhai(rs.getString(3));
			svien.setLop(rs.getString(4));
			svien.setNamNhapHoc(rs.getString(5));
			svien.setNamSinh(rs.getString(6));
			svien.setQue(rs.getString(7));
			svien.setEmail(rs.getString(8));
		}
		return svien;
	}
	
	private SinhVien timMSSV(String mssv) throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException {
		SinhVien svien = new SinhVien("","","",0,"","","","","","");
		
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
		Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=QuanLySinhVien;user=sa;password=123");

		int ms;
		try {
			ms = Integer.parseInt(mssv);
		}catch (Exception e) {
			ms=-1;
		}
		
		Statement stmt = (Statement) conn.createStatement();
		String query = "select ThongTinSV.MSSV, HoTen, Phai, Lop, NamNhapHoc, NamSinh, Que , Email " + 
				"from TaiKhoan join ThongTinSV on TaiKhoan.MSSV=ThongTinSV.MSSV " + 
				"where ThongtinSV.MSSV = "+ms;
		stmt.executeQuery(query);
		ResultSet rs = stmt.getResultSet();
		if(rs.next()) {
			svien.setMssv(rs.getInt(1));
			svien.setHoten(rs.getString(2));
			svien.setPhai(rs.getString(3));
			svien.setLop(rs.getString(4));
			svien.setNamNhapHoc(rs.getString(5));
			svien.setNamSinh(rs.getString(6));
			svien.setQue(rs.getString(7));
			svien.setEmail(rs.getString(8));
		}
		return svien;
	}
	
	private SinhVien timHoTen(String hoTen) throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException {
		SinhVien svien = new SinhVien("","","",0,"","","","","","");
		
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
		Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=QuanLySinhVien;user=sa;password=123");


		Statement stmt = (Statement) conn.createStatement();
		String query = "select ThongTinSV.MSSV, HoTen, Phai, Lop, NamNhapHoc, NamSinh, Que , Email " + 
				"from TaiKhoan join ThongTinSV on TaiKhoan.MSSV=ThongTinSV.MSSV " + 
				"where HoTen like N'"+hoTen.trim()+"'";
		stmt.executeQuery(query);
		ResultSet rs = stmt.getResultSet();
		if(rs.next()) {
			svien.setMssv(rs.getInt(1));
			svien.setHoten(rs.getString(2));
			svien.setPhai(rs.getString(3));
			svien.setLop(rs.getString(4));
			svien.setNamNhapHoc(rs.getString(5));
			svien.setNamSinh(rs.getString(6));
			svien.setQue(rs.getString(7));
			svien.setEmail(rs.getString(8));
		}
		return svien;
	}
	
	public float diemTBTL() {
		float s = 0;
		for(int i = 0 ; i<sv.getMonHoc().size(); i++ ) {
			s = s + sv.getMonHoc().get(i).getTb();
		}
			
		s= s / sv.getMonHoc().size();
		return s;
	}

}//vl, m xia eclip IDE k ho~ tro web service ?


