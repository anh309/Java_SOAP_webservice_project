<%@page contentType="text/html;charset=UTF-8"%>
<HTML>
<HEAD>
<TITLE>Inputs</TITLE>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Bootstrap -->
<link href="../sampleAProxy/css/bootstrap.min.css" rel="stylesheet">
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="stylesheet" href="../sampleAProxy/css/foundation.css" />
<link rel="stylesheet" type="text/css" href="../sampleAProxy/slick/slick.css"/>
<link rel="stylesheet" href="../sampleAProxy/css/style.css" />
<link rel="stylesheet" href="../sampleAProxy/css/responsive.css" />
<link rel="shortcut icon" type="image/x-icon" href="../sampleAProxy/favicon.ico" />
<script src="../sampleAProxy/js/vendor/modernizr.js"></script>
<script src="../sampleAProxy/js/jquery.validate.js"></script>
<script src="../sampleAProxy/js/doSomeThing.js"></script>
</HEAD>
<BODY>
	<p style="margin-bottom: 15px; margin-top: 25px; font-size: 48px; font-weight: bold; color: black">Từ Điển</p>
	
	<select id="sourceLang" onchange="setsLanguage()">
		<option id="en">Tiếng Anh</option>
		<option id="vi">Tiếng Việt</option>
		<option id="ar">Tiếng Ả rập</option>
		<option id="ja">Tiếng Nhật</option>
		<option id="ko">Tiếng Hàn</option>
		<option id="de">Tiếng Đức</option>
		<option id="fr">Tiếng Pháp</option>
		<option id="it">Tiếng Ý</option>
		<option id="es">Tiếng Tây Ban Nha</option>
		<option id="zh">Tiếng Trung</option>
	</select>
	<p>Dịch sang</p>
	<select id="destinationLang" onchange="setdLanguage()">
		<option id="vi">Tiếng Việt</option>
		<option id="en">Tiếng Anh</option>
		<option id="ar">Tiếng Ả rập</option>
		<option id="ja">Tiếng Nhật</option>
		<option id="ko">Tiếng Hàn</option>
		<option id="de">Tiếng Đức</option>
		<option id="fr">Tiếng Pháp</option>
		<option id="it">Tiếng Ý</option>
		<option id="es">Tiếng Tây Ban Nha</option>
		<option id="zh">Tiếng Trung</option>
	</select>

	<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
		<INPUT TYPE="HIDDEN" NAME="method"
			VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup("13")%>">
		<textarea  NAME="words16" id="sWord" placeholder="Nhập văn bản" cols="40" rows="5"></textarea>
		</TD> <INPUT TYPE="HIDDEN" NAME="langSource18" SIZE=20 id="sLangCode"
			value="en">
		</TD> <INPUT TYPE="HIDDEN" NAME="langTarget20" SIZE=20 id="dLangCode"
			value="vi">
		</TD> <INPUT TYPE="SUBMIT" VALUE="Dịch">
	</FORM>
	<div id="showResult"></div>

	<input onclick='playSound("Male")' type='button'
		value='🔊 Phát âm (nam)' id="SvoiceM"/>
	<input onclick='playSound("Female")' type='button'
		value='🔊  Phát âm (nữ)' id="SvoiceF"/>

	<script type="text/javascript">
    	function playSound (genter) {      
            var text = document.getElementById("sWord").value;
            var voice = "";

            var sourceLang = document.getElementById("sourceLang");
            var indexStringsourceLang = sourceLang.selectedIndex;
            switch (indexStringsourceLang) {
                case 0:
                    voice = "UK English ";
                    break;
                case 1:
                    voice = "Vietnamese ";
                    break;
                case 2:
                    voice = "Arabic ";
                    break;
                case 3:
                    voice = "Japanese ";
                    break;
                case 4:
                    voice = "Korean ";
                    break;
                case 5:
                    voice = "Deutsch ";
                    break;
                case 6:
                    voice = "French ";
                    break;
                case 7:
                    voice = "Italian ";
                    break;
                case 8:
                    voice = "Esperanto ";
                    break;
                case 9:
                    voice = "Chinese ";
                    break;
                
                default:
                    break;
            }
            voice = voice + genter;
            console.log(voice);
            console.log(text);

            responsiveVoice.speak(text, voice);
        }

        
    </script>
	<script type="text/javascript" src="js/doInTrans.js"></script>


</BODY>
</HTML>
