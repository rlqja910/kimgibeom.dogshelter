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
function reportSearch() {
	$('#search').click(() => {
		if(!$('#searchContent').val().trim()) {
			swal({
				title: '',
				text: '검색어를 입력해주세요.',
				type: 'warning',
				confirmButtonText: '확인'
			})	
		}
	});
}

function reportList() {
	let date = new Date(); 
	
	$('tbody').empty();
	$('tbody').html(
		`<c:forEach var='report' items='${reports}'>
		<tr>
			<td><input type='checkbox' value=${report.reportNum} name='reportNum'/></td>
			<td>${report.reportNum}</td>
			<td id='userId'>${report.userId}</td>
			<td><a href='./read/${report.reportNum}' id='detailReport'>${report.title}</a></td>
			<td>${report.regDate}</td>
		</tr>
		</c:forEach>`)
	
	if ($('tbody').html() == ``) {
		$('tbody').html('<tr><td colspan="5">게시글이 없습니다.</td></tr>');
	}	
}

function reportDel() {
	$('#reportDel').click(() => {
		if($('input:checkbox').is(':checked')) {
			swal({
				title: '',
				text: '신고글을 삭제하시겠습니까?',
				type: 'warning',
				showCancelButton: true,
				confirmButtonText: '확인',
				cancelButtonText: '취소',
				closeOnConfirm: false
			},
			function(isConfirm) {
				if(isConfirm) {
					$.ajax({
						url: 'remove',
						data: {reportNum: $('input:checked').parent().next().text().trim()},
						success: () => {
							swal({
								title: '',
								text: '신고글이 삭제되었습니다.',
								type: 'success',
								confirmButtonText: '확인',
								closeOnConfirm: false
							},
							function(isConfirm) {
								if(isConfirm) location.reload();
							});
						}
					});
				}	
			});
		} else {
			swal({
				title: '',
				text: '항목을 선택하세요.',
				type: 'warning',
				showCancelButton: false,
				confirmButtonText: '확인',
				closeOnConfirm: false
			})			
		}
	});
}

$(reportSearch);
$(reportList);
$(reportDel);
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

#search {
	background: #4b4276;
}

#spanSearch {
	color: #fff;
}

tr > th {
	background: #dbd9e3;
}

th, td {
	text-align: center;
}

th {
	color: #4b4276;
}

.title {
	width: 950px;
}

.date {
	width: 200px;
}

.buttons{
	float: right;
}

#pagination {
	display: block;
	text-align: center;
}

#detailReport {
	text-decoration: none;
	color: 	#EA3462;
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
		<div class='info'>
			<div class='content'>
				<h3>
					<span class='glyphicon glyphicon-bullhorn'></span>
					<strong> 신고 게시판 관리</strong>
				</h3>
				<hr style='border: 1px solid #a0a0a0;'>
			
				<form action='#'>
					<div class='form-group'>
						<select class='form-control' style='width: 100px; height: 35px; float:left;'>
							<option>아이디</option>
							<option>제목</option>
						</select>
					</div>					
					<div class='form-group' id='content'>
						<input type='text' id='searchContent' class='form-control' placeholder='검색어를 입력해주세요.'/>
					</div>
					<div class='form-group'>
						<button type='button' class='btn btn-default' id='search'>
							<span id='spanSearch'>검색</span>
						</button>
					</div>
				</form>
				<br>
				<p>&nbsp;</p>
				<table class='table table-hover'>
					<thead>
						<tr>
							<th>선택</th>
							<th>번호</th>
							<th>아이디</th>
							<th class='title'>제목</th>
							<th class='date'>작성일</th>
						</tr>
					</thead>
					<tbody></tbody>
				</table>	
					
				<button type='button' class='btn btn-warning buttons' id='reportDel'>삭제</button>
				
				<br><br><br>
					
				<div id="pagination">
					<ul class="pagination">
					    <li><a href="#">&laquo;</a></li>
					    <li><a href="#">1</a></li>
					    <li><a href="#">2</a></li>
					    <li><a href="#">3</a></li>
					    <li><a href="#">4</a></li>
					    <li><a href="#">5</a></li>
					    <li><a href="#">&raquo;</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>