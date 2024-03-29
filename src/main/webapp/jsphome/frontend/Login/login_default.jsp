<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인</title>

	<!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	
	<!-- 부가적인 테마 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

</head>
<body>

	<jsp:include page="/jsphome/frontend/top.jsp"/>	

	<div class="container">
		
		<div>
		
			<div style="margin:20px; width:500px;">
				<form name="LoginForm" method="POST">
					
					<input class="form-control input-sm" type="text" name="member_id" value="" style="margin-bottom:5px;width:200px;" placeholder="아이디"><br>
					<input class="form-control input-sm" type="password" name="member_pwd" value="" style="margin-bottom:5px;width:200px;" placeholder="비밀번호"><br>
					
					<button class="btn btn-default btn-sm" type="button" OnClick="send_login();" style="margin-bottom:5px;">로그인</button>
					<button class="btn btn-default btn-sm" type="button" OnClick="reset();" style="margin-bottom:5px;">취소</button><br><br>
					
					<a href="/Member/member_write.jsp">회원 가입</a>|
					아이디 찾기|
					비밀번호 찾기
					
				</form>
			</div>
		
		</div>
			

	</div>

	<jsp:include page="/jsphome/frontend/footer.jsp"/>	

	<!-- Jquery CDN -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
	
	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>        
	
</body>
</html>
<script language="javascript">

	//로그인 보내기
	function send_login(){
		var obj = document.LoginForm;
		
		if(obj.member_id.value==""){
			alert("아이디를 입력해 주세요.");
			obj.member_id.focus();
			return false;
		}
		
		if(obj.member_pwd.value==""){
			alert("비밀번호를 입력해 주세요.");
			obj.member_pwd.focus();
			return false;
		}
		
		obj.action="/login_ok.do";
		obj.submit();

	}
	
</script>
