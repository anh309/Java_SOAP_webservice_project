<%@page contentType="text/html;charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
<script type="text/javascript" src="js/doInTrans.js"></script>
<script src='//vws.responsivevoice.com/v/e?key=RzCHZTon'></script>
</HEAD>
<BODY>
	<jsp:useBean id="sampleTranslateEngineProxyid" scope="session"
		class="a.TranslateEngineProxy" />
	<%
		if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
			sampleTranslateEngineProxyid.setEndpoint(request.getParameter("endpoint"));
	%>

	<%
		String method = request.getParameter("method");
		int methodID = 0;
		if (method == null)
			methodID = -1;

		if (methodID != -1)
			methodID = Integer.parseInt(method);
		boolean gotMethod = false;

		try {
			switch (methodID) {
			case 2:
				gotMethod = true;
				java.lang.String getEndpoint2mtemp = sampleTranslateEngineProxyid.getEndpoint();
				if (getEndpoint2mtemp == null) {
	%>
	<%=getEndpoint2mtemp%>
	<%
		} else {
					String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils
							.markup(String.valueOf(getEndpoint2mtemp));
	%>
	<%=tempResultreturnp3%>
	<%
		}
				break;
			case 5:
				gotMethod = true;
				String endpoint_0id = request.getParameter("endpoint8");
				java.lang.String endpoint_0idTemp = null;
				if (!endpoint_0id.equals("")) {
					endpoint_0idTemp = endpoint_0id;
				}
				sampleTranslateEngineProxyid.setEndpoint(endpoint_0idTemp);
				break;
			case 10:
				gotMethod = true;
				a.TranslateEngine getTranslateEngine10mtemp = sampleTranslateEngineProxyid.getTranslateEngine();
				if (getTranslateEngine10mtemp == null) {
	%>
	<%=getTranslateEngine10mtemp%>
	<%
		} else {
					if (getTranslateEngine10mtemp != null) {
						String tempreturnp11 = getTranslateEngine10mtemp.toString();
	%>
	<%=tempreturnp11%>
	<%
		}
				}
				break;
			case 13:
				gotMethod = true;
				String words_1id = request.getParameter("words16");
				java.lang.String words_1idTemp = null;
				if (!words_1id.equals("")) {
					words_1idTemp = words_1id;
				}
				String langSource_2id = request.getParameter("langSource18");
				java.lang.String langSource_2idTemp = null;
				if (!langSource_2id.equals("")) {
					langSource_2idTemp = langSource_2id;
				}
				String langTarget_3id = request.getParameter("langTarget20");
				java.lang.String langTarget_3idTemp = null;
				if (!langTarget_3id.equals("")) {
					langTarget_3idTemp = langTarget_3id;
				}
				java.lang.String trans13mtemp = sampleTranslateEngineProxyid.trans(words_1idTemp,
						langSource_2idTemp, langTarget_3idTemp);
				if (trans13mtemp == null) {
	%>
	<%=trans13mtemp%>
	<%
		} else {
					String tempResultreturnp14 = org.eclipse.jst.ws.util.JspUtils
							.markup(String.valueOf(trans13mtemp));
	%>
	<p id="kq" style="display: none;"><%=tempResultreturnp14%></p>
	
	<%
		}
				break;
			}
		} catch (Exception e) {
	%>
	Exception:
	<%=org.eclipse.jst.ws.util.JspUtils.markup(e.toString())%>
	Message:
	<%=org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage())%>
	<%
		return;
		}
		if (!gotMethod) {
	%>
	<%
		}
	%>
	<div id="showResult">
		
	</div>
	<input onclick='playSoundD("Male")' type='button'
		value='🔊  Phát âm (nam)' id="DvoiceM"/>
	<input onclick='playSoundD("Female")' type='button'
		value='🔊  Phát âm (nữ)' id="DvoiceF"/>
	<script type="text/javascript">
		var kq = document.getElementById("kq").innerHTML;
		var lskq = kq.split("~");
		document.getElementById("showResult").innerHTML = lskq[0];

		function playSoundD (genter) {      
            
            switch (lskq[1]) {
                case "en":
                    voice = "UK English ";
                    break;
                case "vi":
                    voice = "Vietnamese ";
                    break;
                case "ar":
                    voice = "Arabic ";
                    break;
                case "ja":
                    voice = "Japanese ";
                    break;
                case "ko":
                    voice = "Korean ";
                    break;
                case "de":
                    voice = "Deutsch ";
                    break;
                case "fr":
                    voice = "French ";
                    break;
                case "it":
                    voice = "Italian ";
                    break;
                case "es":
                    voice = "Esperanto ";
                    break;
                case "zh":
                    voice = "Chinese ";
                    break;
                default:
                    break;
            }
            voice = voice + genter;
            console.log(voice);
            console.log(lskq[0]);

            responsiveVoice.speak(lskq[0], voice);
        }

	</script>
</BODY>
</HTML>