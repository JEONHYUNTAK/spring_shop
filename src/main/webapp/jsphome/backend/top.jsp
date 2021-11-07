<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- Responsive navbar-->
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="/backend">메가샵 관리자</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
      	
      	<!-- 
        <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
        -->

        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">회원 관리 <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="/library_default.do">회원 리스트</a></li>
            <li><a href="/library_default.do">회원 등록하기</a></li>
          </ul>
        </li>
 
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">제품 관리 <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="/product_backend_default.do">제품 리스트</a></li>
            <li><a href="/product_backend_write.do">제품 등록하기</a></li>
          </ul>
        </li>
        
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">주문 관리 <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="/library_default.do">주문 리스트</a></li>
          </ul>
        </li>

        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">게시판 관리 <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="/notice_default.do">공지사항</a></li>
            <li><a href="/board_default.do">자유게시판</a></li>
            <li><a href="/kakao_cluster_default.do">자주하는 질문</a></li>
          </ul>
        </li>

      </ul>
      
      
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/" target="_blank">쇼핑몰</a></li>
        
        <%if((Integer)session.getAttribute("member_idx")!=null && (Integer)session.getAttribute("member_idx")!=0){ %>

	        <li><a href="/logout_ok.do">로그아웃</a></li>
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">회원정보 <span class="caret"></span></a>
	          <ul class="dropdown-menu" role="menu">
	            <li><a href="/member_view_default.do">회원정보</a></li>
	            <li><a href="/member_modify_default.do">회원정보 수정</a></li>
	            <li><a href="/pwd_modify_default.do">비밀번호수정</a></li>
	          </ul>
	        </li>

        <%}else{ %>
	        <li><a href="/login_default.do">로그인</a></li>
        <%} %>
        
        
      </ul>
      
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>        
    
    