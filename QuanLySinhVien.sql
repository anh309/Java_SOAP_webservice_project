create database QuanLySinhVien
ON PRIMARY(
	NAME=QuanLySinhVien,
	FILENAME='D:\DB\QuanLySinhVien.mdf',
	SIZE=10MB,
	MAXSIZE=unlimited,
	FILEGROWTH=20%
)
LOG ON(
	NAME=QuanLySinhVienLog,
	FILENAME='D:\DB\QuanLySinhVien.ldf',
	SIZE=5MB,
	MAXSIZE=unlimited,
	FILEGROWTH=1MB
)

use QuanLySinhVien

create table MonHoc(
	MMH int PRIMARY KEY,
	TenMH nvarchar(100)  not null,
	GiaoVien nvarchar(100) not null,
	Thu nvarchar(10) not null,
	Tiet nvarchar(5) not null,
	PhongHoc nvarchar(10) not null
)

create table ThongTinSV(
	MSSV int PRIMARY KEY not null,
	HoTen nvarchar(100)  not null,
	Phai nvarchar(3) not null,
	Lop nvarchar(30)  not null,
	NamNhapHoc int not null,
	NamSinh date  not null,
	Que nvarchar(100)  not null,
)

create table TaiKhoan(
	Acc nvarchar(30) PRIMARY KEY,
	Pass nvarchar(30) not null,
	Email nvarchar(50)  not null,
	MSSV int ,
	constraint FK_ThongTinSV_TaiKhoan FOREIGN KEY (MSSV) REFERENCES ThongTinSV(MSSV)
)
create table Diem
(
	MSSV int  not null, 
	MMH int  not null,
	DiemTK float ,
	DiemGK float ,
	DiemCK float ,
	DiemTH float ,
	DiemTB float ,
	CONSTRAINT Ma PRIMARY KEY (MMH, MSSV),
	constraint FK_MonHoc_Diem FOREIGN KEY (MMH) REFERENCES MonHoc(MMH),
	constraint FK_ThongTinSV_Diem FOREIGN KEY (MSSV) REFERENCES ThongTinSV(MSSV),
)
create table gameFlap(
	ten nvarchar(30),
	score int
)


update Diem set DiemTB = DiemTK*0.2+DiemGK*0.3+DiemCK*0.5
insert into gameFlap values (N'anh',3)
insert into gameFlap values (N'binh',5)
---------
insert into MonHoc values (2000, N'Nhập môn tin học', N'Trần Văn Quân',N'Hai',N'1-3',N'V6.07')
insert into MonHoc values (2001, N'Nhập môn lập trình', N'Nguyễn Văn Ba',N'Ba',N'2-4',N'V9.05')
insert into MonHoc values (2002, N'Hệ thống máy tính', N'Nguyễn Phúc',N'Tư',N'4-5',N'V5.07')
insert into MonHoc values (00001, N'Nhập môn tin học', N'Trần Văn Quang',N'Hai',N'1-3',N'V6.07')
insert into MonHoc values (00002, N'Anh Văn 3', N'Đinh Thị Hoa',N'Hai',N'1-3',N'V7.07')
insert into MonHoc values (00003, N'Tài Chính Doanh Nghiệp', N'Lê Thị Nở',N'Hai',N'1-3',N'A3.03')
insert into MonHoc values (00005, N'Kĩ Thuật Lập Trình', N'Nguyễn Hữu Tình',N'Hai',N'3-5',N'V9.02')
insert into MonHoc values (00006, N'Hệ Cơ Sở Dữ Liệu', N'Trần Văn Quân',N'Hai',N'3-5',N'X12.05')
insert into MonHoc values (00007, N'Lập trình hướng Đối Thượng', N'Nguyễn Văn Thắng',N'Ba',N'6-9',N'V3.01')
insert into MonHoc values (00008, N'Tương Tác Người Máy', N'Đoàn Văn Thắng',N'Ba',N'1-3',N'T6.02')
insert into MonHoc values (00009, N'Nhập môn ATTT', N'Trần Văn Đạt',N'Ba',N'1-3',N'D6.01')
insert into MonHoc values (00010, N'Nhập Môn Lập Trình', N'Hồ Đắc Quán',N'Tư',N'9-11',N'D6.02')
insert into MonHoc values (00011, N'Trí Tuệ Nhân Tạo', N'Nguyễn Thị Phúc',N'Tư',N'1-2',N'V11.07')
insert into MonHoc values (00012, N'Phương Pháp Tính', N'Trần Văn Vinh',N'Năm',N'1-3',N'V9.05')
insert into MonHoc values (00013, N'Anh Văn 1', N'Đinh Thị Hoa',N'Năm',N'6-7',N'A3.01')
insert into MonHoc values (00015, N'Anh Văn 2', N'Đinh Tấn Thụy Kha',N'Năm',N'1-2',N'A2.02')
insert into MonHoc values (00016, N'Vật lí 1', N'Trần Văn Vinh',N'Sáu',N'7-8',N'V5.01')
insert into MonHoc values (00017, N'Tâm Lí Học Đại cương', N'Lê Thị Hà',N'Hai',N'2-3',N'X12.03')
insert into MonHoc values (00018, N'Vật lí 1', N'Nguyễn Thái Học',N'Hai',N'1-3',N'X11.05')
insert into MonHoc values (00019, N'Tư Tưởng Hồ Chí Minh', N'Lại Quang Ngọc',N'Ba',N'2-3',N'V6.5')
insert into MonHoc values (00020, N'Pháp Luật Đại Cương', N'Nguyễn Minh Quân',N'Tư',N'1-3',N'A1.1')
insert into MonHoc values (00021, N'Hệ Quản Trị CSDL', N'Lê Thị Thủy',N'Năm',N'1-3',N'B11.2')
insert into MonHoc values (00022, N'Lập Trình Web', N'Trần Trọng Tiến',N'Sáu',N'7-10',N'H5.1')
insert into MonHoc values (00023, N'Hệ Thống Máy Tính', N'Mai Thanh Thủy',N'Hai',N'6-9',N'D11.01')
insert into MonHoc values (00025, N'Mạng Máy Tính', N'Phạm Thanh Hùng',N'Hai',N'1-3',N'V10.02')
insert into MonHoc values (00026, N'Nhập môn tin học', N'Đặng Tuấn Anh',N'Ba',N'4-6',N'V7.07')
insert into MonHoc values (00027, N'Đường Lối Cách Mạng', N'Trương Vô Hậu',N'Tư',N'5-7',N'X3.01')
insert into MonHoc values (00028, N'Tư Tưởng', N'Nguyễn Ngọc Quang',N'Năm',N'2-5',N'A1.02')
insert into MonHoc values (00029, N'Mạng Máy Tính', N'Lưu Đức Hoa',N'Năm',N'1-3',N'D11.02')
insert into MonHoc values (00030, N'Anh Văn 1', N'Tô Đức Tài',N'Sáu',N'7-9',N'D10.03')
insert into MonHoc values (00031, N'Toán A1', N'Trần Thị Ngọc Nữ',N'Bảy',N'1-3',N'V11.05')
insert into MonHoc values (00032, N'Toán A2', N'Nguyễn Thị Hoa',N'Chủ Nhật',N'11-14',N'V7.02')
insert into MonHoc values (00033, N'Toán A3', N'Nguyễn Việt Hoa Sơn',N'Hai',N'1-3',N'V6.01')
insert into MonHoc values (00034, N'Tâm Lý Học Đại Cương', N'Lê Tuấn Lộc',N'Ba',N'4-6',N'V7.03')
insert into MonHoc values (00035, N'May 1', N'Phan Thị Tím',N'Tư',N'7-9',N'X3.04')
insert into MonHoc values (00036, N'Công Nghệ Nâng Cao', N'Nguyễn Trường Giang',N'Năm',N'3-5',N'E3.04')
insert into MonHoc values (00037, N'Cấu Trúc Dữ Liệu Và Giải Thuật', N'Tôn Long Hải',N'Sáu',N'8-11',N'D8.02')
insert into MonHoc values (00038, N'Kiến Trúc Hệ Thống', N'Lê Thị Kim Tiền',N'Bảy',N'8-11',N'D4.04')
insert into MonHoc values (00039, N'Những Vấn Đề Nghề Nghiệp', N'Nguyễn Minh Tân',N'Chủ Nhật',N'2-3',N'A3.02')
insert into MonHoc values (00040, N'Pháp Luật Đại Cương', N'Nguyễn Trọng Phi',N'Hai',N'1-5',N'D2.01')
insert into MonHoc values (00041, N'Tương Tác Người Máy', N'Ngô Văn Trọng',N'Ba',N'8-9',N'A2.02')
insert into MonHoc values (00042, N'Định Tuyến Chuyển Mạch', N'Trương Ngọc Tiên',N'Tư',N'2-4',N'V12.02')
insert into MonHoc values (00043, N'Anh Ninh Mạng', N'Nguyễn Thị Sa Lem',N'Năm',N'1-2',N'D2.07')
insert into MonHoc values (00044, N'Phân Tích Và Thiết Kế Hệ Thống', N'Hoàng Tuấn Phúc',N'Sáu',N'5-6',N'X2.01')
insert into MonHoc values (00045, N'Cấu Trúc Rời Rạc', N'Phạm Hoàng Anh',N'Bảy',N'7-9',N'V3.07')
insert into MonHoc values (00046, N'Lý Thuyết Đồ Thị', N'Lưu Diệp Phi',N'Chủ Nhật',N'10-12',N'A3.01')

---------
insert into ThongTinSV values (1000, N'Trần Bảo',N'Nam',N'DHCNTT12C',2016, '7/6/2018',N'Phú Yên')
insert into ThongTinSV values(16075511, N'Phạm Xuân Anh', N'Nam', N'DHCNTT12C', 2016, '1/1/1998', N'Đắck Lắck')
insert into ThongTinSV values(16073471, N'Trần Thái Bảo', N'Nam', N'DHCNTT12C', 2016, '7/6/1998', N'Phú Yên')
insert into ThongTinSV values(16077011, N'Nguyễn Văn Chiến', N'Nam', N'DHCNTT11B', 2015, '2/1/1997', N'Vĩnh Long')
insert into ThongTinSV values(16069751, N'Phạm Chánh', N'Nam', N'DHCNTT12C', 2016, '2/2/1998', N'Phú Yên')
insert into ThongTinSV values(16071111, N'Bùi Hải Hà', N'Nữ', N'DHCNTT12C', 2016, '21/11/1998', N'Khánh Hòa')
insert into ThongTinSV values(16023011, N'Phạm Văn Hoàng', N'Nam', N'DHCNTT12A', 2016, '10/10/1998', N'TP. Hồ Chí Minh')
insert into ThongTinSV values(16098011, N'Lê Thị Hoa', N'Nữ', N'DHKQ13A', 2017, '12/10/1999', N'Tây Nguyên')
insert into ThongTinSV values(16021011, N'Trần Thị Hồng', N'Nữ', N'DHKT13A', 2017, '1/1/1998', N'Vũng Tàu')
insert into ThongTinSV values(16009011, N'Nguyễn Oanh', N'Nữ', N'DHCNTT12C', 2016, '9/9/1998', N'Nha Trang')
insert into ThongTinSV values(16027011, N'Phạm Minh Minh', N'Nam', N'DHCNTT13C', 2017, '8/9/1999', N'Bình Chánh')
insert into ThongTinSV values(16098011, N'Lê Minh Ngọc', N'Nữ', N'DHKT12C', 2016, '10/10/1998', N'Long An')
insert into ThongTinSV values(16070011, N'Trần Phong', N'Nam', N'DHCNTT12A', 2016, '10/3/1998', N'Cần Thơ')
insert into ThongTinSV values(16075431, N'Trần Quốc Qúy', N'Nam', N'DHCNTT12C', 2016, '21/10/1998', N'Hà Tĩnh')
insert into ThongTinSV values(16070401, N'Nguyễn Thị Minh Thư', N'Nữ', N'DHCNTT12C', 2016, '10/4/1998', N'Bình Tân')
insert into ThongTinSV values(16072881, N'Nguyễn Văn Tỷ', N'Nam', N'DHCNTT12C', 2016, '20/10/1998', N'Bình Tân')
insert into ThongTinSV values(16075011, N'Nguyễn Anh Thi', N'Nam', N'DHCNTT12A', 2016, '19/12/1998', N'Cần Thơ')
insert into ThongTinSV values(16087221, N'Võ Văn Sơn', N'Nam', N'DHCNTT13F', 2017, '10/1/1999', N'Cà Mau')
insert into ThongTinSV values(16777011, N'Hà Ngọc Cao Thắng', N'Nam', N'DHCNTT12A', 2016, '5/5/1998', N'Gò Vấp')
insert into ThongTinSV values(16032421, N'Đặng Tuấn Anh', N'Nam', N'DHCNTT11C', 2015, '15/1/1997', N'Phú Yên')
insert into ThongTinSV values(16053211, N'Trương Vô Hậu', N'Nam', N'DHCNTT12A', 2016, '8/8/1998', N'Hà Nội')
insert into ThongTinSV values(16075211, N'Lưu Thi Thi', N'Nữ', N'DHCNTT10B', 2014, '11/6/1996', N'Gò Vấp')
insert into ThongTinSV values(16093111, N'Nguyễn Ngọc Quang', N'Nam', N'DHCNTT13B', 2017, '11/9/1999', N'Hải Phòng')
insert into ThongTinSV values(16086311, N'Lưu Đức Hoa', N'Nam', N'DHCNTT11C', 2015, '20/12/1997', N'Hưng Yên')
insert into ThongTinSV values(16032521, N'Tô Đức Tài', N'Nam', N'DHCNTT10D', 2014, '10/1/1996', N'Kom Tum')
insert into ThongTinSV values(16045321, N'Trần Thị Ngọc Nữ', N'Nữ', N'DHCNTT12A', 2016, '11/8/1998', N'Bình Định')
insert into ThongTinSV values(16046321, N'Nguyễn Thị Hoa', N'Nữ', N'DHCNTT13B', 2017, '01/2/1999', N'Nha Trang')
insert into ThongTinSV values(16047421, N'Nguyễn Việt Hoa Sơn', N'Nam', N'DHCNTT14B', 2018, '01/2/2000', N'Quảng Ngãi')
insert into ThongTinSV values(16053541, N'Lê Tuấn Lộc', N'Nam', N'DHCNTT11D', 2015, '21/3/1997', N'Thanh Hóa')
insert into ThongTinSV values(16074251, N'Phan Thị Tím', N'Nữ', N'DHCNTT12D', 2016, '20/11/1998', N'Lâm Đồng')
insert into ThongTinSV values(16072311, N'Nguyễn Trường Giang', N'Nam', N'DHCNTT13A', 2017, '2/12/1999', N'Kiên Giang')
insert into ThongTinSV values(16087121, N'Tôn Long Hải', N'Nam', N'DHCNTT11C', 2015, '22/8/1997', N'Phú Yên')
insert into ThongTinSV values(16042111, N'Lê Thị Kim Tiền', N'Nữ', N'DHCNTT12C', 2016, '22/4/1998', N'Phú Yên')
insert into ThongTinSV values(16056211, N'Nguyễn Minh Tân', N'Nam', N'DHCNTT14D', 2018, '2/4/2000', N'Bình Thuận')
insert into ThongTinSV values(16064311, N'Nguyễn Trọng Phi', N'Nam', N'DHCNTT11D', 2015, '11/7/1997', N'Ninh Thuận')
insert into ThongTinSV values(16086211, N'Ngô Văn Trọng', N'Nam', N'DHCNTT12D', 2016, '30/11/1998', N'Đồng Nai')
insert into ThongTinSV values(16085101, N'Trương Ngọc Tiên', N'Nam', N'DHCNTT12A', 2016, '21/6/1998', N'Tiền Giang')
insert into ThongTinSV values(16042971, N'Nguyễn Thị Sa Lem', N'Nữ', N'DHCNTT11D', 2015, '30/10/1997', N'Đà Nẵng')
insert into ThongTinSV values(16036311, N'Hoàng Tuấn Phúc', N'Nam', N'DHCNTT13C', 2017, '3/12/1999', N'Huế')
insert into ThongTinSV values(16097311, N'Phạm Hoàng Anh', N'Nam', N'DHCNTT14V', 2018, '12/1/2000', N'Quảng Ninh')
insert into ThongTinSV values(16079911, N'Lưu Diệp Phi', N'Nữ', N'DHCNTT12B', 2016, '13/6/1998', N'Lào Cai')

----------
insert into TaiKhoan values (N'tranthaibao0132', N'123', N'tranthaibao0132@gmail.com', 1000)
insert into TaiKhoan values (N'ACC001', N'ACC001', N'phamxuananh@gmail.com', 16075511)
insert into TaiKhoan values (N'ACC002', N'ACC002', N'tranthaibao@gmail.com', 16073471)
insert into TaiKhoan values (N'ACC003', N'ACC003', N'nguyenvanchien@gmail.com', 16077011)
insert into TaiKhoan values (N'ACC005', N'ACC005', N'phamchanh@gmail.com', 16069751)
insert into TaiKhoan values (N'ACC006', N'ACC006', N'buihaiha@gmail.com', 16071111)
insert into TaiKhoan values (N'ACC007', N'ACC007', N'phamvanhoang@gmail.com', 16023011)
insert into TaiKhoan values (N'ACC008', N'ACC008', N'lethihoa@gmail.com', 16098011)
insert into TaiKhoan values (N'ACC009', N'ACC009', N'tranthihong@gmail.com', 16021011)
insert into TaiKhoan values (N'ACC010', N'ACC010', N'nguyenoanh@gmail.com', 16009011)
insert into TaiKhoan values (N'ACC011', N'ACC011', N'phamminhminh@gmail.com', 16027011)
insert into TaiKhoan values (N'ACC012', N'ACC012', N'leminhngoc@gmail.com', 16098011)
insert into TaiKhoan values (N'ACC013', N'ACC013', N'tranphong@gmail.com', 16070011)
insert into TaiKhoan values (N'ACC015', N'ACC015', N'tranquocquy@gmail.com', 16075431)
insert into TaiKhoan values (N'ACC016', N'ACC016', N'nguyenthiminhthu@gmail.com', 16070401)
insert into TaiKhoan values (N'ACC017', N'ACC017', N'nguyenvanty@gmail.com', 16072881)
insert into TaiKhoan values (N'ACC018', N'ACC018', N'nguyenanhthi@gmail.com', 16075011)
insert into TaiKhoan values (N'ACC019', N'ACC019', N'vovanson@gmail.com', 16087211)
insert into TaiKhoan values (N'ACC020', N'ACC020', N'hangoccaothang@gmail.com', 16777011)
insert into TaiKhoan values (N'ACC021', N'ACC021', N'dangtuananh@gmail.com', 16032421)
insert into TaiKhoan values (N'ACC022', N'ACC022', N'truongvohau@gmail.com', 16053211)
insert into TaiKhoan values (N'ACC023', N'ACC023', N'luuthithi@gmail.com', 16075211)
insert into TaiKhoan values (N'ACC024', N'ACC024', N'nguyenngocquang@gmail.com', 16093111)
insert into TaiKhoan values (N'ACC025', N'ACC025', N'luuduchoa@gmail.com', 16086311)
insert into TaiKhoan values (N'ACC026', N'ACC026', N'toductai@gmail.com', 16032521)
insert into TaiKhoan values (N'ACC027', N'ACC027', N'tranthingocnu@gmail.com', 16045321)
insert into TaiKhoan values (N'ACC028', N'ACC028', N'nguyenthihoa@gmail.com', 16777011)
insert into TaiKhoan values (N'ACC029', N'ACC029', N'nguyenviethoason@gmail.com', 16047421)
insert into TaiKhoan values (N'ACC030', N'ACC030', N'letuanloc@gmail.com', 16053541)
insert into TaiKhoan values (N'ACC031', N'ACC031', N'phanthitim@gmail.com', 16074251)
insert into TaiKhoan values (N'ACC032', N'ACC032', N'nguyentruonggiang@gmail.com', 16072311)
insert into TaiKhoan values (N'ACC033', N'ACC033', N'tonlonghai@gmail.com', 16087121)
insert into TaiKhoan values (N'ACC034', N'ACC034', N'lethikimtien@gmail.com', 16042111)
insert into TaiKhoan values (N'ACC035', N'ACC035', N'nguyenminhtan@gmail.com', 16056211)
insert into TaiKhoan values (N'ACC036', N'ACC036', N'nguyentrongphi@gmail.com', 16064311)
insert into TaiKhoan values (N'ACC037', N'ACC037', N'ngovantrong@gmail.com', 16086211)
insert into TaiKhoan values (N'ACC038', N'ACC038', N'truongngoctien@gmail.com', 16085101)
insert into TaiKhoan values (N'ACC039', N'ACC039', N'nguyenthisalem@gmail.com', 16042971)
insert into TaiKhoan values (N'ACC040', N'ACC040', N'hoangtuanphuc@gmail.com', 16036311)
insert into TaiKhoan values (N'ACC041', N'ACC041', N'phamtuananh@gmail.com', 16097311)
insert into TaiKhoan values (N'ACC042', N'ACC042', N'luudiepphi@gmail.com', 16079911)

--------------------
insert into Diem values (1000,2000, 7,7,7,7,null)
insert into Diem values (1000,2001, 6,7,8,9,null)
insert into Diem values (1001,2000, 5,7,7,5,null)
insert into Diem values (1000,2002, 4,9,4,7,null)
insert into Diem values(16075511, 00001, 7,5,7,6,null)
insert into Diem values(16073471, 00002, 7,5.5,7,6,null)
insert into Diem values(16077011, 00003, 7,7,7,7,null)
insert into Diem values(16069751, 00005, 7,9,9,2,null)
insert into Diem values(16071111, 00006, 8,10,7,5,null)
insert into Diem values(16023011, 00007, 5,5,6,6,null)
insert into Diem values(16098011, 00008, 6,6,8,8,null)
insert into Diem values(16098011, 00009, 3,5,3,5,null)
insert into Diem values(16009011, 00010, 6,5,3,8,null)
insert into Diem values(16027011, 00011, 7,7,5,5,null)
insert into Diem values(16098011, 00012, 7,9,10,5,null)
insert into Diem values(16070011, 00013, 7,5,5,7,null)
insert into Diem values(16075431, 00015, 5,5,7,6,null)
insert into Diem values(16070401, 00016, 8,3,3,7,null)
insert into Diem values(16072881, 00017, 5,8,8,9,null)
insert into Diem values(16075011, 00018, 5,5,8,8,null)
insert into Diem values(16087211, 00019, 6,7,8,7,null)
insert into Diem values(16777011, 00020, 10,9,8,7,null)
insert into Diem values(16075511, 00021, 7,5,7,6,null)
insert into Diem values(16075511, 00022, 7,7,7,6,null)
insert into Diem values(16075511, 00023, 7,5,7,6,null)
insert into Diem values(16075511, 00025, 8,5,8,6,null)
insert into Diem values(16075431, 00001, 7,7,6,7,null)
insert into Diem values(16075431, 00023, 7,7,8,7,null)
insert into Diem values(16073471, 00002, 5,8,6,6,null)
insert into Diem values(16073471, 00023, 5,3,8,5,null)
insert into Diem values(16073471, 00001, 3,8,3,9,null)
insert into Diem values(16032421, 00026, 6,4,8,9,null)
insert into Diem values(16053211, 00027, 8,9,9,5,null)
insert into Diem values(16075211, 00028, 7,2,7,1,null)
insert into Diem values(16093111, 00029, 6,9,3,10,null)
insert into Diem values(16086311, 00030, 8,8,2,9,null)
insert into Diem values(16032521, 00031, 2,9,5,9,null)
insert into Diem values(16045321, 00032, 8,9,9,2,null)
insert into Diem values(16046321, 00033, 5,7,3,9,null)
insert into Diem values(16047421, 00034, 7,6,8,3,null)
insert into Diem values(16053541, 00035, 5,5,5,6,null)
insert into Diem values(16074251, 00036, 6,6,7,6,null)
insert into Diem values(16072311, 00037, 7,5,7,9,null)
insert into Diem values(16087121, 00038, 8,5,8,9,null)
insert into Diem values(16042111, 00039, 9,5,9,6,null)
insert into Diem values(16056211, 00040, 9,4,7,6,null)
insert into Diem values(16064311, 00041, 4,9,6,9,null)
insert into Diem values(16086211, 00042, 6,5,4,10,null)
insert into Diem values(16085101, 00043, 9,5,10,6,null)
insert into Diem values(16042971, 00044, 6,5,1,9,null)
insert into Diem values(16036311, 00045, 9,5,2,9,null)
insert into Diem values(16097311, 00046, 3,5,7,10,null)
insert into Diem values(16079911, 00047, 3,10,4,9,null)

update MonHoc set Tiet = N'4-5' where MMH = 2002

delete from ThongTinSV where mssv=1001
select * from MonHoc
select * from ThongTinSV
select * from TaiKhoan
select * from Diem

--Các lớp mà mssv 1000 đang học
select m.MMH,m.TenMH,m.GiaoVien,m.Thu,m.Tiet,m.PhongHoc 
from ThongTinSV t join Diem d on d.MSSV=t.MSSV join MonHoc m on m.MMH=d.MMH 
where t.MSSV=1000
--Lấy điểm của sinh viên 1000 môn 2000
select d.*
from ThongTinSV t join Diem d on d.MSSV=t.MSSV join MonHoc m on m.MMH=d.MMH 
where t.MSSV=1000 and m.MMH = 2000 
--Lấy thông tin
select sv.MSSV, sv.HoTen, sv.Phai, sv.Lop, sv.NamNhapHoc, sv.NamSinh, sv.Que, mh.MMH, d.DiemTK, d.DiemGK, d.DiemCK, d.DiemTH, tk.Acc, tk.Email 
from ThongTinSV sv join Diem d on sv.MSSV=d.MSSV join TaiKhoan tk on sv.MSSV=tk.MSSV join MonHoc mh on d.MMH = mh.MMH
--Tìm bằng email
select ThongTinSV.MSSV, HoTen, Phai, Lop, NamNhapHoc, NamSinh, Que , Email
from TaiKhoan join ThongTinSV on TaiKhoan.MSSV=ThongTinSV.MSSV
where Email = N'tranthaibao0132@gmail.com'
--Tìm bằng mssv
select ThongTinSV.MSSV, HoTen, Phai, Lop, NamNhapHoc, NamSinh, Que , Email
from TaiKhoan join ThongTinSV on TaiKhoan.MSSV=ThongTinSV.MSSV
where ThongtinSV.MSSV = 1000
--Tìm bằng tên
select ThongTinSV.MSSV, HoTen, Phai, Lop, NamNhapHoc, NamSinh, Que , Email
from TaiKhoan join ThongTinSV on TaiKhoan.MSSV=ThongTinSV.MSSV
where HoTen like N'Phạm xUÂN anh'

select mh.MMH, DiemTK, DiemGK, DiemCK, DiemTH, DiemTB
from ThongTinSV sv join Diem d on sv.MSSV=d.MSSV join MonHoc mh on d.MMH = mh.MMH
where sv.MSSV = 1000

