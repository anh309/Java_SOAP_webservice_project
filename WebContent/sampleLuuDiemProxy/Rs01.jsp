<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
<link href="css/style.css" rel="stylesheet"/>

</HEAD>
<BODY>
	<H1>Result 01</H1>

	<jsp:useBean id="sampleLuuDiemProxyid" scope="session"
		class="a.LuuDiemProxy" />
	<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleLuuDiemProxyid.setEndpoint(request.getParameter("endpoint"));
%>

	<% 
        java.lang.String loadScore20mtemp = sampleLuuDiemProxyid.loadScore();
        String tempResultreturnp21 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(loadScore20mtemp));
        %>
<p style="font-size: 36px" id="rs">Điểm cao nhất: <span id="top1st">	<%= tempResultreturnp21 %></span> </p>

	<div>
		<form>
			<input type="text" name="" placeholder="Nhập tên của bạn"> <input
				type="text" name="score18" value="0" id="sc"> <br> <input
				type="submit" id="restart_btn" value="Chơi lại">
		</form>
	</div>
	<div id="container">
		<div id="bird"></div>
		<div id="pole_1" class="pole"></div>
		<div id="pole_2" class="pole"></div>
		<button id="play_btn">Click vào để chơi</button>
		<span id="score">0</span>


	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/script.js"></script>
</BODY>
</HTML>