package a;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LuuDiem {
	public String gameFlap(String name, String score) throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException{
		//vao database
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
		Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=QuanLySinhVien;user=sa;password=123");

		//tao statement de chay cau lenh sql
		Statement stmt = (Statement) conn.createStatement();
		String kq = "";
		if(name == null ||name =="") {
			return "Chưa nhập tên";
		}else {
			String query2 = "insert into gameFlap values (N'"+name+"',"+score+")";

			PreparedStatement st = conn.prepareStatement(query2);
			int n=st.executeUpdate();
		}
		conn.close();
		return "true";
	}
	public String loadScore () throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
		Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=QuanLySinhVien;user=sa;password=123");

		//tao statement de chay cau lenh sql
		Statement stmt = (Statement) conn.createStatement();
		String query = "select * from gameFlap order by score desc";
		String kq = "";
		stmt.executeQuery(query);
		ResultSet rs = stmt.getResultSet();
		if(rs.next()) {
			kq=kq + rs.getString(1) + " " + rs.getString(2) ;
		}

		return kq;
	}
}
