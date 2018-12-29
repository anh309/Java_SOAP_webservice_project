package a;

import java.io.IOException;

import com.darkprograms.speech.translator.GoogleTranslate;

public class TranslateEngine {
	public String trans(String words, String langSource, String langTarget) throws IOException {
		String s = GoogleTranslate.translate(langSource,langTarget,words);
		//en anh
		//vi việt
		//ar ả rập
		//ja nhật
		//ko hàn
		//de đức
		//fr pháp
		//it ý
		//es tây ban nha
		//zh khựa
		
		return s+"~" + langTarget;
	}
}
