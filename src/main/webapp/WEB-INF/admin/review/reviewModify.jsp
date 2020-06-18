<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>ADMIN PAGE</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>
<link rel='stylesheet' href='http://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css'/>
<script src='https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js'></script>
<script src="//cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>
<script src='http://code.jquery.com/jquery-3.4.1.min.js'></script>
<script src="${path}/ckeditor/ckeditor.js"></script>
<script>function modify(){
	let count = 0;
	
	$('#modify').click(() => { 
		count++;	
		if(count == 1)
			$('.button').prepend('<font color="red">후기 수정이 완료되었습니다.</font>')
	});
}

$(modify);
</script>
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
	margin: 60px;
	color: #717171;
}

#content {
	float: left;
	margin-left: 10px;
	width: 400px;
	display: inline;
}

th{
	background-color:#EFEFEF;
	text-align: center;
	width: 150px;
}

textarea{
	width: 1500px;
	height: 1000px;
	resize: none;
	padding: 20px;
}
</style>
</head>
<body>
<div class='wrapper' id='leftNav'>
	<div class='sidebar' id='sidebar'>
		<h2><b>DOG SHELTER</b></h2>
		<ul>
			<li><a href='../main.html'> <span class='glyphicon glyphicon-home'></span>메인</a></li>
			<li><a href='../user/01.html'> <span class='glyphicon glyphicon-user'></span>회원관리</a></li>
			<li><a href='../dog/01.html'> <span class='glyphicon glyphicon-heart'></span>유기견관리</a></li>
			<li><a href='../adopt/01.html'> <span class='glyphicon glyphicon-calendar'></span>입양관리</a></li>
			<li><a href='01.html'> <span class='glyphicon glyphicon-list'></span>후기관리</a></li>
			<li><a href='../report/01.html'> <span class='glyphicon glyphicon-bullhorn'></span>신고관리</a></li>
			<li><a href='../donation/01.html'> <span class='glyphicon glyphicon-piggy-bank'></span>후원금 관리</a></li>
		</ul>
	</div>
	<div class='main_content'>
		<div class='header'>
			<strong>&nbsp;&nbsp;ADMINSTRATOR</strong>
			<div id='topButton'>
				<a href='../logo/01.html'>로고관리</a>&nbsp;|&nbsp;
					<a href='../banner/01.html'>배너관리</a>&nbsp;|&nbsp; 
					<a href='../../main.html'>홈페이지 돌아가기</a>&nbsp;|&nbsp; 
					<a href='../../main.html'>로그아웃</a>
			</div>
		</div>
		<div class='info'>
			<div class='content'>
				<h3>
					<span class='glyphicon glyphicon-list'></span>
					<strong> 후기관리 > 수정</strong>
				</h3>
				<hr style='border: 1px solid #a0a0a0;'>
			
				<form>
					<table class='table'>
						<tr>
							<th>제목</th>
							<td><input type='text' style='width:500px;' value='치치!!'/></td>
						</tr>
						<tr>
							<th>이미지</th>
							<td>
								<input type='file'/>
							</td>
						</tr>
						<tr>
							<th>내용</th>
							<td>
								<textarea id="description"> 저희 센터에서 가장 작고 아담한 치와와 공주 치치가 드디어 좋은 견주를 만났어요. 자식가진 부모님 마음은 한결같죠!!
내 자식이 가지고 싶은거 하고싶은거 할 수 있게 해주는거요~~!			
사랑하는 따님의 생일선물로 치와와를 분양해가셨어요.
견주님께서도 어릴때 강아지도 키워보고 너무나도 좋아했지만 그동안 잊고 지내셨었나봐요~
따님 생일선물이기도 하지만 견주님께도 인생의 선물이 아닐까 싶네요 사랑스러운 새로운 가족이 생겼으니깐요^^
								</textarea>
								<script>
									CKEDITOR.replace("description", {
										removePlugins: 'image'
									});
									
								</script>
							</td>
						</tr>
					</table>
					
					<div class='button' style='text-align:right;'>
						<button type='button' class='btn btn-primary' id='modify'>수정</button>&nbsp;
						<button type='button' class='btn btn-default' onClick="location.href='01.html'">취소</button>
					</div>
				</form>	
			</div>	
		</div>
	</div>
</div>
</body>
</html>