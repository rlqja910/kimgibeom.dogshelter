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
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<script>
function replyDel() {
	$('.replyDel').click(function(e) {
		let replyNo = $(this).attr('id').trim();
		
		swal({
			title: '',
			text: '댓글을 삭제하시겠습니까?',
			type: 'warning',
			showCancelButton: true,
			confirmButtonText: '확인',
			cancelButtonText: '취소',
			closeOnConfirm: false
		},
		function(isConfirm) {
			if(isConfirm) {
				$.ajax({
					url: '../removeReply',
					data: {replyNum: replyNo},
					success: () => {
						location.reload();
					}
				});
			}	
		});
	});
};

function replyNum() {
	let replyNum = $('.replyBox').length;
	$('h4').eq(1).children().html('댓글 &nbsp;<font>' 
			+ replyNum + '</font>');
}

$(replyDel);
$(replyNum);
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

.postInfo {
	margin-right: 15px;
}

.postText {
	margin-bottom: 150px;
}

.list {
	background: #4b4276;
	color: #fff;
	float: right;
}

.replyDel {
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
				
				<div>
					<h4><strong>${report.title}</strong></h4>
					<strong class='postInfo'>${report.userId}</strong>
					<span class='glyphicon glyphicon-eye-open postInfo'>&nbsp;${report.viewCount}</span>
					<span class='glyphicon glyphicon-time postInfo'>&nbsp;${report.regDate}</span>		
					<hr>					
				</div>	
				
				<div class='postText'>
					${report.content}
				</div>							
			</div>
			
			<a href='../reportListView'><button class='btn list'>목록</button></a><br><br>
			<hr>		
			
			<h4><strong>댓글</strong></h4>
			<br>
			<c:forEach var='reply' items='${replies}'>
				<div style='background-color:#eeeeee;'>
					<div class='replyBox'>
						<span><strong>${reply.writer}</strong>&nbsp;&nbsp;${reply.regDate}</span>
						<button id='${reply.replyNum}' type='button' class='btn btn-danger replyDel'>삭제</button>
						<div class='replyContent'>
							${reply.content}<br>&nbsp;
						</div>
					</div>
				</div>
				<br>
			</c:forEach>
		</div>
	</div>
</div>
</body>
</html>