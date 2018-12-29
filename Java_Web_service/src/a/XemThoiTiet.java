package a;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;


public class XemThoiTiet {
	public String getThoiTiet(String location) throws FileNotFoundException, IOException {
		URL url;
		String total = "";
		try {
			// đưa vào url
			url = new URL("https://api.openweathermap.org/data/2.5/forecast?id="+idLocation(location)+"&appid=6429797b3f1052f2efbc878b53b28e64");
			URLConnection conn = url.openConnection();
			// mở stream và đưa vào buffer
			BufferedReader br = new BufferedReader(
					new InputStreamReader(conn.getInputStream()));
			String s = br.toString();
			String inputLine;
			//Xuất mà test chứ bạn
			while ((inputLine = br.readLine()) != null) {
				total = total + inputLine;
			}
			//xài xong nhớ tắt
			br.close();

		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return total;
	}
	private String idLocation(String location) {
		switch (location) {
		case "Tỉnh Nghệ An":
			return "1559969";
		case "Tỉnh Phú Thọ":
			return "1905577";
		case "Viet Tri":
			return "1562820";
		case "Tỉnh Quảng Ninh":
			return "1568758";
		case "Tỉnh Phú Yên":
			return "1569805";
		case "Uong Bi":
			return "1563241";
		case "Tỉnh Vĩnh Long":
			return "1559977";
		case "Vinh":
			return "1562798";
		case "Nha Trang":
			return "1572151";
		case "Hoi An":
			return "1580541";
		case "Socialist Republic of Vietnam":
			return "1562822";
		case "Ấp Vạn Tự Tây":
			return "1591793";
		case "Tỉnh Tuyên Quang":
			return "1559976";
		case "Thành phố Hồ Chí Minh":
			return "1580578";
		case "Thanh pho Ho Chi Minh":
			return "1566083";
		case "Tỉnh Hải Dương":
			return "1905686";
		case "Thành Phố Hải Phòng":
			return "1581297";
		case "Tỉnh Quảng Ngãi":
			return "1568769";
		case "Tỉnh Ðà Nẵng":
			return "1905468";
		case "Tỉnh Ðồng Nai":
			return "1582720";
 	    
		case  "Lagi":
		      return "1577995";
		case  "Ngô Châu":
		      return "1572461";
		case  "Phu Hưu":
		      return "1570565";
		case  "Vinh Long":
		      return "1562693";
		case  "Tuy Hoa":
		      return "1563281";
		case  "Tuyen Quang":
		      return "1563287";
		case  "Thu Dau Mot":
		      return "1565022";
		case  "Tỉnh Bình Dương":
		      return "1905475";
		case  "Tỉnh Thái Nguyên":
		      return "1905497";
		case  "Thai Nguyen":
		      return "1566319";
		case  "Tỉnh Thái Bình":
		      return "1566338";
		case  "Thai Binh":
		      return "1566346";
		case  "Tỉnh Tây Ninh":
		      return "1566557";
		case  "Tay Ninh":
		      return "1566559";
		case  "Tỉnh Long An":
		      return "1575788";
		case  "Tan An":
		      return "1567069";
		case  "Tỉnh Quảng Nam":
		      return "1905516";
		case  "Tam Ky":
		      return "1567148";
		case  "Tỉnh Hà Tây":
		      return "1581019";
		case  "Son Tay":
		      return "1567621";
		case  "Tỉnh Sơn La":
		      return "1567643";
		case  "Son La":
		      return "1567681";
		case  "Song Cau":
		      return "1567723";
		case  "Tỉnh Sóc Trăng":
		      return "1559972";
		case  "Soc Trang":
		      return "1567788";
		case  "Tỉnh Lào Cai":
		      return "1562412";
		case  "Sa Pa":
		      return "1568043";
		case  "Tỉnh Ðồng Tháp":
		      return "1582562";
		case  "Sa Dec":
		      return "1568212";
		case  "Tỉnh Hà Nam":
		      return "1905637";
		case  "Phu Ly":
		      return "1570449";
		case  "Phu Khuong":
		      return "1570549";
		case  "Tỉnh Ninh Thuận":
		      return "1559971";
		case  "Phan Rang-Thap Cham":
		      return "1571067";
		case  "Tỉnh Khánh Hòa":
		      return "1579634";
		case  "Lao Cai":
		      return "1576303";
		case  "Tỉnh Hưng Yên":
		      return "1905699";
		case  "Hung Yen":
		      return "1580142";
		case  "Ha Long":
		      return "1580410";
		case  "Ha Tien":
		      return "1581052";
		case  "Thủ Ðô Hà Nội":
		      return "1581129";
		case  "Tỉnh Hà Giang":
		      return "1581030";
		case  "Ha Giang":
		      return "1581349";
		case  "Ha Dong":
		      return "1581364";
		case  "Dong Xoai":
		      return "1582436";
		case  "Dong Ha":
		      return "1582926";
		case  "Huyện Ðiện Biên":
		      return "1905099";
		case  "Cu Chi":
		      return "1584661";
		case  "Chau Doc":
		      return "1585660";
		case  "Cao Lanh":
		      return "1586151";
		case  "Can Gio":
		      return "1586288";
		case  "Can Duoc":
		      return "1586296";
		case  "Cam Ranh":
		      return "1586350";
		case  "Cam Pha Mines":
		      return "1586357";
		case  "Bim Son":
		      return "1587919";
		case  "Tỉnh Bắc Ninh":
		      return "1905412";
		case  "Bac Ninh":
		      return "1591449";
		case  "Tỉnh Bạc Liêu":
		      return "1905675";
		case  "Thanh pho Bac Lieu":
		      return "1591474";
		case  "Tỉnh Bắc Giang":
		      return "1905419";
		case  "Bac Giang":
		      return "1591527";
		case  "Tỉnh Bắc Kạn":
		      return "1905669";
		case  "Bac Kan":
		      return "1591538";
		case  "Yen Vinh":
		      return "1560037";
		case  "Xóm Pho":
		      return "1561096";
		case  "Hai Duong":
		      return "1581326";
		case  "Turan":
		      return "1583992";
		case  "Bien Hoa":
		      return "1587923";
		case  "Tỉnh Cần Thơ":
		      return "1581188";
		case  "Can Tho":
		      return "1586203";
		case  "Tỉnh Bà Rịa-Vũng Tàu":
		      return "1584534";
		case  "Vung Tau":
		      return "1562414";
		case  "Thôn Ðiền Hạ":
		      return "1565654";
		case  "Quang Ngai":
		      return "1568770";
		case  "Tỉnh Ninh Bình":
		      return "1559970";
		case  "Ninh Binh":
		      return "1571968";
		case  "Tỉnh Ðắc Lắk":
		      return "1584169";
		case  "Buon Ma Thuot":
		      return "1586896";
		case  "Tỉnh Kiến Giang":
		      return "1579008";
		case  "Rach Gia":
		      return "1568510";
		case  "Da Lat":
		      return "1584071";
		case  "Quy Nhon":
		      return "1568574";
		case  "Thanh Hoa":
		      return "1566166";
		case  "Hoa Binh":
		      return "1580830";
		case  "Yen Bai":
		      return "1560349";
		case  "My Tho":
		      return "1574023";
		case  "Tra Vinh":
		      return "1563926";
		case  "Ca Mau":
		      return "1586443";
		case  "Nam Dinh":
		      return "1573517";
		case  "Ben Tre":
		      return "1587976";
		case  "Lang Son":
		      return "1576633";
		case  "Cao Bang":
		      return "1586185";
		case  "Hue":
		      return "1580240";
		case  "Long Xuyen":
		      return "1575627";
		case  "Phan Thiet":
		      return "1571058";
		case  "Kon Tum":
		      return "1578500";
		case  "Vinh Yen":
		      return "1562548";
		case  "Ha Tinh":
		      return "1581047";
		case  "Dong Hoi":
		      return "1582886";
		case  "Hai Ha":
		      return "1581323";
		case  "Pleiku":
		      return "1569684";
		case  "Ha Noi":
		      return "1581130";
		case  "Dien Bien Phu":
		      return "1583477";
		case  "Huyen Thanh Son":
		      return "1566053";
		case  "Huyen Son Duong":
		      return "1567649";
		case  "Thi xa Phu Tho":
		      return "1569901";
		case  "Duong GJong":
		      return "1569973";
		case  "Phong Tho":
		      return "1570815";
		case  "Huyen Doan Hung":
		      return "1583240";
		case  "Con Son":
		      return "1584807";
		case  "Uyen Hung":
		      return "7910088";
		case  "Huyen Yen Lap":
		      return "8200099";
		case  "Huyen Thanh Hoa":
		      return "8200205";
		case  "Huyen Song Thao":
		      return "8200212";
		case  "Huyen Tam Thanh":
		      return "8200783";
		case  "Huyen Phong Chau":
		      return "8200836";
		case  "Huyen Ba Vi":
		      return "8201616";
		}
		return "";
	}
}
