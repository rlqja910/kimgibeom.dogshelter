<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>유기견 보호소</title>
<%@ include file="../common/scriptImport.jsp" %>
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
	.review .reviewView{width:90%; margin:0 auto;}
	.review .reviewView table{width:100%; border-collapse: collapse;}
	.review .reviewView table tr{font-size:16px;}
	.review .reviewView table tr:nth-child(1){border-top:1px solid #333; border-bottom:1px solid #ccc;}
	.review .reviewView table tr:nth-child(2){border-bottom:1px solid #ccc;}
	.review .reviewView table tr th{background-color:#ccc; width:20%; padding:1% 0;}
	.review .reviewView table tr td{width:80%; padding:1% 0 1% 2%;}
	.review .reviewView table tr:nth-child(2) td{padding:2% 0 2% 2%;}
	
	/* 목록 버튼 */
	.button{text-align:center;}
	.button input{background-color:#f5bf25; width:70px; height:40px; border:0px; color:#fff; margin-top:30px;}

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
	.writeCont .view ul li:nth-child(1){margin-bottom:1%; overflow:hidden;}
	.writeCont .view ul li .viewDel{float:right;}
	.writeCont .view ul li .viewDel input{background-color:#fff; border:1px solid #ccc; color:#666; padding:5px 10px;}
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
					<%@ include file="../common/header.jsp" %>
				</header>
				<hr class='subHr'>
				<div class='subTitle'>입양후기</div>
			</div>
		</div>
		
		<!-- 입양후기 -->
			<div class="content">
				<div class="review">
					<div class='contTitle'>입양후기</div>
					<hr class='contHr'>
					<div class='reviewView'>
						<table>
							<tr>
								<th>제목</th>
								<td>차와와 치치!! 따뜻한 가정으로</td>
							</tr>
							<tr>
								<td colspan='2'>
									<div style="height:100px; width:120px; border:1px solid;">유기견 이미지</div><br><br>
									저희 센터에서 가장 작고 아담한 치와와 공주 치치가 드디어 좋은 견주를 만났어요. > <<br>
									자식가진 부모님 마음은 한결같죠!!<br>
									내 자식이 가지고 싶은거 하고 싶은거 할 수 잏게 해주는거요!!!<br>
									사랑하는 따님의 생일선물로 치와와를 분양해 가셨어요.<br>
									견주님께서도 어릴때 강아지도 키워보고 너무나도 좋아했지만 그동안 잊고 지내셨었나봐요~<br>
									따님 생일선물이기도 하지만 경주님께도 인생의 선물이 아닐가싶네요. 사랑스러운 새로운 가족이 생겼으니깐요.^^
								</td>
							</tr>
						</table>
						
						<!-- 목록 버튼 -->
						<div class='button'>
							<input type='button' value='목록' onClick="location.href='01.html'"/>
						</div>
						
						<!-- 답글 -->
						<div class='writeCont'>
							<p>댓글</p>
							<div class='write'>
								<div>
									<textarea>

									</textarea>
									<div>
										<input type='button' value='등록' onClick="location.href='02.html'"/>
									</div>
								</div>
							</div>
							<div class='view'>
								<ul>
									<li>Smile1 <span>2020-06-17</span> <span class='viewDel'><input type='button' value='삭제'/></li>
									<li>치와와 치치가 좋은 주인을 만난거 같아서 너무 다행이네요~!</li>
								</ul>
								<ul>
									<li>Smile1 <span>2020-06-17</span> <span class='viewDel'><input type='button' value='삭제'/></li>
									<li>치와와 치치가 좋은 주인을 만난거 같아서 너무 다행이네요~!</li>
								</ul>
								<ul>
									<li>Smile1 <span>2020-06-17</span> <span class='viewDel'><input type='button' value='삭제'/></li>
									<li>치와와 치치가 좋은 주인을 만난거 같아서 너무 다행이네요~!</li>
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