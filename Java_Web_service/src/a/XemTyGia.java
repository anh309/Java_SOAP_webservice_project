package a;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

public class XemTyGia {
	public String getTyGia() throws FileNotFoundException, IOException {
		URL url;
		String total = "";
		try {
			// đưa vào url
			url = new URL("http://www.dongabank.com.vn/exchange/export");
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
}
