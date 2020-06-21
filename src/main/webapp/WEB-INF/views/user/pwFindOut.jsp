<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
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
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<style>
	/* header */
	.header{width:100%; height:380px; background-color:#ccc; background-image:url('../img/loginImg.jpg'); background-position: center;}
	.header .headerBackground{background:rgba(0, 0, 0, .4); height:380px;}

	.subHr{width:45px; margin-top:140px; border:1px solid #f5bf25;}
	.header .subTitle{text-align:center; font-size:42px; color:#fff; margin-top:20px;}
	.contHr{width:45px; margin-top:20px; margin-bottom:60px; border:1px solid #f5bf25;}

	/* 회원가입 */
	.pwFind{width:80%;font-size:14px; margin:0 auto;}
	.pwFind table input{border:1px solid #999;}
	.pwFind table{border:1px solid #f5bf25;border-collapse:collapse; text-align:left; width:80%; font-size:14px; margin:0 auto;}
	.pwFind table .text input{height:30px; width:45%;}
	.pwFind form{margin:100px 0; text-align:center;}
	.pwFind form .contTitle{font-size:32px; font-weight:bold;}
	.pwFind form .button{overflow:hidden; width:100%; text-align:center;}
	.pwFind form .button button{height:40px; margin-top:60px;}
	.pwFind form .button .ok{background-color:#f5bf25; border:1px solid #f5bf25; width:70px; color:#fff; margin-left:5px;}
	.pwFind form .button .no{width:70px; margin-left:5px; background-color:#fff; border:1px solid #999;}
	.pwFind table tr{height:30px;}
	.pwFind table tr{height:30px;}
	.pwFind th{border-left:1px solid #fff;padding:0 10px; border-bottom:1px solid #ccc; height:45px;background-color:#eee; color:#333;}
	.pwFind td{border-right:1px solid #fff;padding:0 10px; border-bottom:1px solid #ccc; height:50px;}
	.pwFind .textH{height:70px;}
	.pwFind th span{color:red;}
	.pwFind .text button{height:33px; background-color:#666; border:0px; color:#fff;}
	.pwFind .text td span{font-size:12px;}
	.p{width:80%; text-align:left; margin:0 auto; margin-bottom:10px;}
	
	/* 모바일 스타일 */
	@media screen and (max-width:768px){
		.subHr{margin-top:20%;}

		.header .subTitle{font-size:36px; margin-top:0; padding-bottom:5%;}
		.contHr{margin-top:5%; margin-bottom:10%;}
		.pwFind form .contTitle{font-size:28px;}

		.pwFind{width:100%;}
		.pwFind form{margin:10% 0;}
		.pwFind form .button button{margin-top:10%;}
		.pwFind form .contTitle{font-size:28px; font-weight:bold;}
		.pwFind table .text input{height:30px; width:60%;}
		.p{text-align:center;}
	}
</style>
<script>
function isCheckPw(){
	result = false;
	if($('#newPw').val())result = true;
	return result;
}

//새 비밀번호 입력하면  #errorPw에 나타난 문구 사라짐
function allWrite(){
	$('#newPw').keyup(()=>{
		$('#errorPw').text('');
	});
}

//비밀번호 변경
function changePw(){
	$('#ok').on('click',(e) =>{
		e.preventDefault();
		
		let userId = sessionStorage.getItem("userId");
		let pwCheck = /((?=.*[a-z])(?=.*[0-9])(?=.*[^a-zA-Z0-9가-힣]).{8,15})/;
		let newPw =  $('#newPw').val();
		let rePw = $('#rePw').val();
		
		if(isCheckPw()){
			if(!pwCheck.test($('#newPw').val())){
				$('#errorPw').text('암호가 조건에 맞지 않습니다');
				return;
			}else{
				$('#errorPw').text('');
			}
		}else $('#errorPw').text('비밀번호를 입력하세요');
		
		if(newPw == rePw){
			$('#errorPw2').text('');
			$.ajax({
				url : 'pwFindOutProc',
				method: 'post',
				data : {
						'userId': userId,	
						'userPw': newPw,
				},
				success: (result) =>{ 	
					swal({
						title: '비밀번호가 변경되었습니다',
						text: '',
						type: 'success',
					},
						function(isConfirm){
							if(isConfirm) location.href='login';
					})
				}
			})
		}else $('#errorPw2').text('비밀번호가 일치하지 않습니다');
	})
}


$(()=>{
	changePw();
	allWrite();
});
</script>
</head>
<body>
	<div class='container'>
		<div class='header'>
			<div class='headerBackground'>
					<header><%@ include file="../common/header.jsp"%>
				</header>
				<hr class='subHr'>
				<div class='subTitle'>비밀번호 찾기</div>
			</div>
		</div>
		
		<!-- 비밀번호 찾기 -->
			<div class="content">
				<div class="pwFind">
					<form action="#" method="post">
						<div class='contTitle'>비밀번호 찾기</div>
						<hr class='contHr'>
						
						<table>
							<div class='p'>비밀번호를 변경해 주세요.</div>
							<colgroup>
								<col width='25%'>
								<col width='75%'>
							</colgroup>
							<tr class="text textH">
								<th><span>*</span> 비밀번호</th>
								<td>
									<input type="password" id="newPw"/>&nbsp;<span id='errorPw' style='color:red;'></span><br>
									<span>8자리 이상의 영문, 숫자 가능</span>
								</td>
							</tr>
							<tr class="text">
								<th><span>*</span> 비밀번호 확인</th>
								<td><input type="password" id='rePw' />&nbsp; <span id='errorPw2' style='color:red;'></span></td>
							</tr>
						</table>
						<div class="button">
							<button class="ok" type="button" id="ok">확인</button>
							<button class="no" type="button" onClick="location.href='login'">취소</button>
						</div>
					</form>
				</div>
			</div>

		<!-- 푸터 -->
<footer><%@ include file="../common/footer.jsp"%>
		</footer>
	</div>
</body>
</html>