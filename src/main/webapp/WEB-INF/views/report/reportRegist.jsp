<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>유기견 보호소</title>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script src="../res/layoutsub.js"></script>
<script src="//cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>
<script src="${path}/ckeditor/ckeditor.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<style>
/* header */
.header {
	width: 100%;
	height: 380px;
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
.review {
	width: 80%;
	font-size: 14px;
	margin: 0 auto;
	margin-top: 100px;
	margin-bottom: 100px;
}

.review .reportWrite {
	width: 90%;
	margin: 0 auto;
}

.review .reportWrite table {
	width: 100%;
	border-collapse: collapse;
}

.review .reportWrite table tr {
	font-size: 16px;
}

.review .reportWrite table tr:nth-child(1) {
	border-top: 1px solid #333;
	border-bottom: 1px solid #ccc;
}

.review .reportWrite table tr:nth-child(2) {
	border-bottom: 1px solid #ccc;
}

.review .reportWrite table tr:nth-child(3) {
	border-bottom: 1px solid #ccc;
}

.review .reportWrite table tr th {
	background-color: #ccc;
	width: 20%;
	padding: 1% 0;
}

.review .reportWrite table tr td {
	width: 80%;
	padding: 1% 0 1% 2%;
}

.review .reportWrite table tr:nth-child(2) td {
	padding: 1% 0 1% 2%;
}

.review .reportWrite table tr:nth-child(1) input {
	width: 70%;
	height: 30px;
	border: 1px solid #999;
}

.review .reportWrite table tr:nth-child(2) textarea {
	width: 95%;
	height: 250px;
	border: 1px solid #999;
}

/* 등록, 취소버튼 */
.button {
	text-align: center;
}

.button input {
	background-color: #f5bf25;
	width: 70px;
	height: 40px;
	border: 0px;
	color: #fff;
	margin-top: 30px;
}

.button input:nth-child(2) {
	background-color: #fff;
	color: #666;
	border: 1px solid #ccc;
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
	.contTitle {
		font-size: 28px;
	}
	.review {
		margin-top: 10%;
		margin-bottom: 10%;
	}
	.review .reviewView {
		width: 100%;
	}
	.review .reviewView table tr {
		font-size: 14px;
	}
	.review .reviewView table tr th {
		background-color: #ccc;
		width: 20%;
		padding: 2% 0;
	}
	.button input {
		margin-top: 5%;
	}

	/* 유기견 신고 */
	.review .reportWrite table tr:nth-child(1) input {
		width: 95%;
	}
	.review .reportWrite table tr td {
		width: 80%;
		padding: 2% 0 2% 2%;
	}
	.review .reportWrite table tr:nth-child(2) td {
		padding: 2% 0 2% 2%;
	}
	.review .reportWrite table tr:nth-child(2) textarea {
		width: 95%;
		height: 200px;
		border: 1px solid #999;
	}
}

textarea {
	width: 1500px;
	height: 1000px;
	resize: none;
	padding: 20px;
}
</style>
</head>
<body>
	<div class='container'>
		<div class='header'>
			<div class='headerBackground'>
				<header> </header>
				<hr class='subHr'>
				<div class='subTitle'>유기견 신고</div>
			</div>
		</div>

		<!-- 입양후기 -->
		<div class="content">
			<div class="review">
				<div class='contTitle'>유기견 신고</div>
				<hr class='contHr'>
				<div class='reportWrite'>
					<table>
						<tr>
							<th>제목</th>
							<td><input type='text' /></td>
						</tr>
						<tr>
							<th>내용</th>
							<td><textarea id="description"> 
								</textarea> <script>
									CKEDITOR.replace("description", {
										removePlugins : 'image'
									});
								</script></td>
						</tr>
						<tr>
							<th>이미지</th>
							<td><input type='file' /></td>
						</tr>
					</table>

					<!-- 목록 버튼 -->
					<div class='button'>
						<input type='button' value='등록' onClick="location.href='01.html'" />
						<input type='button' value='취소' onClick="location.href='01.html'" />
					</div>
				</div>
			</div>
		</div>

		<!-- 푸터 -->
		<footer> </footer>
	</div>
</body>
</html>