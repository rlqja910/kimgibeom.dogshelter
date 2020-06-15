<%@ page language='java' contentType='text/html; charset=UTF-8'
	pageEncoding='UTF-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>

<script src='http://code.jquery.com/jquery-3.4.1.min.js'></script>

<script>

$(()=>{
	regist();
	modify(); 
	withdraw();   
	listview(); 
});

function view(){ 
	$.ajax({ 
		url:'list', 
		success: (result)=>{
			if(result.length==0){
				$('#tbody').empty();
				$('#tbody').append('<tr><td colspan=4 align="center">사용자가 없습니다</td></tr>');
			}else{
				$('#tbody').empty();
				for(let i=0;i<result.length;i++){
					$('#tbody').append('<tr><td><input type=radio name=box value='+result[i].userNum+' /></td><td>'+result[i].userNum+'</td><td>'+result[i].userName
							+'</td><td>'+result[i].regDate+'</td></tr>');
				}
			}
		},
	});
}

function listview() {
	$('#list').click(()=>{
		view();
	});
}

function regist() {
	$('#regist').click(()=>{
		 
		if($('#put').val().trim()){
			$.ajax({
				url:'add', 
				data: { 
					"userName":$('#put').val()
					}, 
				success: ()=>{ 
					swal('가입완료','성공','success');
					view();
					$('#put').val('');
				}
			});
		}
		else{
			swal('가입실패','사용자 이름을 입력하세요','error');
		}
	});
}

function modify() {
	$('#modify').click(()=>{
		let userNum=$(':input:radio:checked').val();
		if(userNum && !($('input').val().trim()=='')){
			$.ajax({ 
				url: 'modify',  
				data:{
					"userName":$('#put').val(),
					"userNum":$(':input:radio:checked').val(), 
				}, 
				success: ()=>{ 
					swal('수정완료','성공','success');
					view();
					$('#put').val('');
				},
			});
		}else{
			if(userNum){
				swal('수정실패','사용자 이름을 입력하세요','error');
			}
			else{
				swal('수정실패','수정할 사용자를 선택하세요','error');
			}
		}
	});
}

function withdraw() {
	$('#withdraw').click(()=>{ 
		let userNum=$(':input:radio:checked').val();
		if(userNum){
			$.ajax({ 
				url: 'withdraw',  
				data:{
					"userNum":$(':input:radio:checked').val(),
				}, 
				success: ()=>{ 
					swal('탈퇴완료','성공','success');
					view();
				},
			});
		}
		else{
			swal('탈퇴실패','선택한 사용자가 없습니다.','error');
		}
	});
}
</script>

<style>
body {
	background-color: #faf4ee;
}

hr {
	border-top: 1px solid #e3c9b5;
}

table {
	border-collapse: collapse;
}

td {
	width: 100px;
	height: 30px;
}

.inputText {
	width: 600px;
	height: 30px;
}
</style>

</head>
<body>
	<div class='container' id='arrDate'>
		<hr>
		<br> <br>
		<h2 class='form control' align='center'>User Management Service</h2>
		<hr>
		<input type='text' id='put' placeholder="사용자 이름을 입력하세요"
			class=inputText /><br> <br>
		<div>
			<button class='btn btn-primary input-lg col-md-3' id='list'>
				회원목록</button>
			<button class='btn btn-primary input-lg col-md-3' id='regist'>
				<span class='glyphicon glyphicon-plus'></span> 회원등록
			</button>
			<button class='btn btn-warning input-lg col-md-3' id='modify'>
				<span class='glyphicon glyphicon-pencil'></span> 회원수정
			</button>
			<button class='btn btn-danger input-lg col-md-3' id='withdraw'>
				<span class='glyphicon glyphicon-trash'></span> 회원탈퇴
			</button>
			<br> <br>
		</div>
		<br> <br>
		<form>
			<table class='table table-hover' id='viewTable'>
				<thead>
					<tr>
						<th>선택</th>
						<th>User Number</th>
						<th>User Name</th>
						<th>Registration Date</th>
					</tr>
				</thead>
				<tbody id='tbody'>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>