<%@page contentType="text/html;charset=UTF-8"%>
<html><!-- InstanceBegin template="/Templates/template.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta charset="utf-8">
<title>Trang chủ Đại học Công Nghiệp TP.HCM</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="stylesheet" href="css/foundation.css" />
<link rel="stylesheet" type="text/css" href="slick/slick.css"/>
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

<body>


<nav class="navbar navbar-default" style="margin-bottom:0px">
    <div class="container-fluid"> 
    <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header large-4 medium-4 small-12 columns" >
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false" style="margin-top:30px; margin-right:0px"><span class="sr-only">Menu</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            <div id="logo"><a href="index.html"><img src="images/logo.png" alt="Conmpany Name" height="200px" width="200px" style="margin-top:-20px;margin-left: 25%"></a>
            </div>
        </div>
         
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse  large-8 medium-8 small-12 columns navbar-right menumau" id="bs-example-navbar-collapse-1" style="float:right">
            <ul class="nav navbar-nav" style="margin-top:40px">
            <li class="active"><a href="trangchu.jsp" style="font: arial">Trang chủ<span class="sr-only">(current)</span></a></li>
            <li><a href="nhom.jsp">Nhóm</a></li>
            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Sinh Viên<span class="caret"></span></a>
            <ul class="dropdown-menu">
            <li><a href="kqht.jsp">KQHT</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="tkb.jsp">Timetable</a></li>
            </ul>
            </li>
            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">APPLICATION<span class="caret"></span></a>
            <ul class="dropdown-menu">
            <li><a href="trangchu.jsp#thoitiet">Thời tiết</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="trangchu.jsp#tygia">Tỷ giá</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="trangchu.jsp#ttvl">Thông tin việc làm</a></li>
            </ul>
            </li>
            <li>
            
             <form class="navbar-form navbar-left" id="register-form" METHOD="POST" ACTION="Result.jsp" >
             
             
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
        
        
         <FORM METHOD="POST" ACTION="Result.jsp" >
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
	        </div>
        </FORM>
        
        
        </div>
        <div role="tabpanel" class="tab-pane" id="profile">
        <div class="col-md-12">
        
        
		<FORM METHOD="POST" ACTION="Result.jsp" >
		<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup("20")%>">       
		        <div class="col-md-12">
		        <div class="DK">Tên tài khoản:</div>
		        	<input type="text" NAME="acc23">
		        </div>		        
		        <div class="col-md-12">
		        <div class="DK">Mật khẩu:</div>
		        	<input type="text" NAME="pass25">
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
<main style="min-height: 300px" class="container">
	<div class="col-md-offset-3">
		<%
		switch (46){
		case 46:
		
		%>
		<FORM METHOD="POST" ACTION="Result.jsp" TARGET="result">
		<INPUT TYPE="HIDDEN" NAME="method" VALUE="<%=org.eclipse.jst.ws.util.JspUtils.markup("46")%>">
		<TABLE>
		<TR>
		<TD COLSPAN="1" ALIGN="LEFT">info:</TD>
		<TD ALIGN="left"><INPUT TYPE="TEXT" NAME="info49" SIZE=20></TD>
		</TR>
		</TABLE>
		<BR>
		<INPUT TYPE="SUBMIT" VALUE="Invoke">
		<INPUT TYPE="RESET" VALUE="Clear">
		</FORM>
		<%
		break;
		}
		%>
	</div>
</main>

<div class="footer-sec">
    <div class="row">
        <div class="large-3 medium-3 small-12 columns">
          <div class="foot-1">
            <h4>TRƯỜNG ĐẠI HỌC CÔNG NGHIỆP TP. HCM</h4>
             
              <p>IUH</p>
              <a href="index.html"><img src="images/logoIUH.jpg"></a>
          </div>
        </div>
        <div class="large-3 medium-3 small-12 columns">
            <div class="foot-1">
                <h4>Kết Nối Với Chúng Tôi</h4>
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
        <div class="large-4 medium-3 small-12 columns">
            <div class="foot-1">
                <h4>Liên Hệ Với Chúng Tôi</h4>
               <p>Địa chỉ : Số 12 Nguyễn Văn Bảo, Phường 4,
              Quận Gò Vấp, Thành phố Hồ Chí Minh</p>
                <ul>
                    <li><p> Email:  <a href="#" target="_blank">dhcn@iuh.edu.vn</a></p></li>
                    <li><p>Điện thoại:  <a href="#" target="_blank">0283.8940 390</a></p></li>
                </ul>
            </div>
        </div>
        <div class="large-2 medium-3 small-12 columns">
       	 	<div class="foot-1">
        		<h4>Thong ke</h4>
              <p class="glyphicon glyphicon-hand-right">Số Lượng Truy Cập: 177852369</p>
              <p class="glyphicon glyphicon-globe">Hôm Nay: 1526</p>
   			  <p class="glyphicon glyphicon-user">Đang xem: 142</p>
        </div>
        </div>
  </div>
</div>
       
       
       
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
</html>