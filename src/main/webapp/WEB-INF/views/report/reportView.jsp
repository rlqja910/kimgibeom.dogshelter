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
<script src='https://code.jquery.com/jquery-3.4.1.min.js'></script>
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>	
<script>
function reportDel() {
	$('#reportDel').click(()=>{
		$.ajax({
			success: () =>{
				swal({
					title:'게시물이 삭제되었습니다',
					text:'',
					type:'success', 
				},
				function(result){
						location.href='01.html';
				})
			}
		});
	});
}


function readReply() {
	$('.view').html(
		`<c:forEach var='reply' items='${replies}'>
			<ul>
				<li>${reply.writer} <span>${reply.regDate}</span></li>
				<li>${reply.content}</li>
			</ul>
		</c:forEach>`	
	);
	
	if ($('.view').html() == ``) {
		$('.view').html('<div class="viewEmpty">댓글이 없습니다.</div>')
	}
}

$(readReply);
$(reportDel);
</script>
<style>
	/* header */
	.header{width:100%; height:380px; background-color:#ccc; background-image:url('../img/loginImg.jpg'); background-position: center;}
	.header .headerBackground{background:rgba(0, 0, 0, .4); height:380px;}
	
	.subHr{width:45px; margin-top:140px; border:1px solid #f5bf25;}
	.header .subTitle{text-align:center; font-size:42px; color:#fff; margin-top:20px;}
	.contHr{width:45px; margin-top:20px; margin-bottom:60px; border:1px solid #f5bf25;}
	.contTitle{font-size:32px; font-weight:bold; text-align:center;}

	/* 입양후기 */
	.review{width:80%;font-size:14px; margin:0 auto; margin-top:100px; margin-bottom:100px;}
	.review .reportView{width:90%; margin:0 auto;}
	.review .reportView table{width:100%; border-collapse: collapse;}
	.review .reportView table tr{font-size:16px;}
	.review .reportView table tr:nth-child(1){border-top:1px solid #333; border-bottom:1px solid #ccc;}
	.review .reportView table tr:nth-child(2){border-bottom:1px solid #ccc;}
	.review .reportView table tr th{background-color:#ccc; width:20%; padding:1% 0;}
	.review .reportView table tr td{width:80%; padding:1% 0 1% 2%;}
	.review .reportView table tr:nth-child(2) td{padding:2% 0 2% 2%;}
	
	/* 목록 버튼 */
	.button{text-align:center; overflow:hidden;}
	.button input{background-color:#f5bf25; width:70px; height:40px; border:0px; color:#fff; margin-top:30px; }
	.button input:nth-child(1){float:left;}
	.button input:nth-child(2){border:1px solid #ccc; background-color:#fff; color:#666; margin-left:5px;}
	.button input{float:right;}

	/* 댓글 */
	.replyCont{width:100%;}
	.replyCont p{font-size:20px; font-weight:bold; colo:#333;}
	.replyCont .reply{border:1px solid #ccc;}
	.replyCont .reply textarea{width: 98%; height: 60px; padding:1%; border:0px; font-size: 14px; resize: both;}
	.replyCont .reply div{text-align:right;}
	.replyCont .reply div div{width:100%; border-top:1px solid #e2e2e2;}
	.replyCont .reply div div input{background-color:#f5bf25; width:70px; height:40px; border:0px; color:#fff;}

	.replyCont .view{margin-top:5%; font-size:16px;}
	.replyCont .view ul{border-bottom:1px solid #ccc; padding:2% 0;}
	.replyCont .view ul li:nth-child(1){margin-bottom:1%;}
	.replyCont .view ul li span{color:#999;}

	/* 모바일 스타일 */
	@media screen and (max-width:768px){
		.subHr{margin-top:20%;}
		.contHr{margin-top:5%; margin-bottom:10%;}

		.header .subTitle{font-size:36px; margin-top:0; padding-bottom:5%;}
		.contTitle{font-size:28px;}
		
		.review{margin-top:10%; margin-bottom:10%;}
		.review .reviewView{width:100%;}
		.review .reviewView table tr{font-size:14px;}
		.review .reviewView table tr th{background-color:#ccc; width:20%; padding:2% 0;}

		.button input{margin-top:5%;}

		.writeCont .view{font-size:14px;}
		.writeCont .view ul{border-bottom:1px solid #ccc; padding:4% 0;}
		.writeCont .view ul li:nth-child(1){margin-bottom:2%;}
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
				<div class="review">
					<div class='contTitle'>유기견 신고</div>
					<hr class='contHr'>
					<div class='reportView'>
						<table>
							<tr>
								<th>제목</th>
								<td>${report.title}</td>
							</tr>
							<tr>
								<td colspan='2'>
									<div style="height:100px; width:120px; border:1px solid;">강아지 이미지</div><br><br>
									${report.content}
								</td>
							</tr>
						</table>
						
						<!-- 목록 버튼 -->
						<div class='button'>
							<a href='../reportListView'><input type='button' value='목록'/></a>
							<input type='button' value='삭제' id='reportDel'/>
							<input type='button' value='수정' onClick="location.href='04.html'"/>
						</div>
						
						<!-- 댓글 -->
						<div class='replyCont'>
							<p>댓글</p>
							<div class='reply'>
								<div>
									<textarea>

									</textarea>
									<div>
										<input type='button' value='등록'/>
									</div>
								</div>
							</div>
							<div class='view'></div>
						</div>
					</div>

					<!-- 페이징 -->

				</div>
			</div>

		<!-- 푸터 -->
		<footer>
			<%@ include file="../common/footer.jsp"%>
		</footer>
	</div>
</body>
</html>