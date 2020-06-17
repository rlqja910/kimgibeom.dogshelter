<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>유기견 보호소</title>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script src="./res/layout.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script>

</script>
<style>
	/* header */
	.header{width:100%; height:<a href=''><</a>80px; background-color:#ccc; background-image:url('loginImg.jpg'); background-position: center;}
	.header .headerBackground{background:rgba(0, 0, 0, .4); height:380px;}
	
	.subHr{width:45px; margin-top:140px; border:1px solid #f5bf25;}
	.header .subTitle{text-align:center; font-size:42px; color:#fff; margin-top:20px;}
	.contHr{width:45px; margin-top:20px; margin-bottom:60px; border:1px solid #f5bf25;}
	.contTitle{font-size:28px; font-weight:bold; text-align:center;}

	/* 입양후기 */
	.review{width:80%;font-size:14px; margin:0 auto; margin-top:100px; margin-bottom:100px;}
	.review .reviewCont{width:100%; overflow:hidden;}
	.review .reviewCont ul{width:23.5%; float:left; margin:1% 0 0 1%; border:1px solid #ccc;}
	.review .reviewCont ul li:nth-child(2){font-weight:bold; margin:5% 3% 3% 3%;}
	.review .reviewCont ul li:nth-child(3){margin:0 3% 0 3%; color:#666; font-size:12px;}
	.review .reviewCont ul li:nth-child(4){text-align:right; margin:6% 3% 5% 3%;}
	.review .reviewCont ul img{width:100%;}
	
	/* 페이징 */
	.review .page{width:100%; margin-top:70px;}
	.review .page ul{display:flex; margin:0 auto; justify-content:center;}
	.review .page ul li{border:1px solid #ccc;}
	.review .page ul li a{padding:10px 15px;}
	.review .page ul li a:hover{background-color:#333; color:#fff;}

	/* 모바일 스타일 */
	@media screen and (max-width:768px){
		.subHr{margin-top:20%;}
		.contHr{margin-top:5%; margin-bottom:10%;}

		.header .subTitle{font-size:36px; margin-top:0; padding-bottom:5%;}
		.contHr{margin-top:5%; margin-bottom:10%;}
		
		.review{margin-top:10%; margin-bottom:10%;}
		.review .reviewCont ul{width:48%;}
		.review .page{width:100%; margin-top:10%;}
		.review .page ul li a{padding:8px 14px;}
	}

	@media screen and (max-width:540px){
		.review .page ul li a{padding:6px 12px;}
	}
</style>
<script>

</script>
</head>
<body>
	<div class='container'>
		<div class='header'>
			<div class='headerBackground'>
				<header>
					
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
					<div class='reviewCont'>
						<a href='review.02.html'>
							<ul>
								<li><img src='./dog.jpg'></li>
								<li>치와와치치 따뜻한 가정으로</li>
								<li>작고 아담한 치와와 치치가...</li>
								<li>+더보기</li>
							</ul>
						</a>
						<a href='review.02.html'>
							<ul>
								<li><img src='./dog.jpg'></li>
								<li>치와와치치 따뜻한 가정으로</li>
								<li>작고 아담한 치와와 치치가...</li>
								<li>+더보기</li>
							</ul>
						</a>
						<a href='review.02.html'>
							<ul>
								<li><img src='./dog.jpg'></li>
								<li>치와와치치 따뜻한 가정으로</li>
								<li>작고 아담한 치와와 치치가...</li>
								<li>+더보기</li>
							</ul>
						</a>
						<a href='review.02.html'>
							<ul>
								<li><img src='./dog.jpg'></li>
								<li>치와와치치 따뜻한 가정으로</li>
								<li>작고 아담한 치와와 치치가...</li>
								<li>+더보기</li>
							</ul>
						</a>
						<a href='review.02.html'>
							<ul>
								<li><img src='./dog.jpg'></li>
								<li>치와와치치 따뜻한 가정으로</li>
								<li>작고 아담한 치와와 치치가...</li>
								<li>+더보기</li>
							</ul>
						</a>
						<a href='review.02.html'>
							<ul>
								<li><img src='./dog.jpg'></li>
								<li>치와와치치 따뜻한 가정으로</li>
								<li>작고 아담한 치와와 치치가...</li>
								<li>+더보기</li>
							</ul>
						</a>
						<a href='review.02.html'>
							<ul>
								<li><img src='./dog.jpg'></li>
								<li>치와와치치 따뜻한 가정으로</li>
								<li>작고 아담한 치와와 치치가...</li>
								<li>+더보기</li>
							</ul>
						</a>
						<a href='review.02.html'>
							<ul>
								<li><img src='./dog.jpg'></li>
								<li>치와와치치 따뜻한 가정으로</li>
								<li>작고 아담한 치와와 치치가...</li>
								<li>+더보기</li>
							</ul>
						</a>
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
			
		</footer>
	</div>
</body>
</html>