<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>Dog Detail</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>
<link rel='stylesheet' href='http://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css'/>
<script src='https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js'></script>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	background: #f3f5f9;
}

#leftNav {
	display: flex;
	position: relative;
}

#leftNav #sidebar {
	position: fixed;
	width: 200px;
	height: 100%;
	background: #4b4276;
	padding: 20px 0;
}

#leftNav #sidebar h2 {
	color: #fff;
	text-align: center;
	margin-bottom: 30px;
}

#leftNav #sidebar ul li {
	padding: 15px;
	list-style: none;
	border-bottom: 1px solid rgba(0,0,0,0.05);
	border-top: 1px solid rgba(225,225,225,0.05);
}

#leftNav #sidebar ul li a {
	color: #bdb8d7;
	display: black;
}

#leftNav #sidebar ul li a span {
	width: 25px;
}

#leftNav #sidebar ul li:hover {
	background: #594f8d;
}

#leftNav #sidebar ul li:hover a {
	color: #fff;
	text-decoration: none;
}

#leftNav .main_content {
	width: 100%;
	margin-left: 200px;
}

#leftNav .main_content .header {
	padding: 11px;
	background: #fff;
	color: #717171;
	border-bottom: 1px solid #e0e4e8;
}

#leftNav .main_content .header .border{
	font-size: 19px;
}

#leftNav .main_content .header #topButton {
	text-decoration: none;
	margin-top: 4px;
	margin-right: 20px;
	float: right;
}

#leftNav .main_content .header #topButton a{
	text-decoration: none;
}

#leftNav .main_content .info {
	margin: 50px;
	color: #717171;
}

.item{
	width: 640px;
	height: 300px;
	margin: 0 120px 50px 30px;;
	float: left;
}

th{
	background-color:#EFEFEF; 
	width: 100px; 
	text-align: center; 
}

td{
	width: 200px;
	text-align: center;
}

.img{
	float: left;
	border: 1px solid #a0a0a0;
	width: 500px;
	height: 250px;
	text-align: center;
	padding-top: 110px;
	margin-right: 50px;
	margin-top: 30px;
}

.txt{
	width: 1000px;
	padding-top: 30px;
}

</style>

</head>
<body>
<div class='wrapper' id='leftNav'>
	<div class='sidebar' id='sidebar'>
		<%@ include file="../common/nav.jsp" %>
	</div>
	<div class='main_content'>
		<div class='header'>
			<strong>&nbsp;&nbsp;ADMINSTRATOR</strong>
			<div id='topButton'>
				<a href='../logo/logoRegist'>로고관리</a>&nbsp;|&nbsp;
				<a href='../banner/bannerRegist'>배너관리</a>&nbsp;|&nbsp; 
				<a href='../../'>홈페이지 돌아가기</a>&nbsp;|&nbsp; 
				<a href='../../user/logout'>로그아웃</a>
			</div>
		</div>
		<div class='info'> <!-- info 밑으로 화면 구성하면되고 글리피콘 사용할때 id 만들어서 사용해주세요. 안그러면 네비게이션바 글리피콘도 움직여요. -->
			<div class='content'>
				<h3><span class='glyphicon glyphicon-heart'></span><strong> 유기견 관리 > 상세</strong></h3>
				<hr style='border: 1px solid #a0a0a0;'>
				
				<h4><strong>비글 오렌지 책임입양</strong></h4><br>
				
				<p>등록일: 2020-06-11</p><hr>
				
				<table class='table'>
					<tr>
						<th>품종</th>
						<td>비글</td>
						<th>이름</th>
						<td>오렌지</td>
					</tr>
					<tr>
						<th>성별</th>
						<td>수컷</td>
						<th>나이</th>
						<td>5개월</td>
					</tr>
					<tr>
						<th>체중</th>
						<td>2kg</td>
						<th>입소날짜</th>
						<td>2020-6-11</td>
					</tr>
				</table>
				
				<div style='overflow:hidden'>
					<div class='img'>
						유기견 이미지
					</div>
					<div class='txt'>오늘도 많은 아이들이 각자의 안타까운 사연을 가지고 있습니다. 입양 시 소정의 책임비가 발생되니 참고 부탁드립니다.
					이 때 발생되는 책임비는 또 다른 유기견들의 관리 비용에 사용되고 있습니다. 아이들의 평생을 결정하는 선택, 신중히 생각
					해보신 후에 연락 주세요.
					</div>
				</div>
				
				<br><hr style='border: 1px solid #a0a0a0;'>
				
				<div style='text-align:right;'>
					<button type='button' class='btn btn-primary' onClick="location.href='04.html'">수정</button>
					<button type='button' class='btn btn-default' onClick="location.href='01.html'">목록</button>
				</div>
			</div>	
		</div>
	</div>
</div>
</body>
</html>