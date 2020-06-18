<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>Dog Manage</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>
<link rel='stylesheet' href='http://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css'/>
<script src='https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js'></script>
<script src='http://code.jquery.com/jquery-3.4.1.min.js'></script>
<script>
function reviewDel(){
	$('#delete').click(() => {
		if($('input:checkbox').is(':checked')) {
			swal({
				title: '후기 삭제',
				text: '정말 후기를 삭제하시겠습니까?',
				type: 'warning',
				showCancelButton: true,
				confirmButtonText: '확인',
				cancelButtonText: '취소',
				closeOnConfirm: false
			},
			function(isConfirm) {
				if(isConfirm) 
					swal({
						title: '',
						text: '후기가 삭제되었습니다.',
						type: 'success',
						confirmButtonText: '확인'
					});	
			});
		} else {
			swal({
				title: '',
				text: '항목을 선택하세요.',
				type: 'warning',
				confirmButtonText: '확인',
				closeOnConfirm: false
			})			
		}	
	});
}

function reviewSearch(){
	$('#search').click(() => {
		if($('#searchContent').val().trim()) {
			
		}else {
			swal({
				title: '',
				text: '검색할 내용을 입력해주세요.',
				type: 'warning',
				confirmButtonText: '확인',
				closeOnConfirm: false
			})			
		}	
	});
}

$(reviewDel);
$(reviewSearch);
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

/*------- 검색창 테두리-------- */
#inputBackground{
   height: 50px;
   padding: 7px;
   margin-bottom: 30px;
}

/*------- 이미지 체크박스-------- */
#chk{
   border: 2px solid black;
   width: 25px;
   height: 25px;
   position: relative;
   top: -45px;
   left: -165px;
}

/*------- 모든 이미지후기-------- */
.totalReview{
   display: flex;
   flex-flow : wrap;
   margin-left: 0;
}

/*------- imgbox(이미지+제목)-------- */
.imgbox{
   margin: 0 20px 20px 0;
   text-align: center;
}

.img{
   border: 1px solid black;
   width: 355px;
   height: 189px;
   text-align: center;
   padding-top: 40px;
   margin-bottom: 5px;
   background-color: white;
   margin-right: 10px;
}

.button{
   text-align: right;
   margin-right: 100px;
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

#pagination {
	display: block;
	text-align: center;
}
</style>
</head>
<body>
<div class='wrapper' id='leftNav'>
   <div class='sidebar' id='sidebar'>
      <h2><b>DOG SHELTER</b></h2>
      <ul>
         <li><a href='../main.html'> <span class='glyphicon glyphicon-home'></span>메인</a></li>
			<li><a href='../user/01.html'> <span class='glyphicon glyphicon-user'></span>회원관리</a></li>
			<li><a href='../dog/01.html'> <span class='glyphicon glyphicon-heart'></span>유기견관리</a></li>
			<li><a href='../adopt/01.html'> <span class='glyphicon glyphicon-calendar'></span>입양관리</a></li>
			<li><a href='01.html'> <span class='glyphicon glyphicon-list'></span>후기관리</a></li>
			<li><a href='../report/01.html'> <span class='glyphicon glyphicon-bullhorn'></span>신고관리</a></li>
			<li><a href='../donation/01.html'> <span class='glyphicon glyphicon-piggy-bank'></span>후원금 관리</a></li>
      </ul>
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
      <div class='info'>
         <div class='content'>
            <h3><span class='glyphicon glyphicon-list'></span><strong> 후기관리</strong></h3>
            <hr style='border: 1px solid #a0a0a0;'>
            
            <form>
               <div>
                  <button class='form-control' style='width: 100px; height: 35px; float:left;'>
                    	 제목
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
               
               <p>총 10마리</p>
               <div class='totalReview'>
                  <div class='imgbox'>
                     <a href='03.html'><div class='img'>
                        <div><input type='checkbox' id='chk'/></div>
                        유기견 이미지
                     </div>
                     <p>[입양 후기 글 제목]</p></a>
                  </div>
                  
                  <div class='imgbox'>
                     <a href='03.html'><div class='img'>
                        <div><input type='checkbox' id='chk'/></div>
                        유기견 이미지
                     </div>
                     <p>겸댕이 슛돌이 3남매 동시입양</p></a>
                  </div>
                  
                  <div class='imgbox'>
                     <a href='03.html'><div class='img'>
                        <div><input type='checkbox' id='chk'/></div>
                        유기견 이미지
                     </div>
                     <p>2kg 미니핀,석핀,성수동으로</p></a>
                  </div>
                  
                  <div class='imgbox'>
                     <a href='03.html'><div class='img'>
                        <div><input type='checkbox' id='chk'/></div>
                        유기견 이미지
                     </div>
                     <p>뽀송뽀송 버블이 안녕!!</p></a>
                  </div>
                  
                  <div class='imgbox'>
                     <a href='03.html'><div class='img'>
                        <div><input type='checkbox' id='chk'/></div>
                        유기견 이미지
                     </div>
                     <p>비숑 프리제 에릭 부산행!!</p></a>
                  </div>
                  
                  <div class='imgbox'>
                     <a href='03.html'><div class='img'>
                        <div><input type='checkbox' id='chk'/></div>
                        유기견 이미지
                     </div>
                     <p>미친귀여움 웰시코기 뿅이</p></a>
                  </div>
                  
                  <div class='imgbox'>
                     <a href='03.html'><div class='img'>
                        <div><input type='checkbox' id='chk'/></div>
                        유기견 이미지
                     </div>
                     <p>너무귀여워시바!강산이!!</p></a>
                  </div>
                  
                  <div class='imgbox'>
                     <a href='03.html'><div class='img'>
                        <div><input type='checkbox' id='chk'/></div>
                        유기견 이미지
                     </div>
                     <p>센터1짱!슈나우져,가람아 빠이!</p></a>
                  </div>
               </div>
               
               <div class='button'>
                  <button type='button' class='btn btn-primary' onClick="location.href='02.html'">등록</button>
                  <button type='button' class='btn btn-warning' id='delete'>삭제</button>
               </div>
            </form>  
            <br> 
            
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
</html>