<%@page contentType="text/html;charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<HTML>
<HEAD>
<meta charset="utf-8">
<title>Thời tiết</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Bootstrap -->
<link href="../sampleAProxy/css/bootstrap.min.css" rel="stylesheet">
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Thời tiết</title>
<link rel="stylesheet" href="../sampleAProxy/css/foundation.css" />
<link rel="stylesheet" type="../sampleAProxy/text/css" href="../sampleAProxy/slick/slick.css" />
<link rel="stylesheet" href="../sampleAProxy/css/style.css" />
<link rel="stylesheet" href="../sampleAProxy/css/responsive.css" />
<link rel="stylesheet" href="../sampleAProxy/css/font-awesome.min.css" />
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
<script src="../sampleAProxy/js/vendor/modernizr.js"></script>
<script src="../sampleAProxy/js/jquery.validate.js"></script>
<!--thêm css, js của CV-->
<link rel="stylesheet" type="text/css" href="../sampleAProxy/tetcv/csscv/main.css" />
<link rel="stylesheet" type="text/css"
	href="../sampleAProxy/tetcv/csscv/templates-css.css" />
<link rel="stylesheet" type="text/css" href="../sampleAProxy/tetcv/csscv/font-main.css" />
<link rel="stylesheet" type="text/css"
	href="../sampleAProxy/tetcv/csscv/fa-svg-with-js.css" />
<script type="text/javascript" src="../sampleAProxy/tetcv/js/fontawesome-all.min.js"></script>
<script type="text/javascript" src="../sampleAProxy/tetcv/js/jssor.slider-27.1.0.min.js"></script>
<script type="text/javascript" src="../sampleAProxy/tetcv/js/js-01.js"></script>

<script type="text/javascript" src="../sampleAProxy/tetcv/js/fa-brands.min.js"></script>

<script type="text/javascript" src="../sampleAProxy/tetcv/js/fa-regular.min.js"></script>

<script type="text/javascript" src="../sampleAProxy/tetcv/js/fa-solid.min.js"></script>

<script type="text/javascript" src="../sampleAProxy/tetcv/js/fa-v4-shims.min.js"></script>
<script src="../sampleAProxy/tetcv/jQueryAssets/jquery-1.11.1.min.js"
	type="text/javascript"></script>
<link rel="stylesheet" href="../sampleAProxy/tetcv/csscv/mainCV.css">
<script type="text/javascript" src="js/doInWeather.js"></script>
</HEAD>
<BODY>

<jsp:useBean id="sampleXemThoiTietProxyid" scope="session"
		class="a.XemThoiTietProxy" />
	<%
		if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
			sampleXemThoiTietProxyid.setEndpoint(request.getParameter("endpoint"));
		try {
			
					String location_1id = "Thanh pho Ho Chi Minh";
					java.lang.String location_1idTemp = null;
					if (!location_1id.equals("")) {
						location_1idTemp = location_1id;
					}
					java.lang.String getThoiTiet13mtemp = sampleXemThoiTietProxyid.getThoiTiet(location_1idTemp);
					if (getThoiTiet13mtemp == null) {
	%>
	<%=getThoiTiet13mtemp%>
	<%
		} else {
						String tempResultreturnp14 = org.eclipse.jst.ws.util.JspUtils
								.markup(String.valueOf(getThoiTiet13mtemp));
	%>
	<p id="kq" style="display: none;"><%=tempResultreturnp14%></p>

	<%
		}
		} catch (Exception e) {
	%>
	Truy cập không hợp lệ	
	<%
		return;
		}
	%>

<!-- InstanceBeginEditable name="EditRegion1" -->


	
	
	
	<p id="show"></p>
	 
<style>
#ThanhPho {
	font-size: 28px;
	font-weight: bold;
	margin-top: 12px
}

#img-TT {
	float: left
}

.font-26 {
	line-height: 30px;
	font-size: 26px;
	padding: 10px
}

#weather-widget-cloudiness1, #dateSys {
	padding: 0
}
.fix01{position: fixed;}
 @media (max-width: 767px) {	.fix01{position: inherit}}
</style>

	<div class=" col-md-12 col-sm-12 col-xs-12 thoiTiet"
		style="min-height: 500px;">
		
		<div class=" col-md-4 col-sm-5 col-xs-12 content-TT-L /* fix01*/"
			style=" min-height: 500px; ">
			<p class="col-md-12" id="ThanhPho"></p>
			<div class="col-md-12">
				<img src="images/01.png" id="img-TT" />
				<p class="font-26">
					<span id="DoC"></span><sup>o</sup>C
				</p>

			</div>
			<div class="col-md-12">
				<p id="weather-widget-cloudiness1"></p>
			</div>
			<div class="col-md-12">
				<p id="dateSys" class="col-md-12"></p>
			</div>
			<table class="weather-widget__items">
				<tbody>
					<tr class="weather-widget__item">
						<td>Gió</td>
						<td id="weather-widget-wind"></td>
					</tr>
					<tr class="weather-widget__item">
						<td>Mây</td>
						<td id="weather-widget-cloudiness2"></td>
					</tr>
					<tr class="weather-widget__item">
						<td >Áp suất</td>
						<td id="info_as"></td>
					</tr>
					<tr class="weather-widget__item">
						<td >Độ ẩm</td>
						<td id="info_da"></td>
					</tr>
					<tr class="weather-widget__item">
						<td>Tọa độ</td>
						<td><a href="/weathermap?zoom=8&amp;lat=51.51&amp;lon=-0.13"
							class="weather-widget__link">[<span id="wrong-data-lat">51.51</span>,&nbsp;<span
								id="wrong-data-lon">-0.13</span>]
						</a></td>
					</tr>
				</tbody>
			</table>


		</div>
		<style>
.titleTT-D {
	background-color: #F1F1F1;
	line-height: 20px
}

#DateSysR {
	font-weight: bold;
	font-size: 20px;
	margin-top: 8px
}

.content-TT-R {
	margin-top: 15px
}

#H-TT {
	float: left;
	padding-top: 12px
}

.doC, .TocGio, .TiLeMay {
	float: left;
	margin-right: 15px;
}

.top-TT p, .bot-TT p {
	padding: 0
}

#may-R {
	font-style: italic
}

.infoTT {
	border-bottom: 1px solid #DCDCDC;
	margin-top: 10px
}

.doC {
	background-color: #A2A2A2;
	color: #FFFFFF;
	border-radius: 10px;
	width: 80px;
	text-align: center
}

  
</style>
		<div class="col-md-6 /* col-md-offset-3*/ col-sm-6 /*col-sm-offset-3*/ col-xs-12 content-TT-R ">
			<div class="col-md-12" id="info_details">
				<div class="col-md-12 titleTT-D">
					<p id="DateSysR">Thứ Ngày Tháng Năm</p>
				</div>
				<div class="col-md-12 infoTT">
					<div class="col-md-5">
						<p id="H-TT">16:00</p>
						<img src="images/01.png" alt="">
					</div>
					<div class="col-md-7 ">
						<div class="top-TT">
							<p class="doC">
								<span id="DoC-R">13</span><sup>o</sup>C
							</p>
							<p class="" id="may-R">few clouds</p>
						</div>
						<div class="bot-TT">
							<p class="TocGio">
								<span id="TocGio">6.6</span>, m/s
							</p>
							<p class="TiLeMay">
								<span id="TiLeMay">12</span>%,
							</p>
							<p class="hpa">
								<span class="hpa">1233</span> hpa
							</p>
						</div>
					</div>
				</div>



			</div>
		</div>
	</div>



	<!-- InstanceEndEditable -->
	
	<script type="text/javascript" src="js/doInWeather.js"></script>
	<script src="../sampleAProxy/js/vendor/jquery.js"></script>
	<script src="../sampleAProxy/js/foundation.min.js"></script>
	<script>
		$(document).foundation();
	</script>
	<script type="text/javascript" src="../sampleAProxy/js/all.js"></script>
	<script type="text/javascript" src="../sampleAProxy/slick/slick.js"></script>
	<script type="text/javascript" src="../sampleAProxy/js/scripts.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="../sampleAProxy/js/bootstrap.min.js"></script>
</BODY>
</HTML>