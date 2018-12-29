<%@page contentType="text/html;charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<html>
<!-- InstanceBegin template="/Templates/template.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta charset="utf-8">
<title>Thông tin</title>
<link rel = "icon" type = "image/png" href = "../sampleAProxy/images/iconlogoiuh.ico">
    <!-- For apple devices -->
    <link rel = "apple-touch-icon" type = "image/png" href = "../sampleAProxy/images/iconlogoiuh.ico"/>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="stylesheet" href="css/foundation.css" />
<link rel="stylesheet" type="text/css" href="slick/slick.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/responsive.css" />
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
<script src="js/vendor/modernizr.js"></script>
<script src="js/jquery.validate.js"></script>
<script>
$(document).ready(function() {
	$('#register-form').validate({
		rules: {
				timkiem:{
					required:true
				}
		},
		message: {
			timkiem: {
					required: 'Bạn phải nhập email đúng cú pháp'}
		}	
	});
    
});
</script>
</head>

<body onload="getInfo()" style="background-color: #FCFCFC">


	<nav class="navbar navbar-default" style="margin-bottom: 0px">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header large-4 medium-4 small-12 columns">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false" style="margin-top: 30px; margin-right: 0px">
					<span class="sr-only">Menu</span><span class="icon-bar"></span><span
						class="icon-bar"></span><span class="icon-bar"></span>
				</button>
				<div id="logo">
					<a href="trangchu.jsp"><img src="images/logo.png"
						alt="Conmpany Name" height="200px" width="200px"
						style="margin-top: -20px; margin-left: 25%"></a>
				</div>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div
				class="collapse navbar-collapse  large-8 medium-8 small-12 columns navbar-right menumau"
				id="bs-example-navbar-collapse-1" style="float: right">
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
            <li><a href="../sampleLuuDiemProxy/Result.jsp">Giải trí</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="../sampleTranslateEngineProxy/Hi.jsp">Từ điển</a></li>
            </ul>
            </li>
            <li>

						<form class="navbar-form navbar-left" id="register-form"
							METHOD="POST" ACTION="Result.jsp" TARGET="result">


							<INPUT TYPE="HIDDEN" NAME="method"
								VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup("46")%>">
							<div class="form-group">




								<input type="text" class="form-control"
									placeholder="Nhập MSSV/Họ tên/ email cần tìm" NAME="info49">
							</div>

							<button type="submit" class="btn btn-default"
								style="margin-top: -15px; height: 38px" id="submit-button">
								<div class="glyphicon glyphicon-search"></div>
							</button>

						</form>
					</li>
					<li>
						<button type="button" class="btn btn-default" data-toggle="modal"
							data-target="#myModal" style="margin-top: 8px; height: 38px">
							Đăng nhập</button>
					</li>
				</ul>

			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">


			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Tài Khoản</h4>
				</div>
				<div id="mainDN">
					<div class="col-md-12">
						<div class="group-tabs">
							<!-- Nav tabs -->
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a href="#home"
									aria-controls="home" role="tab" data-toggle="tab">Đăng Nhập</a></li>
								<li role="presentation"><a href="#profile"
									aria-controls="profile" role="tab" data-toggle="tab">Đăng
										Ký</a></li>
							</ul>
							<style>
.DN, .DK {
	float: left
}
</style>
							<!-- Tab panes -->
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane active" id="home">
									<div class="col-md-12">


										<FORM METHOD="POST" ACTION="Result.jsp">
											<INPUT TYPE="HIDDEN" NAME="method"
												VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup("13")%>">
											<div class="DN">Tài Khoản:</div>
											<input type="text" NAME="acc16" SIZE=20>
									</div>
									<div class="col-md-12">
										<div class="DN">Mật khẩu:</div>
										<input type="password" NAME="pass18" SIZE=20>
									</div>
									<div class="col-md-12">
										<button TYPE="SUBMIT" class="btn btn-primary col-md-12"
											style="margin-bottom: 10px">Đăng nhập</button>
									</div>
									</FORM>


								</div>
								<div role="tabpanel" class="tab-pane" id="profile">
									<div class="col-md-12">


										<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
											<INPUT TYPE="HIDDEN" NAME="method"
												VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup("20")%>">
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
												<button type="submit" class="btn btn-primary col-md-12"
													style="margin-bottom: 10px">Đăng Ký</button>
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
	<main class="container" style="min-height: 450px; box-shadow: 2px 2px 2px 2px #C7C7C7; background-color: #FFFFFF">
	<br>
	
		<jsp:useBean id="sampleAProxyid" scope="session" class="a.AProxy" />
		<%
		
		if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
			sampleAProxyid.setEndpoint(request.getParameter("endpoint"));
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
				case 2 :
					gotMethod = true;
					java.lang.String getEndpoint2mtemp = sampleAProxyid.getEndpoint();
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
				case 5 :
					gotMethod = true;
					String endpoint_0id = request.getParameter("endpoint8");
					java.lang.String endpoint_0idTemp = null;
					if (!endpoint_0id.equals("")) {
						endpoint_0idTemp = endpoint_0id;
					}
					sampleAProxyid.setEndpoint(endpoint_0idTemp);
					break;
				case 10 :
					gotMethod = true;
					a.A getA10mtemp = sampleAProxyid.getA();
					if (getA10mtemp == null) {
	%>
		<%=getA10mtemp%>
		<%
		} else {
						if (getA10mtemp != null) {
							String tempreturnp11 = getA10mtemp.toString();
	%>
		<%=tempreturnp11%>
		<%
		}
					}
					break;
				case 13 :
					gotMethod = true;
					String acc_1id = request.getParameter("acc16");
					java.lang.String acc_1idTemp = null;
					if (!acc_1id.equals("")) {
						acc_1idTemp = acc_1id;
					}
					String pass_2id = request.getParameter("pass18");
					java.lang.String pass_2idTemp = null;
					if (!pass_2id.equals("")) {
						pass_2idTemp = pass_2id;
					}
					java.lang.String hi13mtemp = sampleAProxyid.hi(acc_1idTemp, pass_2idTemp);
					if (hi13mtemp == null) {
	%>
		<%=hi13mtemp%>
		<%
		} else {
						String tempResultreturnp14 = org.eclipse.jst.ws.util.JspUtils
								.markup(String.valueOf(hi13mtemp));
	%>
	<div class="col-md-3">
		<button onclick="getSchedule()" class="col-md-12" id="btn_lich">Xem lịch học</button>
		<button onclick="getMark()" class="col-md-12" id="btn_diem">Xem điểm</button>
		<button onclick="getTichLuy()" class="col-md-12" id="btn_diemTB">Xem điểm trung bình</button>
	</div>
	<div class="col-md-9">
		<p id="kq" style="display: none;"><%=tempResultreturnp14%></p>
<style>
#info{position:fixed; z-index:100; background-color:#C8C8C8; border-radius: 8px; top:100px; right:20px; border: 0;margin: -5px;}  
#btn-info{position:fixed; z-index:105; background-color:#C8C8C8; border-radius: 8px;padding:10px; top:100px; right:20px;margin: -5px;}
#btn-info:hover, #btn-info:focus{background-color:#5373EF }
@media (max-width:768px){#btn-info, #info{top:200px; right:7px;}}
</style>
		<table id="info"></table>
		<button type="button" class="btn btn-default" id="btn-info" onclick="hidenInfo()"><div class="glyphicon glyphicon-search"></div></button>
		
		
		<div id="tkb" style="display: none;" class="col-md-9">
			<table class="table col-md-12 col-xs-12 col-sm-12"
				style="font-family: serif">
				<thead class="bg-primary">
					<tr>
						<th colspan="2">Thứ</th>
						<th>Môn học</th>
						<th>Tiết học</th>
						<th>Giảng viên</th>
						<th>Phòng học</th>
						<th>Mã môn học</th>
					</tr>
				</thead>
				<tr>
					<td rowspan="3">Hai</td>
					<td>Sáng</td>
					<td id="hs_m"></td>
					<td id="hs_t"></td>
					<td id="hs_g"></td>
					<td id="hs_p"></td>
					<td id="hs_ma"></td>
				</tr>
				<tr>
					<td>Trưa</td>
					<td id="ht_m"></td>
					<td id="ht_t"></td>
					<td id="ht_g"></td>
					<td id="ht_p"></td>
					<td id="ht_ma"></td>
				</tr>
				<tr>
					<td>Chiều</td>
					<td id="hc_m"></td>
					<td id="hc_t"></td>
					<td id="hc_g"></td>
					<td id="hc_p"></td>
					<td id="hc_ma"></td>
				</tr>
				<tr>
					<td rowspan="3">Ba</td>
					<td>Sáng</td>
					<td id="bs_m"></td>
					<td id="bs_t"></td>
					<td id="bs_g"></td>
					<td id="bs_p"></td>
					<td id="bs_ma"></td>
				</tr>
				<tr>
					<td>Trưa</td>
					<td id="bt_m"></td>
					<td id="bt_t"></td>
					<td id="bt_g"></td>
					<td id="bt_p"></td>
					<td id="bt_ma"></td>
				</tr>
				<tr>
					<td>Chiều</td>
					<td id="bc_m"></td>
					<td id="bc_t"></td>
					<td id="bc_g"></td>
					<td id="bc_p"></td>
					<td id="bc_ma"></td>
				</tr>
				<tr>
					<td rowspan="3">Tư</td>
					<td>Sáng</td>
					<td id="ts_m"></td>
					<td id="ts_t"></td>
					<td id="ts_g"></td>
					<td id="ts_p"></td>
					<td id="ts_ma"></td>
				</tr>
				<tr>
					<td>Trưa</td>
					<td id="tt_m"></td>
					<td id="tt_t"></td>
					<td id="tt_g"></td>
					<td id="tt_p"></td>
					<td id="tt_ma"></td>
				</tr>
				<tr>
					<td>Chiều</td>
					<td id="tc_m"></td>
					<td id="tc_t"></td>
					<td id="tc_g"></td>
					<td id="tc_p"></td>
					<td id="tc_ma"></td>
				</tr>
				<tr>
					<td rowspan="3">Năm</td>
					<td>Sáng</td>
					<td id="ns_m"></td>
					<td id="ns_t"></td>
					<td id="ns_g"></td>
					<td id="ns_p"></td>
					<td id="ns_ma"></td>
				</tr>
				<tr>
					<td>Trưa</td>
					<td id="nt_m"></td>
					<td id="nt_t"></td>
					<td id="nt_g"></td>
					<td id="nt_p"></td>
					<td id="nt_ma"></td>
				</tr>
				<tr>
					<td>Chiều</td>
					<td id="nc_m"></td>
					<td id="nc_t"></td>
					<td id="nc_g"></td>
					<td id="nc_p"></td>
					<td id="nc_ma"></td>
				</tr>
				<tr>
					<td rowspan="3">Sáu</td>
					<td>Sáng</td>
					<td id="ss_m"></td>
					<td id="ss_t"></td>
					<td id="ss_g"></td>
					<td id="ss_p"></td>
					<td id="ss_ma"></td>
				</tr>
				<tr>
					<td>Trưa</td>
					<td id="st_m"></td>
					<td id="st_t"></td>
					<td id="st_g"></td>
					<td id="st_p"></td>
					<td id="st_ma"></td>
				</tr>
				<tr>
					<td>Chiều</td>
					<td id="sc_m"></td>
					<td id="sc_t"></td>
					<td id="sc_g"></td>
					<td id="sc_p"></td>
					<td id="sc_ma"></td>
				</tr>
				<tr>
					<td rowspan="3">Bảy</td>
					<td>Sáng</td>
					<td id="bays_m"></td>
					<td id="bays_t"></td>
					<td id="bays_g"></td>
					<td id="bays_p"></td>
					<td id="bays_ma"></td>
				</tr>
				<tr>
					<td>Trưa</td>
					<td id="bayt_m"></td>
					<td id="bayt_t"></td>
					<td id="bayt_g"></td>
					<td id="bayt_p"></td>
					<td id="bayt_ma"></td>
				</tr>
				<tr>
					<td>Chiều</td>
					<td id="bayc_m"></td>
					<td id="bayc_t"></td>
					<td id="bayc_g"></td>
					<td id="bayc_p"></td>
					<td id="bayc_ma"></td>
				</tr>
				<tr>
					<td rowspan="3">Chủ nhật</td>
					<td>Sáng</td>
					<td id="cns_m"></td>
					<td id="cns_t"></td>
					<td id="cns_g"></td>
					<td id="cns_p"></td>
					<td id="cns_ma"></td>
				</tr>
				<tr>
					<td>Trưa</td>
					<td id="cnt_m"></td>
					<td id="cnt_t"></td>
					<td id="cnt_g"></td>
					<td id="cnt_p"></td>
					<td id="cnt_ma"></td>
				</tr>
				<tr>
					<td>Chiều</td>
					<td id="cnc_m"></td>
					<td id="cnc_t"></td>
					<td id="cnc_g"></td>
					<td id="cnc_p"></td>
					<td id="cnc_ma"></td>
				</tr>
			</table>
		</div>


		<div id="diem" style='display: none;'></div>
		
		<%
		}
					break;
				case 20 :
					gotMethod = true;
					String acc_3id = request.getParameter("acc23");
					java.lang.String acc_3idTemp = null;
					if (!acc_3id.equals("")) {
						acc_3idTemp = acc_3id;
					}
					String pass_4id = request.getParameter("pass25");
					java.lang.String pass_4idTemp = null;
					if (!pass_4id.equals("")) {
						pass_4idTemp = pass_4id;
					}
					String email_5id = request.getParameter("email27");
					java.lang.String email_5idTemp = null;
					if (!email_5id.equals("")) {
						email_5idTemp = email_5id;
					}
					String mssv_6id = request.getParameter("mssv29");
					java.lang.String mssv_6idTemp = null;
					if (!mssv_6id.equals("")) {
						mssv_6idTemp = mssv_6id;
					}
					String hoTen_7id = request.getParameter("hoTen31");
					java.lang.String hoTen_7idTemp = null;
					if (!hoTen_7id.equals("")) {
						hoTen_7idTemp = hoTen_7id;
					}
					String phai_8id = request.getParameter("phai33");
					java.lang.String phai_8idTemp = null;
					if (!phai_8id.equals("")) {
						phai_8idTemp = phai_8id;
					}
					String lop_9id = request.getParameter("lop35");
					java.lang.String lop_9idTemp = null;
					if (!lop_9id.equals("")) {
						lop_9idTemp = lop_9id;
					}
					String namNhapHoc_10id = request.getParameter("namNhapHoc37");
					java.lang.String namNhapHoc_10idTemp = null;
					if (!namNhapHoc_10id.equals("")) {
						namNhapHoc_10idTemp = namNhapHoc_10id;
					}
					String namSinh_11id = request.getParameter("namSinh39");
					java.lang.String namSinh_11idTemp = null;
					if (!namSinh_11id.equals("")) {
						namSinh_11idTemp = namSinh_11id;
					}
					String que_12id = request.getParameter("que41");
					java.lang.String que_12idTemp = null;
					if (!que_12id.equals("")) {
						que_12idTemp = que_12id;
					}
					java.lang.String dangKy20mtemp = sampleAProxyid.dangKy(acc_3idTemp, pass_4idTemp, email_5idTemp,
							mssv_6idTemp, hoTen_7idTemp, phai_8idTemp, lop_9idTemp, namNhapHoc_10idTemp,
							namSinh_11idTemp, que_12idTemp);
					if (dangKy20mtemp == null) {
	%>
		<%=dangKy20mtemp%>
		<%
		} else {
						String tempResultreturnp21 = org.eclipse.jst.ws.util.JspUtils
								.markup(String.valueOf(dangKy20mtemp));
	%>
		<%=tempResultreturnp21%>
		<%
		}
					break;
				case 43 :
					gotMethod = true;
					java.lang.String whoami43mtemp = sampleAProxyid.whoami();
					if (whoami43mtemp == null) {
	%>
		<%=whoami43mtemp%>
		<%
		} else {
						String tempResultreturnp44 = org.eclipse.jst.ws.util.JspUtils
								.markup(String.valueOf(whoami43mtemp));
	%>
		<%=tempResultreturnp44%>
		<%
		}
					break;
				case 46 :
					gotMethod = true;
					String info_13id = request.getParameter("info49");
					java.lang.String info_13idTemp = null;
					if (!info_13id.equals("")) {
						info_13idTemp = info_13id;
					}
					java.lang.String timKiemTT46mtemp = sampleAProxyid.timKiemTT(info_13idTemp);
					if (timKiemTT46mtemp == null) {
	%>
	

		<%=timKiemTT46mtemp%>"
		
		<%
		} else {
						String tempResultreturnp47 = org.eclipse.jst.ws.util.JspUtils
								.markup(String.valueOf(timKiemTT46mtemp));
	%>
	
		<p id="search" style="display: none;margin:0 auto"><%=tempResultreturnp47%></p>
		
		<div id="searched"></div>
	
	</div>	
		<%
		}
					break;
				case 51 :
					gotMethod = true;
					float diemTBTL51mtemp = sampleAProxyid.diemTBTL();
					String tempResultreturnp52 = org.eclipse.jst.ws.util.JspUtils
							.markup(String.valueOf(diemTBTL51mtemp));
	%>
		<%=tempResultreturnp52%>
		
		<%
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
		result: N/A
		<%
		}
	%>
		
	
	<!-- hi -->
	<script type="text/javascript">
		var getSearch = document.getElementById("search").innerHTML;
		var listSearch = getSearch.split("~");
		if(listSearch[0] =="founded"){
			var p ="<h2 style='color:black; text-align:center; font-family: Cambria, 'Hoefler Text', 'Liberation Serif', Times, 'Times New Roman', 'serif''>Tìm thấy thông tin</h2><table style='margin: 0 auto'><tr><td>Email</td><td>:</td><td>"+listSearch[2]+"</td></tr>"+
			"<tr><td>Mã sinh viên</td><td>:</td><td>"+listSearch[3]+"</td></tr>"+
			"<tr><td>Họ tên</td><td>:</td><td>"+listSearch[4]+"</td></tr>"+
			"<tr><td>Giới tính</td><td>:</td><td>"+listSearch[5]+"</td></tr>"+
			"<tr><td>Lớp</td><td>:</td><td>"+listSearch[6]+"</td></tr>"+
			"<tr><td>Năm nhập học</td><td>:</td><td>"+listSearch[7]+"</td></tr>"+
			"<tr><td>Năm sinh</td><td>:</td><td>"+listSearch[8]+"</td></tr>"+
			"<tr><td>Quê quán</td><td>:</td><td>"+listSearch[9]+"</td></tr></table>";

			document.getElementById("searched").innerHTML = p;
		}else{
			document.getElementById("searched").innerHTML = "Không tìm thấy";
		}
		
		
		</script>
	<script type="text/javascript" src="js/doSomeThing.js"></script>
	
	</main>
	<div class="row container">
		<table class="table table-bordered col-md-12 col-xs-12 col-sm-12"
			style="font-family: serif">
			<thead>
				<tr>
					<th colspan="2">BUỔI SÁNG</th>
					<th colspan="2">BUỔI CHIỀU</th>
					<th colspan="2">BUỔI TỐI</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="col-md-2 col-xs-22 col-sm-2">TIẾT</td>
					<td class="col-md-2 col-xs-22 col-sm-2">GIỜ</td>
					<td class="col-md-2 col-xs-22 col-sm-2">TIẾT</td>
					<td class="col-md-2 col-xs-22 col-sm-2">GIỜ</td>
					<td class="col-md-2 col-xs-22 col-sm-2">TIẾT</td>
					<td class="col-md-2 col-xs-22 col-sm-2">GIỜ</td>
				</tr>
				<tr>
					<td>1</td>
					<td>Từ 7h00 đến 7h50</td>
					<td>6</td>
					<td>Từ 12h30 đến 13h20</td>
					<td>12</td>
					<td>Từ 18h00 đến 18h50</td>
				</tr>
				<tr>
					<td>2</td>
					<td>Từ 7h50 đến 8h40</td>
					<td>7</td>
					<td>Từ 13h20 đến 14h10</td>
					<td>13</td>
					<td>Từ 18h50 đến 19h40</td>
				</tr>
				<tr>
					<td>3</td>
					<td>Từ 8h40 đến 9h30</td>
					<td>8</td>
					<td>Từ 14h10 đến 15h00</td>
					<td colspan="2">Nghỉ giải lao 10 phút.</td>

				</tr>
				<tr>
					<td colspan="4">Nghỉ giải lao 10 phút.</td>

					<td>14</td>
					<td>Từ 19h50 đến 20h40</td>
				</tr>
				<tr>
					<td>4</td>
					<td>Từ 9h40 đến 10h30</td>
					<td>9</td>
					<td>Từ 15h10 đến 16h00</td>
					<td>15</td>
					<td>Từ 20h40 đến 21h30</td>
				</tr>
				<tr>
					<td>5</td>
					<td>Từ 10h30 đến 11h20</td>
					<td>10</td>
					<td>Từ 16h00 đến 16h50</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td>11</td>
					<td>Từ 16h50 đến 17h40</td>
					<td></td>
					<td></td>
				</tr>
			</tbody>
		</table>


	</div>
	<!-- InstanceEndEditable -->
<div class="footer-sec " style="font-display: arial">
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
       
<script>
			  (function () {
			    let appCode = '0ed1f0f932c168b03ba273f19db08b78';
			    let ws_host = 'wss://bot.fpt.ai/ws/livechat'
			    let appCodeHash = window.location.hash.substr(1);
			    let objLiveChat = {
			        appCode: '0ed1f0f932c168b03ba273f19db08b78',
			        appName: 'ChatBot'
			    };
			    if (appCodeHash.length == 32) {
			      objLiveChat.appCode = appCodeHash;
			    }

			    var baseUrl = 'https://static.fpt.ai/v3/src';
			    var r = document.createElement("script");
			    r.src = baseUrl + "/livechat.js";
			    var c = document.getElementsByTagName("body")[0];
			    c.appendChild(r);
			    r.onload = function () {
			      new FPTAI_LiveChat(objLiveChat, baseUrl, ws_host);
			    };

			  })()
		</script>

<script src="js/vendor/jquery.js"></script> 
<script src="js/foundation.min.js"></script> 
<script>
$(document).foundation();
</script> 
<script type="text/javascript" src="js/all.js"></script> 
<script type="text/javascript" src="slick/slick.js"></script> 
<script type="text/javascript" src="js/scripts.js"></script> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="js/bootstrap.min.js"></script>
</body>
<!-- InstanceEnd --></html>