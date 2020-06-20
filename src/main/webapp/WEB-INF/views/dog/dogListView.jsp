<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>유기견 보호소</title>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script src="../res/layoutsub.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<style>
/* header */
.header {
	width: 100%;
	background-color: #ccc;
	background-image: url('../img/loginImg.jpg');
	background-position: center;
}

.header .headerBackground {
	background: rgba(0, 0, 0, .4);
	height: 380px;
}

.subHr {
	width: 45px;
	margin-top: 140px;
	border: 1px solid #f5bf25;
}

.header .subTitle {
	text-align: center;
	font-size: 42px;
	color: #fff;
	margin-top: 20px;
}

.contHr {
	width: 45px;
	margin-top: 20px;
	margin-bottom: 60px;
	border: 1px solid #f5bf25;
}

.contTitle {
	font-size: 32px;
	font-weight: bold;
	text-align: center;
}

/* 유기견 신고 */
.report {
	width: 80%;
	font-size: 14px;
	margin: 0 auto;
	margin-top: 100px;
	margin-bottom: 100px;
}

.report .reviewCont {
	width: 100%;
	overflow: hidden;
}

.report .reviewCont ul {
	width: 23.5%;
	float: left;
	margin: 1% 0 0 1%;
	border: 1px solid #ccc;
}

.report .reviewCont ul li:nth-child(2) {
	font-weight: bold;
	margin: 5% 3% 3% 3%;
}

.report .reviewCont ul li:nth-child(3) {
	margin: 0 3% 0 3%;
	color: #666;
	font-size: 12px;
}

.report .reviewCont ul li:nth-child(4) {
	text-align: right;
	margin: 6% 3% 5% 3%;
}

.report .reviewCont ul img {
	width: 100%;
}

/* 검색 */
.report .search {
	width: 100%;
	overflow: hidden;
	padding: 0.3%;
	margin: 0 auto;
	justify-content: center;
	margin-bottom: 60px;
	display: flex;
}

.report .search .search_1 {
	margin-right: 8px;
	overflow: hidden;
}

.report .search .search_2 {
	overflow: hidden;
}

.report .search .search_1 input {
	float: left;
}

.report .search .search_1 select {
	float: left;
	width: 90px;
	height: 42px;
	padding: 0 5px 0 5px;
	border: 2px solid #f5bf25;
	border-right: 0px;
}

.report .search .search_1 input:nth-child(2) {
	border: 2px solid #f5bf25;
	width: 140px;
	height: 38px;
	padding: 0 10px;
	margin-left: -1px;
	border-left: 0px;
}

.report .search .search_2 input {
	float: left;
}

.report .search .search_2 select {
	float: left;
	width: 80px;
	height: 42px;
	padding: 0 5px 0 5px;
	border: 2px solid #f5bf25;
	border-right: 0px;
}

.report .search .search_2 input:nth-child(2) {
	border: 2px solid #f5bf25;
	width: 300px;
	height: 36px;
	margin-left: -1px;
	border-left: 0px;
}

.report .search .search_2 input:nth-child(3) {
	width: 70px;
	height: 42px;
	background-color: #f5bf25;
	border: 0px;
	color: #fff;
}

/* 페이징 */
.report .page {
	width: 100%;
	margin-top: 70px;
}

.report .page ul {
	display: flex;
	margin: 0 auto;
	justify-content: center;
}

.report .page ul li {
	border: 1px solid #ccc;
}

.report .page ul li a {
	padding: 10px 15px;
}

.report .page ul li a:hover {
	background-color: #333;
	color: #fff;
}

@media screen and (max-width:900px) {
	.report .search {
		display: block;
	}
	.report .search .search_1 {
		margin-bottom: 2%;
	}
}

/* 모바일 스타일 */
@media screen and (max-width:768px) {
	.subHr {
		margin-top: 20%;
	}
	.contHr {
		margin-top: 5%;
		margin-bottom: 10%;
	}
	.header .subTitle {
		font-size: 36px;
		margin-top: 0;
		padding-bottom: 5%;
	}
	.contHr {
		margin-top: 5%;
		margin-bottom: 10%;
	}
	.contTitle {
		font-size: 28px;
	}

	/* 검색 */
	.report .search {
		margin-bottom: 10%;
		display: block;
	}
	.report .search .search_1 {
		float: none;
	}
	.report .search .search_2 {
		float: none;
	}
	.report .search .search_2 input:nth-child(2) {
		width: 50%;
	}

	/* 유기견 신고 */
	.report {
		margin-top: 10%;
		margin-bottom: 10%;
	}
	.report .reviewCont ul {
		width: 48%;
	}

	/* 페이징 */
	.report .page {
		width: 100%;
		margin-top: 10%;
	}
	.report .page ul li a {
		padding: 8px 14px;
	}
}

@media screen and (max-width:540px) {
	.report .page ul li a {
		padding: 6px 12px;
	}
}
</style>
</head>
<body>
	<div class='container'>
		<div class='header'>
			<div class='headerBackground'>
				<header><header><%@ include file="../common/header.jsp"%> </header>
				<hr class='subHr'>
				<div class='subTitle'>무료 분양</div>
			</div>
		</div>

		<!-- 입양후기 -->
		<div class="content">
			<div class="report">
				<div class='contTitle'>무료 분양</div>
				<hr class='contHr'>

				<!-- 검색 -->
				<div class='search'>
					<div class='search_1'>
						<select>
							<option>입소날짜</option>
						</select> <input type='date' />
					</div>
					<div class='search_2'>
						<select>
							<option>품종</option>
						</select> <input type='text' /> <input type='button' value='검색' />
					</div>
				</div>

				<div class='reviewCont'>
					<a href='02.html'>
						<ul>
							<li><div
									style="height: 100px; width: 273px; border: 1px solid;">강아지
									이미지</div></li>
							<li>진돗개 까미 분양합니다.</li>
							<li>간절하게 기다립니다.</li>
							<li>+더보기</li>
						</ul>
					</a> <a href='02.html'>
						<ul>
							<li><div
									style="height: 100px; width: 273px; border: 1px solid;">강아지
									이미지</div></li>
							<li>치와와치치 분양합니다.</li>
							<li>간절하게 기다립니다.</li>
							<li>+더보기</li>
						</ul>
					</a> <a href='02.html'>
						<ul>
							<li><div
									style="height: 100px; width: 273px; border: 1px solid;">강아지
									이미지</div></li>
							<li>포메라니안 슛돌이 분양합니다</li>
							<li>간절하게 기다립니다.</li>
							<li>+더보기</li>
						</ul>
					</a> <a href='02.html'>
						<ul>
							<li><div
									style="height: 100px; width: 273px; border: 1px solid;">강아지
									이미지</div></li>
							<li>달마시안 마크 분양합니다.</li>
							<li>간절하게 기다립니다.</li>
							<li>+더보기</li>
						</ul>
					</a> <a href='02.html'>
						<ul>
							<li><div
									style="height: 100px; width: 273px; border: 1px solid;">강아지
									이미지</div></li>
							<li>슈나우저 필립 분양합니다.</li>
							<li>간절하게 기다립니다.</li>
							<li>+더보기</li>
						</ul>
					</a> <a href='02.html'>
						<ul>
							<li><div
									style="height: 100px; width: 273px; border: 1px solid;">강아지
									이미지</div></li>
							<li>말티즈 웁스 분양합니다.</li>
							<li>간절하게 기다립니다.</li>
							<li>+더보기</li>
						</ul>
					</a> <a href='02.html'>
						<ul>
							<li><div
									style="height: 100px; width: 273px; border: 1px solid;">강아지
									이미지</div></li>
							<li>비글 데빌 분양합니다.</li>
							<li>간절하게 기다립니다.</li>
							<li>+더보기</li>
						</ul>
					</a> <a href='02.html'>
						<ul>
							<li><div
									style="height: 100px; width: 273px; border: 1px solid;">강아지
									이미지</div></li>
							<li>시바견 솜이 분양합니다.</li>
							<li>간절하게 기다립니다.</li>
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
		<footer><footer><%@ include file="../common/footer.jsp"%> </footer>
	</div>
</body>