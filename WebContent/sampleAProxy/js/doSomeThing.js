var userStatus = false;

//Tách chuỗi theo | => listdata[0] là thông tin cá nhân, còn lại là môn
var data = document.getElementById('kq').innerHTML;
var listdata = data.split("|");

//Chia thông tin sinh viên theo ~
var info = listdata[0];
var listInfo = info.split("~");
if(listInfo[0]=="true"){
	userStatus = true;
}else {
	document.getElementById("tkb").style.display = "block";
	document.getElementById("tkb").innerHTML ="Đăng nhập thất bại";
}

listInfo[10] = listInfo[10].substr(0,listInfo[10].length-1);//  thừa dấu ngoặc cuối


//tạo đối tượng
var sinhVien = {
	taiKhoan   : listInfo[1],
	email	   : listInfo[2],
	mssv	   : listInfo[3],
	hoTen	   : listInfo[4],
	phai	   : listInfo[5],
	lop 	   : listInfo[6],
	namNhapHoc : listInfo[7],
	namSinh	   : listInfo[8],
	que  	   : listInfo[9],
	diemTB	   : listInfo[10]
};
var dangHoc = [];

for (var i = 1; i<listdata.length; i++){
		var mon = listdata[i].split("~");
		mon[10] = mon[10].substr(0,mon[10].length-1);
		var monHoc = new Object();
		monHoc.mmh = mon[0];
		monHoc.mmh = mon[1];
		monHoc.mmh = mon[2];
		monHoc.mmh = mon[3];
		monHoc.mmh = mon[4];
		monHoc.mmh = mon[5];
		monHoc.mmh = mon[6];
		monHoc.mmh = mon[7];
		monHoc.mmh = mon[8];
		monHoc.mmh = mon[9];
		monHoc.mmh = mon[10];
		dangHoc[i-1] = monHoc;
};
if(listInfo[0] == "true") userStatus = true;
function getInfo() {
	var p ="<tr><td>Tài khoản</td><td>:</td><td>"+sinhVien.taiKhoan+"</td></tr>"+
		"<tr><td>Email</td><td>:</td><td>"+sinhVien.email+"</td></tr>"+
		"<tr><td>Mã sinh viên</td><td>:</td><td>"+sinhVien.mssv+"</td></tr>"+
		"<tr><td>Họ tên</td><td>:</td><td>"+sinhVien.hoTen+"</td></tr>"+
		"<tr><td>Giới tính</td><td>:</td><td>"+sinhVien.phai+"</td></tr>"+
		"<tr><td>Lớp</td><td>:</td><td>"+sinhVien.lop+"</td></tr>"+
		"<tr><td>Năm nhập học</td><td>:</td><td>"+sinhVien.namNhapHoc+"</td></tr>"+
		"<tr><td>Năm sinh</td><td>:</td><td>"+sinhVien.namSinh+"</td></tr>"+
		"<tr><td>Quê quán</td><td>:</td><td>"+sinhVien.que+"</td></tr>";
	document.getElementById("info").innerHTML = p;	
	// var p = "";
	// for(var i =1; i <10; i++){
	//  	p = p+listInfo[i]+"<br>";
	// }
	// document.getElementById("info").innerHTML = p;
}
	function hidenInfo() {
		var infoBar = document.getElementById("info").style.display;
		if(infoBar == "" || infoBar == "block"){
			document.getElementById("info").style.display ="none";
		} else if(infoBar == "none"){
			document.getElementById("info").style.display ="block";
		}
	}
	function buoi (tiet) {
		var listTiet = tiet.split("-");
		switch (listTiet[1]) {
			case "2":
				return "s";
				break;
			case "3":
				return "s";
				break;
			case "4":
				return "s";
				break;
			case "5":
				return "s";
				break;
			case "6":
				return "t";
				break;
			case "7":
				return "t";
				break;
			case "8":
				return "t";
				break;
			case "9":
				return "t";
				break;
			case "10":
				return "t";
				break;
			case "11":
				return "c";
				break;
			case "12":
				return "c";
				break;
			case "13":
				return "c";
				break;
			case "14":
				return "c";
				break;
			case "15":
				return "c";
				break;
			default:
				return "s";
				break;
		}
	}
function setDataLich (inf,mon,tiet,gv,phong,ma) {
	document.getElementById(inf+"m").innerHTML = mon;
	document.getElementById(inf+"t").innerHTML = tiet;
	document.getElementById(inf+"g").innerHTML = gv;
	document.getElementById(inf+"p").innerHTML = phong;
	document.getElementById(inf+"ma").innerHTML = ma;
}
function getSchedule(){
	document.getElementById("tkb").style.display = "block";
	document.getElementById("diem").style.display = "none";
	for (var i = 1; i<listdata.length; i++){
		var mon = listdata[i].split("~");
		mon[10] = mon[10].substr(0,mon[10].length-1);
		var inf="";
		switch (mon[3]) {
			case "Hai":
				inf="h"+buoi(mon[4])+"_";
				setDataLich(inf, mon[1],mon[4],mon[2],mon[5],mon[0])
				break;
			case "Ba":
				inf="b"+buoi(mon[4])+"_";
				setDataLich(inf, mon[1],mon[4],mon[2],mon[5],mon[0])
				break;
			case "Tư":
				inf="t"+buoi(mon[4])+"_";
				setDataLich(inf, mon[1],mon[4],mon[2],mon[5],mon[0])
				break;
			case "Năm":
				inf="n"+buoi(mon[4])+"_";
				setDataLich(inf, mon[1],mon[4],mon[2],mon[5],mon[0])
				break;
			case "Sáu":
				inf="s"+buoi(mon[4])+"_";
				setDataLich(inf, mon[1],mon[4],mon[2],mon[5],mon[0])
				break;
			case "Bảy":
				inf="bay"+buoi(mon[4])+"_";
				setDataLich(inf, mon[1],mon[4],mon[2],mon[5],mon[0])
				break;
			case "Chủ nhật":
				inf="cn"+buoi(mon[4])+"_";
				setDataLich(inf, mon[1],mon[4],mon[2],mon[5],mon[0])
				break;
			
			default:
				return 0;
				break;
		}
	}
}
function getMark() {
	document.getElementById("diem").style.display = "inline";
	document.getElementById("tkb").style.display = "none";
	var temp = "<table border='1'>"+
	"<tr><th>Mã môn học</th><th>Môn học</th><th>Thường kì</th>"+
	"<th>Giữa kì</th><th>Cuối kì</th><th>Thực hành</th><th>Trung Bình</th></tr>";
	for (var i = 1; i<listdata.length; i++){
		var mon = listdata[i].split("~");
		var sub = 1;

		if(listdata.size >1 ){
			sub = 2;
			if(i>1){
				sub = 1;
			}
		}

		mon[10] = mon[10].substr(0,mon[10].length-sub);

		temp = temp+"<tr><td>"+mon[0]+"</td> <td>"+mon[1]+"</td>"+
			"<td>"+mon[6]+"</td> <td>"+mon[7]+"</td>"+
			"<td>"+mon[8]+"</td> <td>"+mon[9]+"</td> <td>"+mon[10]+"</td></tr> ";
	}
	document.getElementById("diem").innerHTML = temp;
}
function getTichLuy () {
	document.getElementById("diem").style.display = "inline";
	document.getElementById("tkb").style.display = "none";
	var diemTL = "a";
	var temp = "<table border='1'>"+
	"<tr><th>Mã môn học</th><th>Môn học</th><th>Trung Bình</th></tr>";
	for (var i = 1; i<listdata.length; i++){
		var mon = listdata[i].split("~");
		var sub = 1;

		if(listdata.size >1 ){
			sub = 2;
			if(i>1){
				sub = 1;
			}
		}

		mon[10] = mon[10].substr(0,mon[10].length-sub);

		temp = temp+"<tr><td>"+mon[0]+"</td> <td>"+mon[1]+"</td><td>"+mon[10]+"</td></tr> ";
	}

		temp = temp + '<tr><td colspan="2" style="text-align: center;">Tích lũy</td><td>'+sinhVien.diemTB+"</td></tr></table>"
	document.getElementById("diem").innerHTML = temp;
}
