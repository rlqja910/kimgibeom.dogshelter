<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>유기견 보호소</title>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script src="../res/layoutsub.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<script>
function readReports() {
	console.log($('#report'));
	$('.reportCont').html(
		`<c:forEach var='report' items='${reports}'>
			<a href='./reportView/${report.reportNum}'>
				<ul>
					<li><div style="height:100px; width:273px; border:1px solid;">강아지 이미지</div></li>
					<li>${report.title}</li>
					<li>${report.content}</li>
					<li>+더보기</li>
				</ul>
			</a>
		</c:forEach>`);
	
	if($('.reportCont').html() == ``) {
		$('.reportCont').html('<br><div class="reportEmpty">등록된 게시글이 없습니다.</div><br>');
	}
}
$(readReports);
</script>
<style>
	/* header */
	.header{width:100%; background-color:#ccc; background-image:url('../img/loginImg.jpg'); background-position: center;}
	.header .headerBackground{background:rgba(0, 0, 0, .4); height:380px;}
	
	.subHr{width:45px; margin-top:140px; border:1px solid #f5bf25;}
	.header .subTitle{text-align:center; font-size:42px; color:#fff; margin-top:20px;}
	.contHr{width:45px; margin-top:20px; margin-bottom:60px; border:1px solid #f5bf25;}
	.contTitle{font-size:32px; font-weight:bold; text-align:center;}
	/* 유기견 신고 */
	.report{width:80%;font-size:14px; margin:0 auto; margin-top:100px; margin-bottom:100px;}
	.report .reportCont{width:100%; overflow:hidden;}
	.report .reportCont ul{width:23.5%; float:left; margin:1% 0 0 1%; border:1px solid #ccc;}
	.report .reportCont ul li:nth-child(2){font-weight:bold; margin:5% 3% 3% 3%;}
	.report .reportCont ul li:nth-child(3){margin:0 3% 0 3%; color:#666; font-size:12px;}
	.report .reportCont ul li:nth-child(4){text-align:right; margin:6% 3% 5% 3%;}
	.report .reportCont ul img{width:100%;}
	/* 검색 */
	.report .search{width:100%; overflow:hidden; padding:0.3%; display:flex; margin:0 auto; justify-content:center; margin-bottom:60px;}
	.report .search input{float:left;}
	.report .search select{float:left; width:80px; height:42px; padding:0 5px 0 5px; border:2px solid #f5bf25; border-right:0px;}
	.report .search input:nth-child(2){border:2px solid #f5bf25; width:350px; height:36px; margin-left:-1px; border-left:0px;}
	.report .search input:nth-child(3){width:70px; height:42px; background-color:#f5bf25; border:0px; color:#fff;}
	
	/* 등록버튼 */
	.report .reportBtn{text-align:center; margin-top:50px;}
	.report .reportBtn input{width:70px; height:40px; background-color:#f5bf25; color:#fff; border:0px;}
	/* 페이징 */
	.report .page{width:100%; margin-top:70px;}
	.report .page ul{display:flex; margin:0 auto; justify-content:center;}
	.report .page ul li{border:1px solid #ccc;}
	.report .page ul li a{padding:10px 15px;}
	.report .page ul li a:hover{background-color:#333; color:#fff;}
	/* 모바일 스타일 */
	@media screen and (max-width:768px){
		.subHr{margin-top:20%;}
		.contHr{margin-top:5%; margin-bottom:10%;}
		.header .subTitle{font-size:36px; margin-top:0; padding-bottom:5%;}
		.contTitle{font-size:28px;}
		
		/* 검색 */
		.report .search{margin-bottom:10%;}
		
		/* 유기견 신고 */
		.report{margin-top:10%; margin-bottom:10%;}
		.report .reportCont ul{width:48%;}
		/* 페이징 */
		.report .page{width:100%; margin-top:10%;}
		.report .page ul li a{padding:8px 14px;}
		/* 등록버튼 */
		.report .reportBtn{margin-top:8%;}
	}
	@media screen and (max-width:540px){
		.report .page ul li a{padding:6px 12px;}
	}
</style>
</head>
<body>
	<div class='container'>
		<div class='header'>
			<div class='headerBackground'>
				<header>
					<%@ include file="../common/header.jsp"%>
				</header>
				<hr class='subHr'>
				<div class='subTitle'>유기견 신고</div>
			</div>
		</div>

		<!-- 유기견 신고 -->
			<div class="content">
				<div class="report">
					<div class='contTitle'>유기견 신고</div>
					<hr class='contHr'>
					
					<!-- 검색 -->
					<div class='search'>
						<select>
							<option>아이디</option>
							<option>글제목</option>
						</select>
						<input type='text'/>
						<input type='button' value='검색'/>
					</div>

					<div class='reportCont'></div>

					<!-- 동록버튼 -->
					<div class='reportBtn'>
						<input type='button' value='등록' onClick="location.href='02.html'"/>
					</div>
					<!-- 페이징 -->
					<div class='page'>
						<ul>
							<li><a href='#'><</a></li>
							<li><a href='#'>1</a></li>
							<li><a href='#'>2</a></li>
							<li><a href='#'>3</a></li>
							<li><a href='#'>4</a></li>
							<li><a href='#'>5</a></li>
							<li><a href='#'>6</a></li>
							<li><a href='#'>7</a></li>
							<li><a href='#'>8</a></li>
							<li><a href='#'>9</a></li>
							<li><a href='#'>></a></li>
						</ul>
					</div>
				</div>
			</div>
		<!-- 푸터 -->
		<footer>
			<%@ include file="../common/footer.jsp"%>
		</footer>
	</div>
</body>
</html>