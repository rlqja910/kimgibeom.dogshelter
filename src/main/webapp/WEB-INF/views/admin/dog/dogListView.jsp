<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>Dog Manage</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<script src='http://code.jquery.com/jquery-3.4.1.min.js'></script>
<script src="../res/adminNavSub.js"></script>
<script>
function dogDel() {
	$('#delete').click(() => {
		if($('input:checkbox').is(':checked')) {
		   swal({
		      title: '',
		      text: '유기견 정보를 정말 삭제하시겠습니까?',
		      type: 'warning',
		      showCancelButton: true,
		      cancelButtonText: '아니오',
		      confirmButtonText: '예',
		      closeOnConfirm: false,
		      closeOnCancel: true
		   },
		   function(isConfirm){
		      if(isConfirm) swal('','유기견 정보가 삭제되었습니다.','success');
		      else('취소','','error');
		   });	
		}
	});
}

function reportSearch(){
	$('#search').click(() => {
		if($('#searchContent').val().trim()) {
			
		}	
	});
}

$(dogDel);
$(reportSearch);
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
            <h3><span class='glyphicon glyphicon-heart'></span><strong> 유기견 관리</strong></h3>
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
               <button type='button' class='btn btn-default'>입양 전</button>&nbsp;
               <button type='button' class='btn btn-default'>입양 후</button>
               
               <br><br>
               <div class='totalReview'>
                  <div class='imgbox'>
                      <a href='03.html'><div class='img'>
                        <div><input type='checkbox' id='chk'/></div>
                        유기견 이미지
                     </div>
                     <p>[분양 글 제목]</p></a>
                  </div>
                  
                  <div class='imgbox'>
                     <a href='03.html'><div class='img'>
                        <div><input type='checkbox' id='chk'/></div>
                        유기견 이미지
                     </div>
                     <p>비글 오렌지 책임분양</p></a>
                  </div>
                  
                  <div class='imgbox'>
                   <a href='03.html'>
                     <div class='img'>
                        <div><input type='checkbox' id='chk'/></div>
                        유기견 이미지
                     </div>
                     <p>2kg 미니핀,강아지 분양합니다</p></a>
                  </div>
                  
                  <div class='imgbox'>
                      <a href='03.html'><div class='img'>
                        <div><input type='checkbox' id='chk'/></div>
                        유기견 이미지
                     </div>
                     <p>뽀송뽀송 버블이강아지 치치 분양합니다</p></a>
                  </div>
                  
                  <div class='imgbox'>
                      <a href='03.html'><div class='img'>
                        <div><input type='checkbox' id='chk'/></div>
                        유기견 이미지
                     </div>
                     <p>비숑 프리제 에릭 강아지 분양합니다</p></a>
                  </div>
                  
                  <div class='imgbox'>
                      <a href='03.html'><div class='img'>
                        <div><input type='checkbox' id='chk'/></div>
                        유기견 이미지
                     </div>
                     <p>미친귀여움 웰시코기 뿅이 강아지 분양합니다</p></a>
                  </div>
                  
                  <div class='imgbox'>
                      <a href='03.html'><div class='img'>
                        <div><input type='checkbox' id='chk'/></div>
                        유기견 이미지
                     </div>
                     <p>너무귀여워시바!강산이 강아지 분양합니다</p></a>
                  </div>
                  
                  <div class='imgbox'>
                      <a href='03.html'><div class='img'>
                        <div><input type='checkbox' id='chk'/></div>
                        유기견 이미지
                     </div>
                     <p>슈나우져,가람아 강아지 분양합니다</p></a>
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