<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>ADMIN PAGE</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel='stylesheet'
	href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>
<link rel='stylesheet'
	href='http://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css' />
<script
	src='https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js'></script>
<script src="https://code.jquery.com/jquery-1.10.1.js"
	integrity="sha256-663tSdtipgBgyqJXfypOwf9ocmvECGG8Zdl3q+tk+n0="
	crossorigin="anonymous"></script>
<script src="../res/adminNavSub.js"></script>
<script>
function contributionSearch(){
	$('#search').click(() => {
		if($('#searchContent').val().trim()) {
		}	
	});
}
function logoutSe(){
	$('#logoutSe').click(()=>{
		sessionStorage.removeItem('userId');
	});
}

$(()=>{
	contributionSearch();
	logoutSe();
});
</script>
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
	border-bottom: 1px solid rgba(0, 0, 0, 0.05);
	border-top: 1px solid rgba(225, 225, 225, 0.05);
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

#leftNav .main_content .header .border {
	font-size: 19px;
}

#leftNav .main_content .header #topButton {
	text-decoration: none;
	margin-top: 4px;
	margin-right: 20px;
	float: right;
}

#leftNav .main_content .header #topButton a {
	text-decoration: none;
}

#leftNav .main_content .info {
	margin: 50px;
	color: #717171;
}

.item {
	width: 640px;
	height: 160px;
	margin: 0 120px 0 10px;
}

#content {
   float: left;
   margin-left: 10px;
   width: 400px;
   display: inline;
}

#search {
   background: #4b4276;
}

#spanSearch {
   color: #fff;
}

#moneyItem {
	margin-top: -15px;
	margin-left: 450px;
}

#totalPrice, #todayPrice {
	width: 310px;
	height: 170px;
	border: solid #4873AE;
	border-width: 8px 0 0 0;
	border-radius: 3%;
	background: #fff;
	text-align: center;
	float: left;
	margin-top: 25px;
}

#totalPrice {
	margin-right: 20px;
}

.totalPrice, .todayPrice {
	font-size: 20px;
	margin-top: 40px;
}

.num {
	margin: 0 0 10px 0;
	font-size: 30px;
	font-weight: bold;
}

tr > th {
	background: #dbd9e3;
}

th, td {
	text-align: center;
	
}

th {
	color: #4b4276;
}

#pagination {
	display: block;
	text-align: center;
}
</style>
</head>
<body>
	<div class='wrapper' id='leftNav'>
		<div class='sidebar' id='sidebar'>
			<%@ include file="../common/nav.jsp"%>
		</div>
		<div class='main_content'>
			<div class='header'>
				<strong>&nbsp;&nbsp;ADMINSTRATOR</strong>
				<div id='topButton'>
					<a href='logo/logoRegist'>로고관리</a>&nbsp;|&nbsp;
					<a href='banner/bannerRegist'>배너관리</a>&nbsp;|&nbsp; 
					<a href='../../dog'>홈페이지 돌아가기</a>&nbsp;|&nbsp; 
					<a href='user/logout'>로그아웃</a>
				</div>
			</div>
			
			<div class='info'>
				<div class='content'>
	            	<h3>
	            		<span class='glyphicon glyphicon-bank'></span>
	            		<strong>  <span class='glyphicon glyphicon-piggy-bank'></span> 후원금관리</strong>
	            	</h3>
	           		<hr style='border: 1px solid #a0a0a0;'>
	           		
	           		<div class='item' id='moneyItem'>
						<div class='money'>
							<div class='price' id='totalPrice'>
								<p class='totalPrice'>총 누적 후원금액</p>
								<div id="count1" class="num"></div>
							</div>
							<div class='price' id='todayPrice'>
								<p class='todayPrice'>이번달 후원금액</p>
								<div id="count2" class="num"></div>
							</div>
						</div>
					</div>
	            	<br><br><br><br>
		            <form>
		               <div>
		                  <button class='form-control' style='width: 100px; height: 35px; float:left;'>
		                    	 후원자 명
		                  </button>
		                  <div class='form-group' id='content'>
		                     <input type='text' id='searchContent' class='form-control' placeholder='검색어를 입력해주세요.'/>
		                  </div>               
		                  <div class='form-group'>
		                     <button type='button' class='btn btn-default' id='search'>
		                        <span id='spanSearch'>검색</span>
		                     </button>
		                  </div>
		               </div>
		               <br>
		            </form>  
					
					<table class="table table-hover">
						<tr>
							<th>후원번호</th>
							<th>후원자명</th>
							<th>후원날짜</th>
							<th>후원금액</th>
							<th>전화번호</th>
						</tr>
						<tr>
							<td>3</td>
							<td>김기범</td>
							<td>2020-06-12</td>
							<td>100,000</td>
							<td>010-8898-1118</td>
						</tr>
						<tr>
							<td>2</td>
							<td>이창연</td>
							<td>2020-05-12</td>
							<td>500,000</td>
							<td>010-1111-2222</td>
						</tr>
						<tr>
							<td>1</td>
							<td>김아림</td>
							<td>2020-01-12</td>
							<td>110,000</td>
							<td>010-2222-3333</td>
						</tr>
					</table>
					
					<div id="pagination">
						<ul class="pagination">
						    <li><a href="#">&laquo;</a></li>
						    <li><a href="#">1</a></li>
						    <li><a href="#">2</a></li>
						    <li><a href="#">3</a></li>
						    <li><a href="#">4</a></li>
						    <li><a href="#">5</a></li>
						    <li><a href="#">&raquo;</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script>
	Number.prototype.cf = function() {
		var a = this.toString().split(".");
		a[0] = a[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		return a.join(".");
	}
	String.prototype.cf = function() {
		if (isNaN(this)) {
			return this;
		}
		return Number(this).cf();
	}

	function animateCount1(num) {
		var $el = $("#count1");
		$({
			val : 0
		}).animate({
			val : num
		}, {
			duration : 2000,
			step : function() {
				$el.text(Math.floor(this.val).cf() + "원");
			},
			complete : function() {
				$el.text(Math.floor(this.val).cf() + "원");
			}
		});
	}
	function animateCount2(num) {
		var $el = $("#count2");
		$({
			val : 0
		}).animate({
			val : num
		}, {
			duration : 3000,
			step : function() {
				$el.text(Math.floor(this.val).cf() + "원");
			},
			complete : function() {
				$el.text(Math.floor(this.val).cf() + "원");
			}
		});
	}

	$(()=>{
		animateCount1(143252300);
		animateCount2(454000);
	});
</script>
</html>