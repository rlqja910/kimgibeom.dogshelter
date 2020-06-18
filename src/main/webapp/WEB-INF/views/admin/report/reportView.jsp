<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>ADMIN PAGE</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<script src='http://code.jquery.com/jquery-3.4.1.min.js'></script>
<script>
function del() {
	$('.delete').click(() => {
		swal({
			title: '',
			text: '댓글을 삭제하시겠습니까?',
			type: 'warning',
			showCancelButton: true,
			confirmButtonText: '확인',
			cancelButtonText: '취소',
			closeOnConfirm: false
		})
	});
};

$(del);
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

.post-info {
	margin-right: 15px;
}

.post-text {
	margin-bottom: 150px;
}

.list {
	background: #4b4276;
	color: #fff;
	float: right;
}

.delete {
	float: right;
	margin-top: 3px;
}

.replyBox {
	padding: 6px 10px 5px 10px;
}

.replyContent {
	margin-top: 3px;
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
				<a href='../logo/01.html'>로고관리</a>&nbsp;|&nbsp;
					<a href='../banner/01.html'>배너관리</a>&nbsp;|&nbsp; 
					<a href='../../main.html'>홈페이지 돌아가기</a>&nbsp;|&nbsp; 
					<a href='../../main.html'>로그아웃</a>
			</div>
		</div>
		<div class='info'>
			<div class='content'>
				<h3>
					<span class='glyphicon glyphicon-bullhorn'></span>
					<strong> 신고 게시판 관리</strong>
				</h3>
				<hr style='border: 1px solid #a0a0a0;'>
				<h4>
					<strong>중화동 근처 말티즈 잃어버리신 분 있나요?</strong>
				</h4>
				<strong class='post-info'>coco1234</strong>
				<span class='glyphicon glyphicon-eye-open post-info'>&nbsp;21</span>
				<span class='glyphicon glyphicon-time post-info'>&nbsp;2020-06-13</span>							
			</div>
			<hr>
			<div class='post-text'>
				퇴근하고 집 가는데 말티즈 한 마리가 혼자서 돌아다니더라구요.<br>
				깨끗하고 관리가 잘 된걸 보면 유기는 아니고<br>
				잃어버리신거 같은데 임보 중이니 연락 주세요. 010-3434-1221<br> <!-- 강아지 사진, 지도 -->				
			</div>
			<a href='01.html'><button class='btn list'>목록</button></a><br><br>
			<hr>
			
			<h4><strong>댓글</strong></h4>
			<br>
			<div style='background-color:#eeeeee;'>
				<div class='replyBox'>
					<span><strong>miso93</strong>&nbsp;&nbsp;2020-06-10</span>
					<button type='button' class='btn btn-danger delete'>삭제</button>
					<div class='replyContent'>
						아이가 얼른 주인분 만났으면 좋겠네요.
					</div>
				</div>
					
			</div>
			<br>
			<div style='background-color:#eeeeee;'>
				<div class='replyBox'>
					<span><strong>smile1</strong>&nbsp;&nbsp;2020-06-10</span>
					<button type='button' class='btn btn-danger delete'>삭제</button>
					<div class='replyContent'>
						안타깝네요.
						<br>안타깝네요.
						<br>안타깝네요.
						<br>안타깝네요.
						<br>안타깝네요.
						<br>안타깝네요.
						<br>안타깝네요.	
					</div>
				</div>
			</div>
			<br>
		</div>
	</div>
</div>
</body>
</html>