<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>Dog Register</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<script src='http://code.jquery.com/jquery-3.4.1.min.js'></script>
<script src="//cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>
<script src="${path}/ckeditor/ckeditor.js"></script>
<script src="../../res/adminNavSub.js"></script>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	background: #f3f5f9;
}

#leftNav {
	display: flex;
	position: relative;
}

#leftNav #sidebar {
	position: fixed;
	width: 200px;
	height: 100%;
	background: #4b4276;
	padding: 20px 0;
}

#leftNav #sidebar h2 {
	color: #fff;
	text-align: center;
	margin-bottom: 30px;
}

#leftNav #sidebar ul li {
	padding: 15px;
	list-style: none;
	border-bottom: 1px solid rgba(0,0,0,0.05);
	border-top: 1px solid rgba(225,225,225,0.05);
}

#leftNav #sidebar ul li a {
	color: #bdb8d7;
	display: black;
}

#leftNav #sidebar ul li a span {
	width: 25px;
}

#leftNav #sidebar ul li:hover {
	background: #594f8d;
}

#leftNav #sidebar ul li:hover a {
	color: #fff;
	text-decoration: none;
}

#leftNav .main_content {
	width: 100%;
	margin-left: 200px;
}

#leftNav .main_content .header {
	padding: 11px;
	background: #fff;
	color: #717171;
	border-bottom: 1px solid #e0e4e8;
}

#leftNav .main_content .header .border{
	font-size: 19px;
}

#leftNav .main_content .header #topButton {
	text-decoration: none;
	margin-top: 4px;
	margin-right: 20px;
	float: right;
}

#leftNav .main_content .header #topButton a{
	text-decoration: none;
}

#leftNav .main_content .info {
	margin: 50px;
	color: #717171;
}

.item{
	width: 640px;
	height: 300px;
	margin: 0 120px 50px 30px;;
	float: left;
}

.tdWidth {
	width: 1200px;
}
.th{ 
 	background-color:#EFEFEF; 
	width: 150px; 
	text-align: center; 
} 

textarea{
	width: 1550px;
	height: 200px;
	resize: none;
	padding: 20px;
}
</style>
</head>
<body>
<div class='wrapper' id='leftNav'>
	<div class='sidebar' id='sidebar'>
		
	</div>
	<div class='main_content'>
		<div class='header'>
			<strong>&nbsp;&nbsp;ADMINSTRATOR</strong>
			<div id='topButton'>
				<a href='../logo/01.html'>로고관리</a>&nbsp;|&nbsp;
				<a href='../banner/01.html'>배너관리</a>&nbsp;|&nbsp; 
				<a href='../../main.html'>홈페이지 돌아가기</a>&nbsp;|&nbsp; 
				<a href='../../main.html'>로그아웃</a>
			</div>
		</div>
		<div class='info'> <!-- info 밑으로 화면 구성하면되고 글리피콘 사용할때 id 만들어서 사용해주세요. 안그러면 네비게이션바 글리피콘도 움직여요. -->
			<div class='content'>
				<h3><span class='glyphicon glyphicon-heart'></span><strong> 유기견 관리 > 등록</strong></h3>
				<br><br>
				
				<form>
					<table class='table'>
						<tr>
							<th class='th'>제목</th>
							<td colspan='3'><input type='text' style='width:400px;'/></td>
						</tr>
						<tr>
							<th class='th'>이름</th>
							<td class='tdWidth'><input type='text'/></td>
							<th class='th'>품종</th>
							<td class='tdWidth'><input type='text'/></td>
						</tr>
						<tr>
							<th class='th'>체중</th>
							<td><input type='number' style='width:70px;'/> (kg)</td>
							<th class='th'>나이</th>
							<td><input type='number'/></td>
						</tr> 
						<tr>
							<th class='th'>성별</th>
							<td colspan='3'>
								<input type='radio' name='gender'/> 수컷 &nbsp;&nbsp;
								<input type='radio' name='gender'/> 암컷
							</td>
						</tr>
						<tr>
							<th class='th'>내용</th>
							<td colspan='3'>
							<textarea id='description'></textarea>
							<script>
								CKEDITOR.replace("description", {
									removePlugins: 'image'
								});
							</script>								
							</td>
						</tr>
						<tr>
							<th class='th'>이미지</th>
							<td colspan='3'><input type='file'/></td>
						</tr>
					</table>
					
					<div class='button' style='text-align:right;'>
						<button type='button' class='btn btn-primary' id='register' onClick="location.href='01.html'">등록</button>
						<button type='button' class='btn btn-default' onClick="location.href='01.html'">취소</button>
					</div>
				</form>
			</div>	
		</div>
	</div>
</div>
</body>
</html>