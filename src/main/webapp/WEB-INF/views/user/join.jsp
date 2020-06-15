<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>유기견 보호소</title>

<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<link rel="stylesheet" type="text/css" href="fontium/css/fontium.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<script src='https://code.jquery.com/jquery-3.4.1.min.js'></script>
<script>
	$(()=>{ 
		join(); 
	});
	
	function maxLengthCheck(object){ //숫자 max값 초과시 제한
	    if (object.value.length > object.maxLength){
	      object.value = object.value.slice(0, object.maxLength);
	    }    
	  }
	
	function clearConfirmMsg(){
		$('#idmsg').text('');
		$('#pwmsg').text('');
		$('#namemsg').text('');
		$('#phonemsg').text('');
		$('#emailmsg').text('');
	}
	
	function join(){
		$('#join').click(()=>{ 
			clearConfirmMsg();
			if($(':input:checkbox:checked').val()){
				let idCheck = /^[a-z]{1}[a-z0-9]{7,11}$/; //정규식으로 ID 제한
				let pwCheck = /((?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[^a-zA-Z0-9가-힣]).{8,15})/;//정규식으로 PW 제한
				let emailCheck = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;//정규식으로 EMAIL 제한
				let updateUserName=$('#userName').val().replace(/ /gi, '');
				
				if(!idCheck.test($('#userId').val())){
					$('#idmsg').text('아이디가 조건에 맞지 않습니다.');
					return;
				}
				
				if(!pwCheck.test($('#userPw').val())){
					$('#pwmsg').text('암호가 조건에 맞지 않습니다.');
					return;
				}

				if(updateUserName===''){
					$('#namemsg').text('이름을 입력하세요.');
					return;
				}
				
				if(!$('#userPhone1').val()||
					!$('#userPhone2').val()||!$('#userPhone3').val()){
					$('#phonemsg').text('전화번호을 입력하세요.');
					return;
				}
				
				if(!emailCheck.test($('#userEmail').val())){
					$('#emailmsg').text('이메일이 형식에 맞지 않습니다.');
					return;
				}
				
				
				console.log('db에 전달 시작');
				let phoneNum=$('#userPhone1').val()+'-'+$('#userPhone2').val()+'-'+$('#userPhone3').val();
				let user={
						userId:$('#userId').val().trim(),
						userPw:$('#userPw').val(),
						userName:updateUserName,
						userPhone:phoneNum,
						userEmail:$('#userEmail').val(),
				}; 
				console.log(user);

				
				$.ajax({
					url:'joinProc', 
					data:user,
					success: () =>{ 
						swal({
							title:'가입성공',
							text:'',
							type:'success', 
						},
						function(isConfirm){
							$('#goLogin').submit();
						});
					},
				});
			}else{
				swal('개인정보처리 방침에\n동의해 주세요.');
				return;
			}
		});
	}
</script>

<style>
/* 초기화 */
html {
	overflow-y: scroll;
	font: 'nanum' !important;
}

body {
	margin: 0 auto;
	padding: 0;
	min-width: 1000px;
	max-width: 100%;
	font-family: "맑은 고딕";
}

html, h1, h2, h3, h4, h5, h6, form, fieldset, img {
	margin: 0;
	padding: 0;
	border: 0
}

h1, h2, h3, h4, h5, h6 {
	font-size: 1em;
	font-weight: normal;
}

article, aside, details, figcaption, figure, footer, header, hgroup,
	menu, nav, section {
	display: block
}

ul {
	list-style: none;
	margin: 0;
	padding: 0
}

a {
	text-decoration: none;
	color: inherit;
	display: block
}

a:hover {
	text-decoration: none;
}

/* container */
.container {
	width: 100%;
}

/* header */
.header {
	width: 100%;
	height: 380px;
	background-color: #ccc;
	background-image: url('loginImg.jpg');
	background-position: center;
}

.header .head {
	width: 80%;
	margin: 0 auto;
}

.header .headerBackground {
	background: rgba(0, 0, 0, .4);
	height: 380px;
}

.header .head .headA {
	padding-top: 20px;
	overflow: hidden;
}

.header .head .headA ul {
	float: right;
	color: #fff;
}

.header .head .headA ul li {
	text-align: right;
	font-size: 12px;
}

.header .head .headB {
	overflow: hidden;
}

.header .head .headB .logo a {
	padding: 20px 20px;
	border: 1px solid #fff;
	float: left;
	color: #fff;
}

.header .head .headB ul {
	width: 463px;
	float: right;
	margin-top: 25px;
	color: #fff;
	font-weight: bold;
}

.header .head .headB ul li:hover {
	color: #f5bf25;
	transition-duration: .5s;
}

.header .head .headB ul li {
	float: left;
	margin-left: 10%;
}

.subHr {
	width: 45px;
	margin-top: 140px;
	border: 1px solid #f5bf25;
}

.contHr {
	width: 45px;
	margin-top: 20px;
	margin-bottom: 60px;
	border: 1px solid #f5bf25;
}

.header .head .subTitle {
	text-align: center;
	font-size: 42px;
	color: #fff;
	margin-top: 20px;
}

/* 회원가입 */
.member>div:nth-child(1) {
	text-align: center;
}

.member>div:nth-child(1) span {
	font-weight: bold;
}

.member {
	width: 80%;
	font-size: 14px;
	margin: 0 auto;
}

.member table input {
	border: 1px solid #999;
}

.member table {
	border: 1px solid #f5bf25;
	border-collapse: collapse;
	text-align: left;
	width: 80%;
	font-size: 14px;
	margin: 0 auto;
}

.member table .text input {
	height: 30px;
	width: 45%;
}

.member table .number input {
	height: 30px;
	width: 10%;
}

.member form {
	margin: 100px 0;
	text-align: center;
}

.member form .contTitle {
	font-size: 28px;
	font-weight: bold;
}

.member form .button {
	overflow: hidden;
	width: 100%;
	text-align: center;
}

.member form .button button {
	height: 40px;
	margin-top: 60px;
}

.member form .button .ok {
	background-color: #f5bf25;
	border: 1px solid #f5bf25;
	width: 70px;
	color: #fff;
	margin-left: 5px;
}

.member form .button .no {
	width: 70px;
	margin-left: 5px;
}

.member table tr {
	height: 30px;
}

.member th {
	border-left: 1px solid #fff;
	padding: 0 10px;
	border-bottom: 1px solid #ccc;
	height: 45px;
	background-color: #eee;
	color: #333;
}

.member td {
	border-right: 1px solid #fff;
	padding: 0 10px;
	border-bottom: 1px solid #ccc;
	height: 50px;
}

.member th span {
	color: red;
}

.member .text button {
	height: 33px;
	background-color: #666;
	border: 0px;
	color: #fff;
}

.member .text td span {
	font-size: 12px;
}

.agree {
	width: 80%;
	margin: 0 auto;
	margin-bottom: 30px;
}

.agree .textbox {
	overflow-y: scroll;
	height: 100px;
	border: 1px solid #ccc;
	padding: 15px;
	text-align: left;
}

.agree .text {
	text-align: right;
	margin-top: 10px;
}

.member_step1 {
	width: 780px;
	margin: 20px 0 0 60px;
}

.member_step1>div:nth-child(1) {
	text-align: center;
}

.member_step1 span {
	font-weight: bold;
}

.member_step1>div:nth-child(2) {
	font-size: 14px;
	margin-top: 70px;
}

.member_step1 .button button {
	width: 70px;
	height: 40px;
	background-color: #42a5be;
	border: 0px;
	color: #fff;
}

.member_step1 .button {
	text-align: right;
	margin-top: 40px;
}

.member_step1 form .text {
	text-align: right;
	margin-top: 10px;
}

/* footer */
footer {
	width: 100%;
	height: 95px;
	background-color: #333;
	margin-top: 50px;
	color: #666
}

footer .fot {
	width: 80%;
	margin: 0 auto;
	overflow: hidden;
}

footer .fot div {
	float: left;
}

footer .fot div:nth-child(1) {
	font-size: 18px;
	margin: 35px 0 0 0;
}

footer .fot div:nth-child(2) {
	margin: 24px 0 0 50px;
	font-size: 12px;
}
</style>
<script>
	
</script>
</head>
<body>
	<div class='container'>
		<div class='header'>
			<div class='headerBackground'>
				<div class='head'>
					<div class='headA'>
						<ul>
							<li><a href='#'>로그인</a></li>
						</ul>
					</div>
					<div class='headB'>
						<div class='logo'>
							<a href='#'>로고 이미지</a>
						</div>
						<ul>
							<li><a href='#'>보호소 소개</a></li>
							<li><a href='#'>무료분양</a></li>
							<li><a href='#'>분양후기</a></li>
							<li><a href='#'>후원하기</a></li>
						</ul>
					</div>
					<hr class='subHr'>
					<div class='subTitle'>회원가입</div>
				</div>
			</div>
		</div>

		<!-- 회원가입 -->
		<div class="content">
			<div class="member">
				<form action='login' id='goLogin'>
					<div class='contTitle'>회원가입</div>
					<hr class='contHr'>
					<div class='agree'>
						<div class="textbox">
							유기견 보호소에서는 기업/단체 및 개인의 정보 수집 및 이용 등 처리에 있어 아래의 사항을 관계법령에 따라 고지하고<br>
							안내해 드립니다.<br> <br> 1. 정보수집의 이용 목적 : 유기견 분양, 신고<br>
							2. 수집/이용 항목 : 이름, 전화번호, E-mail<br> 3. 보유 및 이용기간 : 상담 종료 후
							2년, 정보제공자의 삭제 요청 시 즉시
						</div>
						<div class="text">
							<input type="checkbox" id="agreecheck" /> 개인정보 수집 및 이용에 동의합니다.
						</div>
					</div>
					<table>
						<tr class="text">
							<th><span>*</span> 아이디</th>
							<td><font color='tomato'><p id='idmsg'></p> </font><input
								type="text" maxlength="12" id="userId" value='' /> <input
								type="button" value="중복확인"> <br> <span>8자리
									이상 12글자 이하의 영문, 숫자 각 최소 1개 이상(첫글자는 영문), 공백 불가</span></td>
						</tr>
						<tr class="text">
							<th><span>*</span> 암호</th>
							<td><font color='tomato'><p id='pwmsg'></p> </font><input
								type="password" maxlength="16" id="userPw" />&nbsp;&nbsp;&nbsp;<br>
								<span>8자리 이상 16글자 이하의 영문 대소문자, 숫자, 특수문자 각 최소 1개 이상, 공백 불가</span></td>
						</tr>
						<tr class="text">
							<th><span>*</span> 이름</th>
							<td><font color='tomato'><p id='namemsg'></p> </font><input
								type="text" id="userName" maxlength="10" value='' /></td>
						</tr>
						<tr class="number">
							<th><span>*</span> 전화번호</th>
							<td><font color='tomato'><p id='phonemsg'></p> </font><input
								type="number" id="userPhone1" min="0" maxlength="3"
								oninput="maxLengthCheck(this)" /> - <input type="number"
								id="userPhone2" min="0" maxlength="4"
								oninput="maxLengthCheck(this)" /> - <input type="number"
								id="userPhone3" min="0" maxlength="4"
								oninput="maxLengthCheck(this)" /></td>
						</tr>
						<tr class="text">
							<th><span>*</span> E-mail</th>
							<td><font color='tomato'><p id='emailmsg'></p> </font><input
								type="email" id="userEmail" maxlength="40" /></td>
						</tr>
					</table>
					<div class="button">
						<input type="button" class="ok" id="join" value="확인"> <input
							type="submit" class="no" value="취소">
					</div>
				</form>
			</div>
		</div>
		<!-- 푸터 -->
		<footer>
			<div class="fot">
				<div>로고 이미지</div>
				<div>
					유기견 보호소 &nbsp;&nbsp;서울 마포구 월드컵북로 21 2층 풍성빌딩 &nbsp;&nbsp;대표이사 : 김기범<br>
					사업자등록번호 : 102-80-11690 &nbsp;&nbsp;대표전화 : 1544-1000 (발신자 부담전화)<br>
					COPYRIGHT© SPACE BOOK CENTER ALL RIGHTS RESERVED.
				</div>
				<div>
		</footer>
	</div>
</body>
</html>
