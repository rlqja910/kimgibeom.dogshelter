<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="ko">
<head>
<title>유기견 보호소</title>
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<link rel="stylesheet" type="text/css" href="fontium/css/fontium.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

<script>
	$(()=>{
		login();
	});
	
	function clearMsg(){
		$('#idCheckMsg').text('');
		$('#pwCheckMsg').text('');
	}
	
	function login(){
		$('#login_btn').click((e)=>{
			e.preventDefault();
			$.ajax({ 
				url:'loginProc',
				method:'post',
				data:{
					'userId':$('#userId').val(),
					'userPw':$('#userPw').val(),
				},
				success:(result)=>{  
					if($('#userId').val()===''&&$('#userPw').val()===''){
						return;
					}else if(result==1){
						console.log('로그인 성공');
						$('#loginf').submit();
					}else if(result==0){
						clearMsg();
						console.log('없는 아이디입니다.');
						$('#idCheckMsg').text('없는 아이디입니다');
						return;
					}else if(result==-1){
						clearMsg();
						console.log('암호가 틀렸습니다.');
						$('#pwCheckMsg').text('암호가 틀렸습니다');
						return;
					}
				},
			});
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

hr {
	width: 45px;
	margin-top: 140px;
	border: 1px solid #f5bf25;
}

.header .head .subTitle {
	text-align: center;
	font-size: 42px;
	color: #fff;
	margin-top: 20px;
}

/* 로그인 */
.login { 80%;
	margin: 0 auto;
	font-size: 14px;
	clear: both;
	margin-bottom: 140px;
	margin-top: 140px;
}

#login_box ul {
	list-style-type: none;
}

.login form {
	width: 450px;
	margin: 0 auto;
}

#input_button input {
	width: 450px;
	height: 50px;
	border: 1px solid #ccc;
}

#id_pass span {
	width: 20px;
}

#pass input {
	margin-top: -1px;
}

.login form p {
	font-size: 20px;
	font-weight: bold;
}

.login form a {
	padding: 14px 0;
	text-align: center;
	width: 450px;
	background: #fff;
	color: #666;
	margin-top: 20px;
	border: 1px solid #ccc;
}

.login form button {
	padding: 12px;
	width: 452px;
	height: 50px;
	background: #f5bf25;
	border: 0;
	color: #fff;
	margin-top: 20px;
	font-size: 16px;
}

.login .btns {
	color: #959595;
	font-size: 14px;
	width: 450px;
}

.login .btns input, label {
	margin-top: 20px;
}

#autoLogin {
	margin: 0;
	line-height: 16px;
}

.logintext {
	color: #959595;
	text-align: center;
	margin-top: 10px;
}

.newUser:hover a {
	background-color: #333;
	color: #fff;
	transition-duration: .5s;
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
					<hr>
					<div class='subTitle'>로그인</div>
				</div>
			</div>
		</div>

		<!-- 로그인 -->
		<div class="content">
			<div class="login">
				<form name="loginform" action='../' id='loginf' method='post'>
					<div id="login_box">
						<font color='tomato'><p id='idCheckMsg'></p> </font><font
							color='tomato'><p id='pwCheckMsg'></p> </font>
						<ul id="input_button">
							<li id="id_pass"><input name="id" type="text" id='userId'
								maxlength='12' placeholder=" 아이디" required>${userId}</li>
							<li id="pass"><input name="pwd" type="password" id='userPw'
								placeholder=" 암호" maxlength='16' required></li>
						</ul>

					</div>
					<input type='submit' id="login_btn" value='로그인'>
					<div class="btns">
						<input type="checkbox" name="" /> <label>아이디 저장</label>
					</div>
					<div class='newUser'>
						<a href='join'>회원가입</a>
					</div>
					<div class='logintext'>
						<label>*비밀번호 분실 시 관리자한테 문의해 주세요.</label>
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