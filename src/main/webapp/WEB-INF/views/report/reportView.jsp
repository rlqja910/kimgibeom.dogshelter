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
<script>
$(()=>{
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
});
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
	.writeCont{width:100%;}
	.writeCont p{font-size:20px; font-weight:bold; colo:#333;}
	.writeCont .write{border:1px solid #ccc;}
	.writeCont .write textarea{width: 98%; height: 60px; padding:1%; border:0px; font-size: 14px; resize: both;}
	.writeCont .write div{text-align:right;}
	.writeCont .write div div{width:100%; border-top:1px solid #e2e2e2;}
	.writeCont .write div div input{background-color:#f5bf25; width:70px; height:40px; border:0px; color:#fff;}

	.writeCont .view{margin-top:5%; font-size:16px;}
	.writeCont .view ul{border-bottom:1px solid #ccc; padding:2% 0;}
	.writeCont .view ul li:nth-child(1){margin-bottom:1%;}
	.writeCont .view ul li span{color:#999;}

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
		
		<!-- 입양후기 -->
			<div class="content">
				<div class="review">
					<div class='contTitle'>유기견 신고</div>
					<hr class='contHr'>
					<div class='reportView'>
						<table>
							<tr>
								<th>제목</th>
								<td>왕십리에서 비글 발견했습니다.</td>
							</tr>
							<tr>
								<td colspan='2'>
									<div style="height:100px; width:120px; border:1px solid;">강아지 이미지</div><br><br>
									얼른 데려가주세요.ㅠㅠ
								</td>
							</tr>
						</table>
						
						<!-- 목록 버튼 -->
						<div class='button'>
							<input type='button' value='목록' onClick="location.href='01.html'"/>
							<input type='button' value='삭제' id='reportDel'/>
							<input type='button' value='수정' onClick="location.href='04.html'"/>
						</div>
						
						<!-- 답글 -->
						<div class='writeCont'>
							<p>댓글</p>
							<div class='write'>
								<div>
									<textarea>

									</textarea>
									<div>
										<input type='button' value='등록'/>
									</div>
								</div>
							</div>
							<div class='view'>
								<ul>
									<li>miso93 <span>2020-06-10</span></li>
									<li>아이가 얼른 주인 분 만났으면 좋겠네요.</li>
								</ul>
								<ul>
									<li>miso93 <span>2020-06-10</span></li>
									<li>아이가 얼른 주인 분 만났으면 좋겠네요.</li>
								</ul>
								<ul>
									<li>miso93 <span>2020-06-10</span></li>
									<li>아이가 얼른 주인 분 만났으면 좋겠네요.</li>
								</ul>
							</div>
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