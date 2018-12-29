<%@page contentType="text/html;charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<HTML>
<HEAD>
<meta charset="utf-8">
<title>Thời tiết</title>
<link rel = "icon" type = "image/png" href = "../sampleAProxy/images/iconlogoiuh.ico">
    <!-- For apple devices -->
    <link rel = "apple-touch-icon" type = "image/png" href = "../sampleAProxy/images/iconlogoiuh.ico"/>
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
<BODY style="background-color: #FCFCFC">

<jsp:useBean id="sampleXemThoiTietProxyid" scope="session"
		class="a.XemThoiTietProxy" />
	<%
		if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
			sampleXemThoiTietProxyid.setEndpoint(request.getParameter("endpoint"));
		try {
			
					String location_1id = request.getParameter("location16");
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


<nav class="navbar navbar-default" style="margin-bottom:0px">
    <div class="container-fluid"> 
    <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header large-4 medium-4 small-12 columns" >
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false" style="margin-top:30px; margin-right:0px"><span class="sr-only">Menu</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            <div id="logo"><a href="../sampleAProxy/trangchu.jsp"><img src="../sampleAProxy/images/logo.png" alt="Conmpany Name" height="200px" width="200px" style="margin-top:-20px;margin-left: 25%"></a>
            </div>
        </div>
         
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse  large-8 medium-8 small-12 columns navbar-right menumau" id="bs-example-navbar-collapse-1" style="float:right">
            <ul class="nav navbar-nav" style="margin-top:40px">
            <li class="active"><a href="../sampleAProxy/trangchu.jsp" style="font: arial">Trang chủ<span class="sr-only">(current)</span></a></li>
            <li><a href="../sampleAProxy/nhom.jsp">Nhóm</a></li>
            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Ứng dụng<span class="caret"></span></a>
            <ul class="dropdown-menu">
            <li><a href="../sampleAProxy/trangchu.jsp#thoitiet">Thời tiết</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="../sampleAProxy/trangchu.jsp#tygia">Tỷ giá</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="../sampleAProxy/trangchu.jsp#ttvl">Thông tin việc làm</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="../sampleSendMailProxy/Input.jsp">Gửi Mail</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="../sampleTranslateEngineProxy/Hi.jsp">Từ điển</a></li>
            </ul>
            </li>
            <li>
 <script>           
function ktRong()
{
    var x = document.forms["myForm"]["info49"].value;
		if(x.length==0)
		{
			alert("Vui lòng nhập thông tin cần tìm!!!");
			return false;
		}
			
		return true;
		
}
</script>
             <form class="navbar-form navbar-left" id="register-form" METHOD="POST" ACTION="../sampleAProxy/Result.jsp" onSubmit="return ktRong()" name="myForm" >
             
             
			<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup("46")%>">
        <div class="form-group">
        	
			
			
        
        	<input type="text" class="form-control" placeholder="Nhập MSSV/Họ tên/ email cần tìm" NAME="info49">
        </div>
       	
        <button type="submit" class="btn btn-default" style="margin-top:-15px; height:38px" id="submit-button">
        	<div class="glyphicon glyphicon-search"></div>
        </button>
        
      </form>
            </li>
            <li>
            <button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal" style="margin-top:8px; height:38px	"> Đăng nhập </button>
            </li>
        </ul>
       
        </div>
        <!-- /.navbar-collapse --> 
</div>
        <!-- /.container-fluid --> 
        </nav>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
       
        
        <div class="modal-content">
        <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true" >&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Tài Khoản</h4>
        </div>
        <div id="mainDN">
        <div class="col-md-12">
        <div class="group-tabs"> 
        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Đăng Nhập</a></li>
        <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Đăng Ký</a></li>
        </ul>
        <style>
        .DN,.DK{float:left}
        </style>
        <!-- Tab panes -->
        <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="home">
        <div class="col-md-12">
<script>           
function ktFormDN()
{
    var x = document.forms["myForm02"]["acc16"].value;
    var y = document.forms["myForm02"]["pass18"].value;
		if(x.length==0 )
		{
			alert("Vui lòng nhập tên đăng nhập!!!");
			return false;
		}else
			if(y.length==0 )
			{
				alert("Vui lòng nhập mật khẩu!!!");
				return false;
			}
			
		return true;
		
}
</script>        
        
         <FORM METHOD="POST" ACTION="../sampleAProxy/Result.jsp" onSubmit="return ktFormDN()" name="myForm02" >
			<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup("13")%>">	       
	        <div class="DN">Tài Khoản:</div>
	        <input type="text" NAME="acc16" SIZE=20>
	        </div>
	        <div class="col-md-12">
	        <div class="DN">Mật khẩu:</div>
	        <input type="password" NAME="pass18" SIZE=20>
	        </div>
	        <div class="col-md-12">
	        <button TYPE="SUBMIT" class="btn btn-primary col-md-12" style="margin-bottom:10px">Đăng nhập</button>
	        <p style="display: none;" id="kq"></p>
	        </div>
        </FORM>
        
        
        </div>
        <div role="tabpanel" class="tab-pane" id="profile">
        <div class="col-md-12">
        
<script>           
function ktFormDK()
{
    var x = document.forms["myForm01"]["acc23"].value;
    var y = document.forms["myForm01"]["pass25"].value;
    var z = document.forms["myForm01"]["email27"].value;
    var a = document.forms["myForm01"]["mssv29"].value;
    var b = document.forms["myForm01"]["phai33"].value;
    var c = document.forms["myForm01"]["lop35"].value;
    var d = document.forms["myForm01"]["namNhapHoc37"].value;
    var e = document.forms["myForm01"]["que41"].value;
		if(x.length==0 || y.length==0 || z.length==0 || a.length==0 || b.length==0 || c.length==0 || d.length==0 || e.length==0 )
		{
			alert("Vui lòng nhập đầy đủ thông tin!!!");
			return false;
		}
			
		return true;
		
}
</script>       
		<FORM METHOD="POST" ACTION="../sampleAProxy/Result.jsp" onSubmit="return ktFormDK()" name="myForm01" >
		<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup("20")%>">       
		        <div class="col-md-12">
		        <div class="DK">Tên tài khoản:</div>
		        	<input type="text" NAME="acc23">
		        </div>		        
		        <div class="col-md-12">
		        <div class="DK">Mật khẩu:</div>
		        	<input type="password" NAME="pass25">
		        </div>
		        <div class="col-md-12">
		       	 <div class="DK">Email:</div>
		        <input type="email" NAME="email27">
		        </div>
		        <div class="col-md-12">
		       	 <div class="DK">Mã sinh viên:</div>
		        <input type="text" NAME="mssv29">
		        </div>
		        <div class="col-md-12">
		        	<div class="DK">Họ tên:</div>
		        <input type="text" NAME="hoTen31">
		        </div>
		        <div class="col-md-12">
		        	<div class="DK">Phái:</div>
		        <input type="text" NAME="phai33">
		        </div>
		        <div class="col-md-12">
		        	<div class="DK">Lớp:</div>
		        	<input type="text" NAME="lop35">
		        </div>
		        <div class="col-md-12">
		        	<div class="DK">Năm nhập học:</div>
		        	<input type="text" NAME="namNhapHoc37">
		        </div>
		        <div class="col-md-12">
		        	<div class="DK">Năm sinh:</div>
		        	<input type="text" NAME="namSinh39">
		        </div>
		        <div class="col-md-12">
		        	<div class="DK">Quê:</div>
		        	<input type="text" NAME="que41">
		        </div>
		        <div class="col-md-12">
		        <button type="submit" class="btn btn-primary col-md-12" style="margin-bottom:10px">Đăng Ký</button>
		        </div>
	        </FORM>
        </div>
        </div>
        </div>
        </div>
        </div>
        </div>
        <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Thoát</button>
        </div>
        </div>
        </div>
    </div>

<!-- InstanceBeginEditable name="EditRegion1" -->


	
	
	<main class="container" style="background-color: #FFFFFF; box-shadow: 2px 2px 2px 2px #C7C7C7; margin-bottom:20px; margin-top: 10px" >
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
	
	<FORM METHOD="POST" ACTION="../sampleXemThoiTietProxy/Result.jsp">
         <div class="col-md-offset-1">   
		<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup("13")%>">
		
		<INPUT  TYPE="HIDDEN" NAME="location16" value="Vinh" id="inputLocation">
		<p class="col-md-2" style="padding-top: 10px; font-size: 24px">Chọn địa điểm: </p>
		<select id="getterLocation" onchange="setLocation()" class="col-md-3">
			   <option>Thanh pho Ho Chi Minh</option>
<option>Tỉnh Nghệ An</option>
<option>Tỉnh Phú Thọ</option>
<option>Viet Tri</option>
<option>Tỉnh Quảng Ninh</option>
<option>Tỉnh Phú Yên</option>
<option>Uong Bi</option>
<option>Tỉnh Vĩnh Long</option>
<option>Vinh</option>
<option>Nha Trang</option>
<option>Hoi An</option>
<option>Socialist Republic of Vietnam</option>
<option>Ấp Vạn Tự Tây</option>
<option>Tỉnh Tuyên Quang</option>
<option>Thành phố Hồ Chí Minh</option>
<option>Tỉnh Hải Dương</option>
<option>Thành Phố Hải Phòng</option>
<option>Tỉnh Quảng Ngãi</option>
<option>Tỉnh Ðà Nẵng</option>
<option>Tỉnh Ðồng Nai</option>
<option>Lagi</option>
<option>Ngô Châu</option>
<option>Phu Hưu</option>
<option>Vinh Long</option>
<option>Tuy Hoa</option>
<option>Tuyen Quang</option>
<option>Thu Dau Mot</option>
<option>Tỉnh Bình Dương</option>
<option>Tỉnh Thái Nguyên</option>
<option>Thai Nguyen</option>
<option>Tỉnh Thái Bình</option>
<option>Thai Binh</option>
<option>Tỉnh Tây Ninh</option>
<option>Tay Ninh</option>
<option>Tỉnh Long An</option>
<option>Tan An</option>
<option>Tỉnh Quảng Nam</option>
<option>Tam Ky</option>
<option>Tỉnh Hà Tây</option>
<option>Son Tay</option>
<option>Tỉnh Sơn La</option>
<option>Son La</option>
<option>Song Cau</option>
<option>Tỉnh Sóc Trăng</option>
<option>Soc Trang</option>
<option>Tỉnh Lào Cai</option>
<option>Sa Pa</option>
<option>Tỉnh Ðồng Thá</option>p
<option>Sa Dec</option>
<option>Tỉnh Hà Nam</option>
<option>Phu Ly</option>
<option>Phu Khuong</option>
<option>Tỉnh Ninh Thuận</option>
<option>Phan Rang-Thap Cham</option>
<option>Tỉnh Khánh Hòa</option>
<option>Lao Cai</option>
<option>Tỉnh Hưng Yên</option>
<option>Hung Yen</option>
<option>Ha Long</option>
<option>Ha Tien</option>
<option>Thủ Ðô Hà Nội</option>
<option>Tỉnh Hà Giang</option>
<option>Ha Giang</option>
<option>Ha Dong</option>
<option>Dong Xoai</option>
<option>Dong Ha</option>
<option>Huyện Ðiện Biên</option>
<option>Cu Chi</option>
<option>Chau Doc</option>
<option>Cao Lanh</option>
<option>Can Gio</option>
<option>Can Duoc</option>
<option>Cam Ranh</option>
<option>Cam Pha Mines</option>
<option>Bim Son</option>
<option>Tỉnh Bắc Ninh</option>
<option>Bac Ninh</option>
<option>Tỉnh Bạc Liêu</option>
<option>Thanh pho Bac Lieu</option>
<option>Tỉnh Bắc Giang</option>
<option>Bac Giang</option>
<option>Tỉnh Bắc Kạn</option>
<option>Bac Kan</option>
<option>Yen Vinh</option>
<option>Xóm Pho</option>
<option>Hai Duong</option>
<option>Turan</option>
<option>Bien Hoa</option>
<option>Tỉnh Cần Thơ</option>
<option>Can Tho</option>
<option>Tỉnh Bà Rịa-Vũng Tàu</option>
<option>Vung Tau</option>
<option>Thôn Ðiền Hạ</option>
<option>Quang Ngai</option>
<option>Tỉnh Ninh Bình</option>
<option>Ninh Binh</option>
<option>Tỉnh Ðắc Lắk</option>
<option>Buon Ma Thuot</option>
<option>Tỉnh Kiến Giang</option>
<option>Rach Gia</option>
<option>Da Lat</option>
<option>Quy Nhon</option>
<option>Thanh Hoa</option>
<option>Hoa Binh</option>
<option>Yen Bai</option>
<option>My Tho</option>
<option>Tra Vinh</option>
<option>Ca Mau</option>
<option>Nam Dinh</option>
<option>Ben Tre</option>
<option>Lang Son</option>
<option>Cao Bang</option>
<option>Hue</option>
<option>Long Xuyen</option>
<option>Phan Thiet</option>
<option>Kon Tum</option>
<option>Vinh Yen</option>
<option>Ha Tinh</option>
<option>Dong Hoi</option>
<option>Hai Ha</option>
<option>Pleiku</option>
<option>Ha Noi</option>
<option>Dien Bien Phu</option>
<option>Huyen Thanh Son</option>
<option>Huyen Son Duong</option>
<option>Thi xa Phu Tho</option>
<option>Duong GJong</option>
<option>Phong Tho</option>
<option>Huyen Doan Hung</option>
<option>Con Son</option>
<option>Uyen Hung</option>
<option>Huyen Yen Lap</option>
<option>Huyen Thanh Hoa</option>
<option>Huyen Song Thao</option>
<option>Huyen Tam Thanh</option>
<option>Huyen Phong Chau</option>
<option>Huyen Ba Vi</option>
		</select>
<script type="text/javascript">
	
	function setLocation(){
		var locationGot = document.getElementById("getterLocation");
		var stringLocation = locationGot.options[locationGot.selectedIndex].innerHTML;

		document.getElementById("inputLocation").value = stringLocation;
	}
</script><INPUT TYPE="SUBMIT" VALUE="Xem thông tin" class="button round col-md-2" style="margin-left: 20px; margin-top: -10px">
</div>
	</FORM>
	<div class=" col-md-12 col-sm-12 col-xs-12 thoiTiet"
		style="min-height: 500px;">
		
		<div class=" col-md-4 col-sm-5 col-xs-12 content-TT-L col-md-offset-1 col-sm-offset-1 /* fix01*/"
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


	</main>
	<!-- InstanceEndEditable -->
<div class="footer-sec" style="font-display: arial">
    <div class="row">
		<!-- Thêm style="font-family:serif ở thẻ h4 và thẻ p"-->
        <div class="large-6 medium-6 small-12 columns">
			<div class="large-6 medium-6 small-12 columns">
			  <div class="foot-1">
				<h4 style="font-family: serif">TRƯỜNG ĐẠI HỌC CÔNG NGHIỆP TP. HCM</h4>
				  <!--Thêm bản đồ ngàu 3/11-->
				 <div class="frame-map-01">

		
		</div>
			  </div>
			</div>
			<div class="large-6 medium-6 small-12 columns">
            <div class="foot-1">
                <h4 style="font-family: serif">Kết Nối Với Chúng Tôi</h4>
                 <div class="social">
        			<div class="facebook">
                    	<a href="#" class="facebook"></a>
                    </div>
        		<div class="twitter">
                	<a href="#" class="twitter"></a>
                </div>
        		<div class="gplus">
                	<a href="#" class="gplus"></a>
                </div>
        	</div>
            </div>
        </div>
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.8576365001068!2d106.68530891474946!3d10.822204892290497!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3174deb3ef536f31%3A0x8b7bb8b7c956157b!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2hp4buHcCBUaMOgbmggcGjhu5EgSOG7kyBDaMOtIE1pbmg!5e0!3m2!1svi!2s!4v1541220864476" class="medium-12" style="margin-top:10px; height: 280px "  allowfullscreen></iframe>
		</div>
        
        <div class="large-4 medium-3 small-12 columns">
            <div class="foot-1">
                <h4 style="font-family: serif">Liên Hệ Với Chúng Tôi</h4>
               <p style="font-family: serif">Địa chỉ : Số 12 Nguyễn Văn Bảo, Phường 4,
              Quận Gò Vấp, Thành phố Hồ Chí Minh</p>
                <ul>
                    <li><p style="font-family: serif"> Email:  <a href="#" target="_blank">dhcn@iuh.edu.vn</a></p></li>
                    <li><p class="location-arrow" style="font-family: serif">Điện thoại:  <a href="#" target="_blank">0283.8940 390</a></p></li>
                	<li> <img alt="QR" src="../sampleAProxy/images/QR_Code_i_H_c_C_ng_Nghi_p_TP.HCM.png" style="width:100px; height:100px; margin: 0 ; padding:0"> </li> 
                </ul>
            </div>
        </div>
        <div class="large-2 medium-3 small-12 columns">
       	 	<div class="foot-1">
        		<h4 style="font-family: serif">Thống kê</h4>
              <p style="font-family: serif">Số Lượng Truy Cập: 177852369</p>
              <p style="font-family: serif">Hôm Nay: 1526</p>
   			  <p style="font-family: serif">Đang xem: 142</p>
        </div>
        </div>
  </div>
</div>
	
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