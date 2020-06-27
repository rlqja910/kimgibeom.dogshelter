<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="kimgibeom.dog.dog.domain.Dog"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>유기견 보호소</title>
<%@ include file="../common/scriptImport.jsp"%>

<script type='text/javascript'>
let totalPageCnt=${totalPageCnt};
console.log(totalPageCnt);
let isOnePage=${isOnePage};
console.log(isOnePage);
let lastPageDataCnt=${lastPageDataCnt};
console.log(lastPageDataCnt);
let dogsData=null;
let dogsCnt=${dogsCnt};
	$(()=>{
		$('#pagingUl').append('<li><a href="#" id=""><</a></li>');
		for(let i=1; i<=totalPageCnt;i++){
			$('#pagingUl').append('<li><a href="#" id='+i+'page >' + i + '</a></li>');
		}
		$('#pagingUl').append('<li><a href="#">></a></li>');
		
		$('.reviewCont').empty();
		
		if(isOnePage==false){
			console.log('not onepage');
			dogsData=JSON.parse('${pageData}');
			console.log(dogsData);
			
			for(let i=1;i<=8;i++){
				$('#dogPost').append('<a href="../adopt/01.html"><ul><li>'+dogsData[i].attachName+'</li><li>'+dogsData[i].dogTitle+'</li><li>'+dogsData[i].dogContent+'</li><li>+더보기</li></ul></a>');
			}
			
		}else if(isOnePage==true){
			console.log('onepage');
			if(dogsCnt==0){
				console.log('11111');
				$('#pagingUl').empty();
				$('#dogPost').append('<ul><li>등록된 데이터가 없습니다.</li></ul>');
			}else{
				let onlyOnePageData=JSON.parse('${onlyOnePageData}');
				console.log(onlyOnePageData);
				
				for(let i=1;i<=lastPageDataCnt;i++){
					$('#dogPost').append('<a href="../adopt/01.html"><ul><li>'+onlyOnePageData[i-1].attachName+'</li><li>'+onlyOnePageData[i-1].dogTitle+'</li><li>'+onlyOnePageData[i-1].dogContent+'</li><li>+더보기</li></ul></a>');
				}
			}
		}
		console.log("끝");
		for(let i=1; i<=totalPageCnt;i++){
			$('#'+i+'page').click(()=>{
				dogsData=JSON.parse('${pageData}');
				console.log(dogsData);
				console.log(i);
				$('#dogPost').empty();
				
				if(i==totalPageCnt){
					let cnt=0;
					for(let j=1;j<=lastPageDataCnt;j++){
						console.log((i-1)*8+cnt+"------------");
						$('#dogPost').append('<a href="../adopt/01.html"><ul><li>'+dogsData[(i-1)*8+cnt].attachName+'</li><li>'+dogsData[(i-1)*8+cnt].dogTitle+'</li><li>'+dogsData[(i-1)*8+cnt].dogContent+'</li><li>+더보기</li></ul></a>');
						cnt++;
					}
				}else{
					let cnt=0;
					for(let j=1;j<=8;j++){
						console.log((i-1)*8+cnt+"------------");
						$('#dogPost').append('<a href="../adopt/01.html"><ul><li>'+dogsData[(i-1)*8+cnt].attachName+'</li><li>'+dogsData[(i-1)*8+cnt].dogTitle+'</li><li>'+dogsData[(i-1)*8+cnt].dogContent+'</li><li>+더보기</li></ul></a>');
						cnt++;
					}
				}
			});
		}
	});
</script>
<style>
/* header */
.header {
	width: 100%;
	background-color: #ccc;
	background-image: url('../attach/banner/banner.jpg');
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

.report .reviewCont ul li:nth-child(1) {
	padding: 30% 0;
	border-bottom: 1px solid #ccc;
	text-align: center;
}

.report .reviewCont ul li:nth-child(2) {
	font-weight: bold;
	margin: 5% 3% 3% 3%;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
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

.report .search .search_1 .select {
	float: left;
	width: 90px;
	height: 38px;
	padding: 0 5px 0 5px;
	border: 2px solid #f5bf25;
	text-align: center;
}

.report .search .search_1 .select p {
	margin-top: 10px;
}

.report .search .search_1 input:nth-child(2) {
	border: 2px solid #f5bf25;
	width: 140px;
	height: 38px;
	padding: 0 10px;
	border-left: 0px;
}

.report .search .search_2 input {
	float: left;
}

.report .search .search_2 .select {
	float: left;
	width: 80px;
	height: 38px;
	padding: 0 5px 0 5px;
	border: 2px solid #f5bf25;
	text-align: center;
}

.report .search .search_2 .select p {
	margin-top: 10px;
}

.report .search .search_2 input:nth-child(2) {
	border: 2px solid #f5bf25;
	width: 300px;
	height: 36px;
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

@media screen and (max-width:960px) {
	.report .search .search_2 input:nth-child(2) {
		width: 45%;
	}
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
				<header>
					<%@ include file="../common/header.jsp"%>
				</header>
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
						<div class='select'>
							<p>입소날짜</p>
						</div>
						<input type='date' />
					</div>
					<div class='search_2'>
						<div class='select'>
							<p>품종</p>
						</div>
						<input type='text' /> <input type='button' value='검색' />
					</div>
				</div>

				<div class='reviewCont' id='dogPost'></div>

				<!-- 페이징 -->
				<div class='page'>
					<ul id='pagingUl'>
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