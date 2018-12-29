# Java SOAP webservice project
___
## Thành phần
- `Java_Web_service` là project được tạo từ Eclipse
- `QuanLySinhVien.SQL` chạy tạo dữ liệu
- `city.list.json` tên thành phố cùng các id để làm trong api thời tiết

## Yêu cầu
- Chương trình **java** viết trên IDE **eclise**, loại **Dynamic Web Project**.
- Dữ liệu truy xuất từ **SQLServer**.
- Thư mục **Tomcat server 8.5** và cấu hình trên Eclipse, source: [Tomcat 8.5](https://tomcat.apache.org/download-80.cgi)
- Môi trường **Axis2**, source: [Axis2](https://axis.apache.org/axis2/java/core/download.html)
- Browser đề nghị Chrome

## Cài đặt
- Khởi chạy file `QuanLySinhVien.SQL` trên **SQLServer** nhằm khởi tạo các quan hệ và dữ liệu
- Cấu hình môi trường server trên Eclipse, và thêm Axis2. Cài đặt Browse là Chrome
- Import Project vào eclipse và thay đổi QUAN TRỌNG trên `Java_Web_service\src\a\A.java` và `LuuDiem.java`:
  - Mọi đối tượng Connect : `jdbc:sqlserver://localhost:1433;databaseName=QuanLySinhVien;user=sa;password=sa`
  - Trong đó `1433` là **port** của SQLServer có lẽ bạn cần thay đổi 
  - *databaseName* nên giữ nguyên vì đã khởi tạo trên SQLServer
  - user là `sa` hoặc quản trị khác 
  - password là mật khẩu tài khoản khai báo ở trên
- Cấu hình thư viện / **configure build path** thêm file thư viện cần thiết tại `Java_Web_service\WebContent\WEB-INF\lib` nếu cần thiết:
  - `sqljdbc4.jar`
  - `mailapi.jar`
  - `java-google-speech-api-V2.0.jar`
  - `java-flac-encoder-0.3.7.jar`
- Các thư viện trên cần được thêm vào trong thư mục của **Tomcat Server** theo đường dẫn `D:\Tomcat server\apache-tomcat-8.5.34\lib`

## Triển khai chương trình
- Chuột phải vào từng file java ở `src\a` **> New > Web Service**. Chọn các trường hợp lý (Server runtime, Webservice runtime, ở phần Client sẽ kéo đến **Test client** rồi Finish.
- Một project mới sẽ tự tạo ra có tên `Java_Web_serviceClient` đồng thời browser mở ra để test dữ liệu.
- Ta có thể đưa giao giện Web vào từ WebContent vào đường dẫn `Java_Web_serviceClient\WebContent`
- Thử nghiệm kết quả tại `http://localhost:8080/Java_Web_serviceClient/sampleAProxy/Result.jsp`
___
# Authors
- Pham Xuan Anh
- Tran Thai Bao
- Tran Quoc Quy
- Nguyen Van Ty
