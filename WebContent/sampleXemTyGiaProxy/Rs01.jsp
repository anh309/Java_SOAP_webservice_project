<%@page contentType="text/html;charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html><!-- InstanceBegin template="/Templates/template.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta charset="utf-8">
<title>Mail</title>
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
</head>
<BODY>
	<jsp:useBean id="sampleXemTyGiaProxyid" scope="session"
		class="a.XemTyGiaProxy" />
	<%
		if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
			sampleXemTyGiaProxyid.setEndpoint(request.getParameter("endpoint"));

		try {
			
				
				java.lang.String getTyGia15mtemp = sampleXemTyGiaProxyid.getTyGia();
				if (getTyGia15mtemp == null) {
	%>
	<%=getTyGia15mtemp%>
	<%
		} else {
					String tempResultreturnp16 = org.eclipse.jst.ws.util.JspUtils
							.markup(String.valueOf(getTyGia15mtemp));
	%>
	<p id="kq" style="display: none;"><%=tempResultreturnp16%></p>
	<%
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
	%>
    <div>
        <table border="1" class="table">
            <tr>
                <th>Loại ngoại tệ</th>
                <th>Giá trị</th>
                <th>Mua tiền mặt</th>
                <th>Mua Chuyển khoản</th>
                <th>Bán tiền mặt</th>
                <th>Bán Chuyển khoản</th>
                <th>Đơn vị tính</th>
            </tr>
            <tr>
                <td><img onerror="this.parentNode.removeChild(this)" src="http://www.dongabank.com.vn/images/flag/USD.gif" height="20" width="30"><b>USD</b></td>
                <td><input type="text" id="USD" onkeyup="transFromOrthers('USD')"></td>
                <td id="USD_mtm"></td>
                <td id="USD_mck"></td>
                <td id="USD_btm"></td>
                <td id="USD_bck"></td>
                <td rowspan="11"><input type="text" id="VND" onkeyup="transFromVND('')"><b>VND</b><img onerror="this.parentNode.removeChild(this)" src="http://flags.fmcdn.net/data/flags/w580/vn.png" height="20" width="30"></td>
            </tr>
            <tr>
                <td><img onerror="this.parentNode.removeChild(this)" src="http://www.dongabank.com.vn/images/flag/AUD.gif" height="20" width="30"><b>AUD</b></td>
                <td><input type="text" id="AUD" onkeyup="transFromOrthers('AUD')"></td>
                <td id="AUD_mtm"></td>
                <td id="AUD_mck"></td>
                <td id="AUD_btm"></td>
                <td id="AUD_bck"></td>
            </tr>
            <tr>
                <td><img onerror="this.parentNode.removeChild(this)" src="http://www.dongabank.com.vn/images/flag/CAD.gif" height="20" width="30"><b>CAD</b></td>
                <td><input type="text" id="CAD" onkeyup="transFromOrthers('CAD')"></td>
                <td id="CAD_mtm"></td>
                <td id="CAD_mck"></td>
                <td id="CAD_btm"></td>
                <td id="CAD_bck"></td>
            </tr>
            <tr>
                <td><img onerror="this.parentNode.removeChild(this)" src="http://www.dongabank.com.vn/images/flag/CHF.gif" height="20" width="30"><b>CHF</b></td>
                <td><input type="text" id="CHF" onkeyup="transFromOrthers('CHF')"></td>
                <td id="CHF_mtm"></td>
                <td id="CHF_mck"></td>
                <td id="CHF_btm"></td>
                <td id="CHF_bck"></td>
            </tr>
            <tr>
                <td><img onerror="this.parentNode.removeChild(this)" src="http://www.dongabank.com.vn/images/flag/EUR.gif" height="20" width="30"><b>EUR</b></td>
                <td><input type="text" id="EUR" onkeyup="transFromOrthers('EUR')"></td>
                <td id="EUR_mtm"></td>
                <td id="EUR_mck"></td>
                <td id="EUR_btm"></td>
                <td id="EUR_bck"></td>
            </tr>
            <tr>
                <td><img onerror="this.parentNode.removeChild(this)" src="http://www.dongabank.com.vn/images/flag/GBP.gif" height="20" width="30"><b>GBP</b></td>
                <td><input type="text" id="GBP" onkeyup="transFromOrthers('GBP')"></td>
                <td id="GBP_mtm"></td>
                <td id="GBP_mck"></td>
                <td id="GBP_btm"></td>
                <td id="GBP_bck"></td>
            </tr>
            <tr>
                <td><img onerror="this.parentNode.removeChild(this)" src="http://www.dongabank.com.vn/images/flag/HKD.gif" height="20" width="30"><b>HKD</b></td>
                <td><input type="text" id="HKD" onkeyup="transFromOrthers('HKD')"></td>
                <td id="HKD_mtm"></td>
                <td id="HKD_mck"></td>
                <td id="HKD_btm"></td>
                <td id="HKD_bck"></td>
            </tr>
            <tr>
                <td><img onerror="this.parentNode.removeChild(this)" src="http://www.dongabank.com.vn/images/flag/JPY.gif" height="20" width="30"><b>JPY</b></td>
                <td><input type="text" id="JPY" onkeyup="transFromOrthers('JPY')"></td>
                <td id="JPY_mtm"></td>
                <td id="JPY_mck"></td>
                <td id="JPY_btm"></td>
                <td id="JPY_bck"></td>
            </tr>
            <tr>
                <td><img onerror="this.parentNode.removeChild(this)" src="http://www.dongabank.com.vn/images/flag/NZD.gif" height="20" width="30"><b>NZD</b></td>
                <td><input type="text" id="NZD" onkeyup="transFromOrthers('NZD')"></td>
                <td id="NZD_mtm"></td>
                <td id="NZD_mck"></td>
                <td id="NZD_btm"></td>
                <td id="NZD_bck"></td>
            </tr>
            <tr>
                <td><img onerror="this.parentNode.removeChild(this)" src="http://www.dongabank.com.vn/images/flag/SGD.gif" height="20" width="30"><b>SGD</b></td>
                <td><input type="text" id="SGD" onkeyup="transFromOrthers('SGD')"></td>
                <td id="SGD_mtm"></td>
                <td id="SGD_mck"></td>
                <td id="SGD_btm"></td>
                <td id="SGD_bck"></td>
            </tr>
            <tr>
                <td><img onerror="this.parentNode.removeChild(this)" src="http://www.dongabank.com.vn/images/flag/THB.gif" height="20" width="30"><b>THB</b></td>
                <td><input type="text" id="THB" onkeyup="transFromOrthers('THB')"></td>
                <td id="THB_mtm"></td>
                <td id="THB_mck"></td>
                <td id="THB_btm"></td>
                <td id="THB_bck"></td>
            </tr>
            
        </table>
    </div>
    <script type="text/javascript" src="js/doInTyGia.js"></script>
    <script src="../sampleAProxy/js/vendor/jquery.js"></script> 
<script src="../sampleAProxy/js/foundation.min.js"></script> 
<script>
$(document).foundation();
</script> 
<script type="text/javascript" src="../sampleAProxy/js/all.js"></script> 
<script type="text/javascript" src="../sampleAProxy/slick/slick.js"></script> 
<script type="text/javascript" src="../sampleAProxy/js/scripts.js"></script> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="../sampleAProxy/js/bootstrap.min.js"></script>
</BODY>
</HTML>