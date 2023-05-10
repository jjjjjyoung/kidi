<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<c:set var="title" value="${meName}" />
<%
String title=String.valueOf(pageContext.getAttribute("title")) ;
String match = "[^\uAC00-\uD7A3xfe0-9a-zA-Z\\s]";
String uri = (String)request.getAttribute( "javax.servlet.forward.request_uri" );
String[] root=uri.split("/");
uri=root[root.length - 1];
if(title.equals("null") && uri.equals("home.do") ){
	title="한국섬진흥원에 오신것을 환영합니다";
}else if(uri.equals("EgovStplatCnfirmMber.do")){
	title="가입약관 - 회원가입";
}else if(uri.equals("egovLoginUsr.do")){
	title="로그인";
}else if(uri.equals("egovIdPasswordSearch.do")){
	title="아이디 비밀번호 찾기";
}else if(uri.equals("userPaidJoinAgree.do")){
	title="유료회원 - 마이페이지";
}else if(uri.equals("mypage.do")){
	title="회원정보수정 - 마이페이지";
}else if(uri.equals("userHistory.do")){
	title="신청내역 - 마이페이지";
}else if(uri.equals("userOut.do")){
	title="회원탈퇴 - 마이페이지";
}else if(uri.equals("EgovRlnmCnfirm.do")){
	title="정보입력 - 회원가입";
}else if(uri.equals("EgovMberSbscrb.do")){
	title="가입완료 - 정보입력 - 회원가입";
}else if(uri.equals("selectArticleDetail.do")){
	title="상세페이지 - 게시판";
}else if(uri.equals("userPaidJoinProc.do")){
	title="유료회원가입 - 유료회원 - 마이페이지 - 도립국악단";
}else if(uri.equals("searchId.do")){
	title="아이디를 발송하였습니다 - 아이디 비밀번호 찾기";
	
	
	
	
	
	
	
	
	
	
	
}else{
	title=title.replaceAll(match, "");
}
%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="initial-scale=1, width=device-width" />
     <title><%= title %></title>
    <meta name="description" content="한국섬진흥원에 오신것을 환영합니다::">
    <meta name="author" content="한국섬진흥원">
    <meta name="keywords" content="한국섬진흥원">
    <meta property="og:type" content="website">
    <meta property="og:title" content="한국섬진흥원">
    <meta property="og:description" content="한국섬진흥원에 오신것을 환영합니다::">
    <meta property="og:url" content="http://kidijsp.cafe24.com/noimage.jpg">
    <link rel="stylesheet" href="/css/egovframework/com/jpg/reset.css?ver=1.3">
    <link rel="stylesheet" href="/css/egovframework/com/jpg/common.css?ver=1.3">
    <link rel="stylesheet" href="/assets/lib/slick/slick.css?ver=1.3">
    <!-- <link rel="stylesheet" href="/assets/lib/slick/slick-theme.css?ver=1.3"> -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/com/main_portal.css' />"> 
    <script src="/js/egovframework/com/jpg/jquery-3.3.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jQuery-rwdImageMaps/1.6/jquery.rwdImageMaps.js"></script>
    <script src="/js/egovframework/com/jpg/sub.js?ver=1.3"></script>
    <script src="/js/egovframework/com/jpg/common.js?ver=1.3"></script>
    <script src="/assets/lib/slick/slick.js?ver=1.3"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	
	<!-- 구글 애널리틱스 연동 --!>
	<!-- Google tag (gtag.js) -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=G-ML0557ZXK1"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'G-ML0557ZXK1');
	</script>

</head>
<body>

<script>
		
	if (window.location.protocol != "https:") {
		//window.location.href = "https:" + window.location.href.substring(window.location.protocol.length);
	}

	if (document.location.protocol == 'http:') {
		//document.location.href = document.location.href.replace('http:', 'https:');
	}

</script>

<script>
function goRegiUsrheader() {
	 
	var useMemberManage = '${useMemberManage}';

	<%-- if(useMemberManage != 'true'){
		사용자 관리 컴포넌트가 설치되어 있지 않습니다. \n관리자에게 문의하세요.
		alert("<spring:message code="comUatUia.validate.userManagmentCheck" />");
		return false;
	} --%>

    document.headerloginForm.action="<c:url value='/uss/umt/EgovStplatCnfirmMber.do'/>";
    document.headerloginForm.submit();
    

}
</script>
<form name="headerloginForm" id="headerloginForm" action="/uat/uia/actionLogin.do" method="post" style="display:none">
	<input name="userSe" type="hidden" value='GNR'/>
</form>
<div id="wrap">

<!--헤더-->
    <div id="hd">
        <div class="tnb">
            <div class="inner">
                <ul class="hd_qnb">
                <c:choose>
                	<c:when test="${loginVO != null && loginVO.id != null }">
	                    <li><a tabindex = "1" href="<%=request.getContextPath() %>/mypage.do">MYPAGE</a></li>
	                    <li><a tabindex = "1" href="<%=request.getContextPath() %>/uat/uia/actionLogout.do">로그아웃</a></li>
                	</c:when>
                	<c:otherwise>
                   		<li><a tabindex = "1" href="/uat/uia/egovLoginUsr.do">로그인</a></li>
	                    <li><a tabindex = "1" href="javascript:goRegiUsrheader();">회원가입</a></li>
                   	</c:otherwise>
                </c:choose>
                	<li><a tabindex = "1" href="<%=request.getContextPath() %>/home.do?lang=en">ENGLISH</a></li>
				 <!--li><a tabindex = "1" href="<%=request.getContextPath() %>/home.do?lang=en">English</a></li-->
				
                </ul>
            </div>
        </div>
        <div class="hd_container pc">
            <div class="inner">
                <div class="logo">
                    <a href="/" title="KIDI 한국섬진흥원">
                        <!-- <img src="/images/egovframework/com/jpg/logo.png" alt="한국섬진흥원"/> -->
                    </a>
                </div>
                <button class="m_view hd_open"><i class="material-icons">list</i></button>
                <div class="hd_menu pc_view">
                    <ul class="hd_ul01">

                        <li class="hd_li01">
                            <a href="/contents.do?id=greetings" class="hd_a01">한국섬진흥원 소개</a>
                            <ul class="hd_ul02">
                                <li class="hd_li02">
                                    <a href="/contents.do?id=greetings" class="hd_a02">인사말</a>
                                </li>
                                <li class="hd_li02">
                                    <a href="/contents.do?id=history" class="hd_a02">연혁</a>
                                </li>
                                <li class="hd_li02">
                                    <a href="/contents.do?id=organization" class="hd_a02">조직도</a>
                                </li>
                                <li class="hd_li02">
                                    <a href="/contents.do?id=business" class="hd_a02">비전 및 목표</a>
                                </li>
                                <li class="hd_li02">
                                    <a href="/contents.do?id=location" class="hd_a02">찾아오시는 길</a>
                                </li>
                                <!-- <li class="hd_li02">
                                    <a href="http://wom.synology.me/kisland/" target="_blank" title="새창열기" class="hd_a02">홍보관</a>
                                </li> -->
                                <li class="hd_li02">
                                    <a href="/cop/bbs/selectYoutubeList.do?bbsId=BBSMSTR_000000000221" class="hd_a02">홍보관</a>
                                </li>
								<li class="hd_li02">
                                    <a href="/contents.do?id=CI" class="hd_a02">CI</a>
                                </li>
                            </ul>
                        </li>

                        <li class="hd_li01">
                            <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000201" class="hd_a01">발간자료</a>
                            <ul class="hd_ul02">
                                <li class="hd_li02">
                                    <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000201&ctype=a" class="hd_a02">연구보고서</a>
                                </li>
                                <li class="hd_li02">
                                    <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000201&ctype=b" class="hd_a02">종합간행물</a>
                                </li>
                                <li class="hd_li02">
                                    <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000201&ctype=c" class="hd_a02">정책브리프</a>
                                </li>
								<li class="hd_li02">
                                    <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000087" class="hd_a02">국내외 학술대회</a>
                                </li>
                            </ul>
                        </li>

                        <li class="hd_li01">
                            <a href="/contents.do?id=majorbussiness" class="hd_a01">사업안내</a>
                            <ul class="hd_ul02">
								<li class="hd_li02">
                                    <a href="/contents.do?id=majorbussiness" class="hd_a02">주요사업</a>
                                </li>
								<li class="hd_li02">
                                    <a href="/contents.do?id=researchproject" class="hd_a02">연구사업</a>
                                </li>
								<!--li class="hd_li02">
                                    <a href="/contents.do?id=cooperation" class="hd_a02">교류협력사업</a>
                                </li-->
                                <li class="hd_li02">
                                	<!-- <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000085" class="hd_a02">한섬원 아카데미</a> -->
                                    
                                    <!-- 한섬원 아카데미 내용페이지 -->
                                    <a href="/contents.do?id=academy" class="hd_a02">한섬원 아카데미</a>
                                </li>
                            </ul>
                        </li>

                        <li class="hd_li01">
                            <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000041" class="hd_a01">소식</a>
                            <ul class="hd_ul02">
                                <li class="hd_li02">
                                    <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000041" class="hd_a02">공지사항</a>
                                </li>
                                <li class="hd_li02">
                                    <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000091" class="hd_a02">보도자료</a>
                                </li>
                                <li class="hd_li02">
                                    <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000051" class="hd_a02">채용공고</a>
                                </li>
								<li class="hd_li02">
                                    <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000122" class="hd_a02">뉴스레터</a>
                                </li>
								<li class="hd_li02">
                                    <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000086" class="hd_a02">갤러리</a>
                                </li>
                            </ul>
                        </li>

						<li class="hd_li01">
                            <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000111" class="hd_a01">정보공개</a>
                            <ul class="hd_ul02">
								<li class="hd_li02">
                                    <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000111" class="hd_a02">경영공시</a>
                                </li>
								<li class="hd_li02">
                                    <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000092" class="hd_a02">입찰공고</a>
                                </li>
                                <!-- <li class="hd_li02">
                                    <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000095" class="hd_a02">공공데이터 개방</a>
                                </li> -->
                            </ul>
                        </li>
	
						<li class="hd_li01">
                            <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000094" class="hd_a01">국민소통</a>
                            <ul class="hd_ul02">
								<li class="hd_li02">
                                    <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000094" class="hd_a02">과제제안</a>
                                </li>
                                <li class="hd_li02">
                                    <a href="/contents.do?id=faq" class="hd_a02">자주하는 질문</a>
                                </li>
                                <li class="hd_li02">
                                    <a href="/contents.do?id=customercharter" class="hd_a02">고객헌장</a>
                                </li>
                            </ul>
                        </li>
		
						<li class="hd_li01">
                            <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000191" class="hd_a01">한국의 섬 순례길</a>
                            <ul class="hd_ul02">
								<li class="hd_li02">
                                    <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000191" class="hd_a02">한국의 섬 순례길</a>
                                </li>
                            </ul>
                        </li>
                        
                    </ul>
                </div>
                <div class="hd_menu m_view">
                	<!-- <button class="m_hd_close"><i class="material-icons">close</i></button> -->
                	<div class="m_tnb">
                		<img src="/images/egovframework/com/jpg/logo.png" alt="KIDI 한국섬진흥원"/>
                		<ul>
                			<li><a href="">로그인</a></li>
                		</ul>
                	</div>
                    <ul class="hd_ul01">

                        <li class="hd_li01">
                            <a class="hd_a01">한국섬진흥원 소개</a>
                            <ul class="hd_ul02">
                                <li class="hd_li02">
                                    <a href="/contents.do?id=greetings" class="hd_a02">인사말</a>
                                </li>
                                <li class="hd_li02">
                                    <a href="/contents.do?id=history" class="hd_a02">연혁</a>
                                </li>
                                <li class="hd_li02">
                                    <a href="/contents.do?id=organization" class="hd_a02">조직도</a>
                                </li>
                                <li class="hd_li02">
                                    <a href="/contents.do?id=business" class="hd_a02">비전 및 목표</a>
                                </li>
                                <li class="hd_li02">
                                    <a href="/contents.do?id=location" class="hd_a02">찾아오시는 길</a>
                                </li>
                                <!-- <li class="hd_li02">
                                    <a href="http://wom.synology.me/kisland/" target="_blank" title="새창열기" class="hd_a02">홍보관</a>
                                </li> -->
                                <li class="hd_li02">
                                    <a href="/cop/bbs/selectYoutubeList.do?bbsId=BBSMSTR_000000000221" class="hd_a02">홍보관</a>
                                </li>
								<li class="hd_li02">
                                    <a href="/contents.do?id=CI" class="hd_a02">CI</a>
                                </li>
                            </ul>
                        </li>

                        <li class="hd_li01">
                            <a class="hd_a01">발간자료</a>
                            <ul class="hd_ul02">
                                <li class="hd_li02">
                                    <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000201&ctype=a" class="hd_a02">연구보고서</a>
                                </li>
                                <li class="hd_li02">
                                    <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000201&ctype=b" class="hd_a02">정기간행물</a>
                                </li>
                                <li class="hd_li02">
                                    <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000201&ctype=c" class="hd_a02">단행물</a>
                                </li>
								<li class="hd_li02">
                                    <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000087" class="hd_a02">국내외 학술대회</a>
                                </li>
                            </ul>
                        </li>

                        <li class="hd_li01">
                            <a class="hd_a01">사업안내</a>
                            <ul class="hd_ul02">
								<li class="hd_li02">
                                    <a href="/contents.do?id=majorbussiness" class="hd_a02">주요사업</a>
                                </li>
								<li class="hd_li02">
                                    <a href="/contents.do?id=researchproject" class="hd_a02">연구사업</a>
                                </li>
								<!--li class="hd_li02">
                                    <a href="/contents.do?id=cooperation" class="hd_a02">교류협력사업</a>
                                </li-->
                                <li class="hd_li02">
                                	<!-- <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000085" class="hd_a02">한섬원 아카데미</a> -->
                                    
                                    <!-- 한섬원 아카데미 내용페이지 -->
                                    <a href="/contents.do?id=academy" class="hd_a02">한섬원 아카데미</a>
                                </li>
                            </ul>
                        </li>

                        <li class="hd_li01">
                            <a class="hd_a01">소식</a>
                            <ul class="hd_ul02">
                                <li class="hd_li02">
                                    <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000041" class="hd_a02">공지사항</a>
                                </li>
                                <li class="hd_li02">
                                    <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000091" class="hd_a02">보도자료</a>
                                </li>
                                <li class="hd_li02">
                                    <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000051" class="hd_a02">채용공고</a>
                                </li>
								<li class="hd_li02">
                                    <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000122" class="hd_a02">뉴스레터</a>
                                </li>
								<li class="hd_li02">
                                    <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000086" class="hd_a02">갤러리</a>
                                </li>
                            </ul>
                        </li>

						<li class="hd_li01">
                            <a class="hd_a01">정보공개</a>
                            <ul class="hd_ul02">
								<li class="hd_li02">
                                    <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000111" class="hd_a02">경영공시</a>
                                </li>
								<li class="hd_li02">
                                    <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000092" class="hd_a02">입찰공고</a>
                                </li>
                                <!-- <li class="hd_li02">
                                    <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000095" class="hd_a02">공공데이터 개방</a>
                                </li> -->
                            </ul>
                        </li>
	
						<li class="hd_li01">
                            <a class="hd_a01">국민소통</a>
                            <ul class="hd_ul02">
								<li class="hd_li02">
                                    <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000094" class="hd_a02">과제제안</a>
                                </li>
                                <li class="hd_li02">
                                    <a href="/contents.do?id=faq" class="hd_a02">자주하는 질문</a>
                                </li>
                                <li class="hd_li02">
                                    <a href="/contents.do?id=customercharter" class="hd_a02">고객헌장</a>
                                </li>
                            </ul>
                        </li>
		
						<li class="hd_li01">
                            <a class="hd_a01">한국의 섬 순례길</a>
                            <ul class="hd_ul02">
								<li class="hd_li02">
                                    <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000191" class="hd_a02">한국의 섬 순례길</a>
                                </li>
                            </ul>
                        </li>
                        
                    </ul>
                </div>
                <div class="hd_back"></div>
            </div>
        </div>
    </div>
    <script>
        $(function(){
            $(window).resize(function() { if($(window).width() >1199) {
                $(".hd_menu.m_view").hide();
            }
			});
			$(window).resize(function() { if($(window).width() <1100) {
				}
			});
				
			$(".hd_menu.pc_view .hd_a01").on("mouseover",function(){
                $(this).parent(".hd_li01").find(".hd_ul02").stop().slideDown(200);
                $(this).parent(".hd_li01").stop().addClass('click');
                $(".hd_container .hd_a01").not($(this)).parent(".hd_li01").find(".hd_ul02").slideUp(300);
                $(".hd_container .hd_a01").not($(this)).parent(".hd_li01").removeClass('click');
            });
            $("#hd").on("mouseover",function(){
            	$("#hd").addClass('on');
            });
            $(".hd_menu.pc_view .hd_a01").on("focus",function(){
                $(this).parent(".hd_li01").find(".hd_ul02").stop().slideDown(200);
                $(this).parent(".hd_li01").stop().addClass('click');
                $(".hd_container .hd_a01").not($(this)).parent(".hd_li01").find(".hd_ul02").slideUp(300);
                $(".hd_container .hd_a01").not($(this)).parent(".hd_li01").removeClass('click');
            });
            $("#hd").on("focus",function(){
            	$("#hd").addClass('on');
            });
            
            $("#hd").on("mouseleave",function(){
            	$("#hd").removeClass('on');
            	$(".hd_li01").removeClass('click');
                $(".hd_ul02").slideUp();
            });

            $(".hd_menu.m_view .hd_a01").on("click",function(){
                $(this).parent(".hd_li01").find(".hd_ul02").stop().slideToggle(400);
                $(this).parent(".hd_li01").stop().toggleClass('click');
                $(".hd_container .hd_a01").not($(this)).parent(".hd_li01").find(".hd_ul02").slideUp(300);
                $(".hd_container .hd_a01").not($(this)).parent(".hd_li01").removeClass('click');
            });
            
            $(".hd_open").on("click",function(){
            	$(".hd_menu.m_view").fadeIn();
            	$(".hd_back").fadeIn();
            });
            $(".hd_back,.m_hd_close").on("click",function(){
            	$(".hd_menu.m_view").hide();
            	$(".hd_back").hide();
            });
        });
    </script>

	<script>
		$(function(){
			var execBut='';
			
			//$(".table_15").css("display","none");
			//$(".map_tit").css("display","none");
			$(".table_15").css("overflow","hidden");
			$(".map_tit").css("overflow","hidden");

			$('img[usemap]').rwdImageMaps();
			
			$('#kidi_map').find('area').on('click',function() {
				$(".map_ex_box").hide();

				var cnt=$(this).prop('id').replace('subCont','');

				if(cnt != execBut && execBut){
					//$(".subCont"+execBut).css("display","none");
					//$(".kidiBox"+execBut).hide();
					$(".subCont"+execBut).css("overflow","hidden");
					$(".kidiBox"+execBut).css("overflow","hidden");
					$(".person-layout h3").removeClass("active");
					$(".person-layout dd div").removeClass("active1");
				}

				//$(".subCont"+cnt).css("display","block");
				//$(".kidiBox"+cnt).slideDown();
				$(".subCont"+cnt).addClass("active");
				$(".kidiBox"+cnt).addClass("active1");
				$(".subCont"+cnt).css("overflow","initial");
				$(".kidiBox"+cnt).css("overflow","initial");

				if(cnt != execBut){
					execBut=cnt;
				} else {
					execBut='';
				}
				//execBut=cnt;
			});

			var execBut_1='';

			$('#kidi_map area').focus(function() {
				$(".map_ex_box").hide();

				var cnt_foc = $(this).prop('id').replace('subCont','');

				if(cnt_foc != execBut_1 && execBut_1){
					//$(".subCont"+execBut_1).css("display","none");
					//$(".kidiBox"+execBut_1).hide();
					$(".subCont"+execBut_1).css("overflow","hidden");
					$(".kidiBox"+execBut_1).css("overflow","hidden");
					$(".person-layout h3").removeClass("active");
					$(".person-layout dd div").removeClass("active1");
				}

				//$(".subCont"+cnt_foc).css("display","block");
				//$(".kidiBox"+cnt_foc).slideDown();
				$(".subCont"+cnt_foc).addClass("active");
				$(".kidiBox"+cnt_foc).addClass("active1");
				$(".subCont"+cnt_foc).css("overflow","initial");
				$(".kidiBox"+cnt_foc).css("overflow","initial");

				if(cnt_foc != execBut_1){
					execBut_1=cnt_foc;
				} else{
					execBut_1='';
				}
				//execBut=cnt;
			});
		});

	</script>
    <!--헤더 끝-->
    </div>
    <!--end header-->
        <!--end siteMap-->
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        