<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script>
		
	if (window.location.protocol != "https:") {
		//window.location.href = "https:" + window.location.href.substring(window.location.protocol.length);
	}

	if (document.location.protocol == 'http:') {
		//document.location.href = document.location.href.replace('http:', 'https:');
	}

</script>

<%
//out.println("Total Memory : "+Runtime.getRuntime().totalMemory());
//out.println("Free Memory : "+Runtime.getRuntime().freeMemory());
//out.println("Max Memory : "+Runtime.getRuntime().maxMemory());
%>

<%!
	String getClientIP(HttpServletRequest request) {

	  String ip = request.getHeader("X-FORWARDED-FOR"); 

		 

	  if (ip == null || ip.length() == 0) {

		ip= request.getHeader("Proxy-Client-IP");

	  }



	  if (ip == null || ip.length() == 0) {

		ip= request.getHeader("WL-Proxy-Client-IP");  

	  }



	  if (ip == null || ip.length() == 0) {

		ip= request.getRemoteAddr() ;

	  }

		 

	  return ip;

	}
%>

<c:import url="/menu.do" />
<link rel="stylesheet" href="/css/egovframework/com/jpg/index.css">
<script src="/js/egovframework/com/jpg/index.js"></script>

<c:forEach var="pop" items="${popList}" varStatus="status">
      	<c:import url="/uss/ion/pwm/openPopupManage.do" charEncoding="utf-8">
			<c:param name="popupId" value="${pop.popupId}" />
		    <c:param name="fileUrl" value="${pop.fileUrl}" />
			<c:param name="stopVewAt" value="Y" />
			<c:param name="popCount" value="${status.count}"/>
		</c:import>
		
    </c:forEach>
<div id="container">
	    <!--컨텐츠-->
    <div class="main-container">
        <div class="main-content">
            <div class="inner">
                <div class="content01">
                    <div class="banner">
                        <ul class="banner_slide">
                            <li>
                                <div class="slide01">
                                    <!-- <a href="" target="_blank" title="새창열기"> -->
                                        <img src="/images/egovframework/com/jpg/kidi_main_01.jpg" alt="한국섬진흥원 전경"/>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="slide01">
                                    <!-- <a href="https://www.youtube.com/watch?v=MoOOo9tHyIQ" target="_blank" title="새창열기"> -->
                                        <img src="/images/egovframework/com/jpg/kidi_main_02.jpg" alt="한국섬진흥원 전경"/>
                                    <!-- </a> -->
                                </div>
                            </li>
                            <li>
                                <div class="slide01">
                                    <!-- <a href="https://www.youtube.com/watch?v=RDpvfPrb75M" target="_blank" title="새창열기"> -->
                                        <img src="/images/egovframework/com/jpg/kidi_main_03.jpg" alt="한국섬진흥원, 통영 욕지도"/>
                                    <!-- </a> -->
                                </div>
                            </li>
							<li>
                                <div class="slide01">
                                    <!-- <a href="https://www.youtube.com/watch?v=zphH_pysCaM" target="_blank" title="새창열기"> -->
                                        <img src="/images/egovframework/com/jpg/kidi_main_04.jpg" alt="한국섬진흥원, 신안 가거도"/>
                                    <!-- </a> -->
                                </div>
                            </li>
                        </ul>
                    </div>
                    <script>
                        $('.banner_slide').slick({
                            dots: true,
                            infinite: true,
                            autoplay: true,
                            speed: 500,
                            arrows:true
                        });
                    </script>

                    <div class="q_menu">
                        <ul>
                            <li class="menu01">
                                <a href="/contents.do?id=greetings">
                                    <h3><img src="/images/egovframework/com/jpg/mini_logo_black.png" alt="한국섬진흥원"/><br>소개</h3>
                                </a>
                            </li>
                            <li class="menu02">
                                <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000201">
                                    <img src="/images/egovframework/com/jpg/q_menu02-1.png" alt=""/>
                                    <h3>발간자료</h3>
                                </a>
                            </li>
                            <li class="menu03">
                                <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000094">
                                    <img src="/images/egovframework/com/jpg/q_menu03-1.png" alt=""/>
                                    <h3>과제제안</h3>
                                </a>
                            </li>
                            <li class="menu04">
                                <a href="/contents.do?id=location">
                                    <img src="/images/egovframework/com/jpg/q_menu04-1.PNG" alt=""/>
                                    <h3>찾아오시는 길</h3>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="content02">
                    <!-- div class="q_icon">
                        <ul>
                            <li>
                                <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000085">
                                    <div class="icon">
                                        <img src="/images/egovframework/com/jpg/q_icon01.png" alt=""/>
                                    </div>
                                    <h3>자료실</h3>
                                </a>
                            </li>
                            <li>
                                <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000094">
                                    <div class="icon">
                                        <img src="/images/egovframework/com/jpg/q_icon02.png" alt=""/>
                                    </div>
                                    <h3>과제제안</h3>
                                </a>
                            </li>
                            <li>
                                <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000092">
                                    <div class="icon">
                                        <img src="/images/egovframework/com/jpg/q_icon03.png" alt=""/>
                                    </div>
                                    <h3>입찰공고</h3>
                                </a>
                            </li>
                            <li>
                                <a href="/contents.do?id=location">
                                    <div class="icon">
                                        <img src="/images/egovframework/com/jpg/q_icon05.png" alt=""/>
                                    </div>
                                    <h3>찾아오시는 길</h3>
                                </a>
                            </li>
                        </ul>
                    </div-->
                    <div class="latest">
	                    <ul class="latest_ul">
	                    	<li class="latest_li">
	                    	   <button onClick="changeBoard(this,'BBSMSTR_000000000041');" id="l_btn01" class="q_a on">공지사항</button>
	                    	   <button class="more" onClick="changeBoardMore();">+<span class="sound_only">더보기</span></button>
	                    	   <div class="latest_content">
	                    	   	    <ul id="bbs01" style="display:block;">
			                            <c:forEach var="list" items="${list1}" varStatus="status">
			                            	<li>
			                                    <a href="/cop/bbs/selectArticleDetail.do?nttId=${list.nttId}&bbsId=${list.bbsId}">
			                                        <p class="la_tit">· ${list.nttSj}</p>
			                                        <p class="la_date">${list.frstRegistPnttm}</p>
			                                    </a>
			                                </li>
			                            </c:forEach>
		                            </ul>
	                    	   </div>
	                    	</li>
	                    	<li class="latest_li">
	                    		<button onClick="changeBoard(this,'BBSMSTR_000000000051');"id="l_btn02" class="q_a">채용공고</button>
	                    		<button class="more" onClick="changeBoardMore();">+<span class="sound_only">더보기</span></button>
	                    		<div class="latest_content">
		                    		<ul id="bbs02" style="display:none;">
			                            <c:forEach var="list" items="${list2}" varStatus="status">
			                            	<li>
			                                    <a href="/cop/bbs/selectArticleDetail.do?nttId=${list.nttId}&bbsId=${list.bbsId}">
			                                        <p class="la_tit">· ${list.nttSj}</p>
			                                        <p class="la_date">${list.frstRegistPnttm}</p>
			                                    </a>
			                                </li>
			                            </c:forEach>
		                            </ul>
	                    		</div>
	                    	</li>
	                    	<li class="latest_li">
	                    	   <button onClick="changeBoard(this,'BBSMSTR_000000000091');" id="l_btn03" class="q_a">보도자료</button>
	                    	   <button class="more" onClick="changeBoardMore();">+<span class="sound_only">더보기</span></button>
	                    	   
	                    		<div class="latest_content">
	                    			<ul id="bbs03" style="display:none;">
			                            <c:forEach var="list" items="${list3}" varStatus="status">
			                            	<li>
			                                    <a href="/cop/bbs/selectArticleDetail.do?nttId=${list.nttId}&bbsId=${list.bbsId}">
			                                        <p class="la_tit">· ${list.nttSj}</p>
			                                        <p class="la_date">${list.frstRegistPnttm}</p>
			                                    </a>
			                                </li>
			                            </c:forEach>
		                            </ul>
	                    		</div>
	                    	</li>
	                    	<li class="latest_li">
	                    		<button onClick="changeBoard(this,'BBSMSTR_000000000092');"id="l_btn04" class="q_a">입찰공고</button>
	                    		<button class="more" onClick="changeBoardMore();">+<span class="sound_only">더보기</span></button>
	                    		
								<div class="latest_content">
		                            <ul id="bbs04" style="display:none;">
			                            <c:forEach var="list" items="${list4}" varStatus="status">
			                            	<li>
			                                    <a href="/cop/bbs/selectArticleDetail.do?nttId=${list.nttId}&bbsId=${list.bbsId}">
			                                        <p class="la_tit">· ${list.nttSj}</p>
			                                        <p class="la_date">${list.frstRegistPnttm}</p>
			                                    </a>
			                                </li>
			                            </c:forEach>
		                            </ul>
	                        	</div>
	                    	</li>
	                    </ul>
                    </div>
                    <!--<div class="latest">
                    
                        <header>
                            <h2 onClick="changeBoard('BBSMSTR_000000000041');">공지사항</h2>
                            <h2 onClick="changeBoard('BBSMSTR_000000000051');">채용공고</h2>
                            <h2 onClick="changeBoard('BBSMSTR_000000000091');">보도자료</h2>
                            <h2 onClick="changeBoard('BBSMSTR_000000000092');">입찰공고</h2>
                            <button class="more" onClick="changeBoardMore();">+<span class="sound_only">더보기</span></button>
                        </header>
                        <div class="latest_content">
                            <ul id="bbs01" style="display:block;">
	                            <c:forEach var="list" items="${list1}" varStatus="status">
	                            	<li>
	                                    <a href="/cop/bbs/selectArticleDetail.do?nttId=${list.nttId}&bbsId=${list.bbsId}">
	                                        <p class="la_tit">· ${list.nttSj}</p>
	                                        <p class="la_date">${list.frstRegisterPnttm}</p>
	                                    </a>
	                                </li>
	                            </c:forEach>
                            </ul>
                            <ul id="bbs02" style="display:none;">
	                            <c:forEach var="list" items="${list2}" varStatus="status">
	                            	<li>
	                                    <a href="/cop/bbs/selectArticleDetail.do?nttId=${list.nttId}&bbsId=${list.bbsId}">
	                                        <p class="la_tit">· ${list.nttSj}</p>
	                                        <p class="la_date">${list.frstRegisterPnttm}</p>
	                                    </a>
	                                </li>
	                            </c:forEach>
                            </ul>
                            <ul id="bbs03" style="display:none;">
	                            <c:forEach var="list" items="${list3}" varStatus="status">
	                            	<li>
	                                    <a href="/cop/bbs/selectArticleDetail.do?nttId=${list.nttId}&bbsId=${list.bbsId}">
	                                        <p class="la_tit">· ${list.nttSj}</p>
	                                        <p class="la_date">${list.frstRegisterPnttm}</p>
	                                    </a>
	                                </li>
	                            </c:forEach>
                            </ul>
                            <ul id="bbs04" style="display:none;">
	                            <c:forEach var="list" items="${list4}" varStatus="status">
	                            	<li>
	                                    <a href="/cop/bbs/selectArticleDetail.do?nttId=${list.nttId}&bbsId=${list.bbsId}">
	                                        <p class="la_tit">· ${list.nttSj}</p>
	                                        <p class="la_date">${list.frstRegisterPnttm}</p>
	                                    </a>
	                                </li>
	                            </c:forEach>
                            </ul>
                        </div>
                    </div>-->
                    <div class="mini_pop">
                    	<ul id="mini_pop">
                    		<li>
                		        <a href="" title="새창열기">
                                    <img src="/images/egovframework/com/jpg/kidi_main_pop03.jpg" style="margin-top: -10px;" alt="섬에 대한 연구와 진흥사업에 관한 콜센터 운영, 섬 현안 대응 TF팀이 섬 주민의 의견을 듣겠습니다."/>
                                </a>
                    		</li>
                    		<!--
                    		<li>
                		        <a href="/cop/bbs/selectArticleDetail.do?nttId=4706&bbsId=BBSMSTR_000000000041" title="새창열기">
                                    <img src="/images/egovframework/com/jpg/kidi_main_pop02.jpg" alt="2023 한국섬진흥원 청년자문단 추가모집 청년과 섬타다 2023.02.08(수)~02.23(목) 17시까지"/>
                                </a>
                    		</li>
                    		-->
                    		<!--
                    		<li>
                		        <a href="" title="새창열기">
                                    <img src="/images/egovframework/com/jpg/mini_banner00.jpg" alt="국내외 섬 현장의 소식을 전할 한국섬진흥원 글로벌 섬 통신원 모집 23.3.6(월)~23.3.24(금) 17시까지"/>
                                </a>
                    		</li>
                    		-->
                    	</ul>
                    </div>
                    <script>
                        $('#mini_pop').slick({
                            dots: true,
                            infinite: true,
                            autoplay: true,
                            speed: 500,
                            arrows:true
                        });
                    </script>
                </div>
            </div>
        </div>
    </div>
    <!--컨텐츠 끝-->
</div>
<!--end container-->
<!--start footer-->
        <div class="footer">
        <div class="ft_link">
            <div class="inner ft_flex">
                <ul>
                    <li><a href="/contents.do?id=service">이용약관</a></li>
                    <li style="font-weight:600; "><a href="/contents.do?id=privacy"style="color:#0000ff;">개인정보처리방침</a></li>
                    <li><a href="/contents.do?id=email">이메일무단수집거부</a></li>
                </ul>
                
                <div class="snsLogo" style="margin-left:270px;">
					<a href="https://www.youtube.com/channel/UCwhmqEGfW7XvJJSaH48_Bgw" style="padding-right:10px;" class="ft_banner" target="_blank">
					<img src="/images/egovframework/com/jpg/kidi_youtube.png" alt="유튜브"></a>
					
					<a href="https://blog.naver.com/island_think" style="padding-right:10px;" class="ft_banner" target="_blank">
					<img src="/images/egovframework/com/jpg/kidi_blog.png" alt="블로그"></a>
					
					<a href="https://www.facebook.com/island.issue.delivery" style="padding-right:10px;" class="ft_banner" target="_blank">
					<img src="/images/egovframework/com/jpg/kidi_facebook.png" alt="페이스북"></a>
					
					<a href="https://www.instagram.com/daily.island_official/" style="padding-right:10px;" class="ft_banner" target="_blank">
					<img src="/images/egovframework/com/jpg/kidi_instagram.png" alt="인스타그램"></a>
				</div>
                
                <div class="ft_logo0">			
					<a href="https://www.gyeongnam.go.kr/gnisland/index.gyeong" class="ft_banner" target="_blank">
					<img src="/images/egovframework/com/jpg/gnIsland.jpg" alt="경남의섬"></a>
					
					<a href="https://islands.jeonnam.go.kr/jnia/main.do" class="ft_banner" target="_blank">
					<img src="/images/egovframework/com/jpg/jnIsland.jpg" alt="전남의섬"></a>
					
					<a href="http://www.jndadohae.com/" class="ft_banner" target="_blank">
					<img src="/images/egovframework/com/jpg/goIsland.jpg" alt="가고싶은섬"></a>
				</div>
            </div>
        </div>
        <div class="ft_info">
            <div class="inner">
                <div class="ft_logo"><img src="/images/egovframework/com/jpg/ft_logo.png" alt="KIDI 한국섬진흥원"/></div>
                <div class="ft_info0">
                    <p>주소 : 전라남도 목포시 삼학로 92번길 6(산정동 1428-1) 한국섬진흥원</p>
                    <p>대표전화 : 061-276-6001 | FAX : 061-276-4005</p>
                    <p class="copyright">COPYRIGHT ⓒ 한국섬진흥원 All rights reserved.</p>
                </div>
					<a href="https://ncp.clean.go.kr/cmn/secCtfcKMC.do?menuCode=acs&mapAcs=Y&insttCd=B554662" class="ft_banner">
					<img src="/images/egovframework/com/jpg/head_Image.jpg" alt="국민권익위원회"></a>
            </div>		
        </div>
</div>
    <!--end footer-->
</div>
<!--end wrap-->



<script>
	//1st sec
	$('.visual').slick({
		dots : true,
		arrows : false,
		infinite : true,
		autoplay : true,
		autoplaySpeed : 3000,
		slidesToShow : 1,
		fade : true,
		adaptiveHeight : false
	});

	//2nd sec poster
	$('.poster').slick({
		dots : false,
		arrows : false,
		infinite : true,
		autoplay : false,
		autoplaySpeed : 5000,
		slidesToShow : 4,
		slidesToScroll : 4,
		adaptiveHeight : false,
		responsive : [
			{
				breakpoint : 1024,
				settings : {
					slidesToShow : 3,
					slidesToScroll : 3
				}
			}, {
			breakpoint : 768,
			settings : {
				slidesToShow : 2,
				slidesToScroll : 2
			}
		}, {
			breakpoint : 480,
			settings : {
				slidesToShow : 2,
				slidesToScroll : 2,
				arrows : true
			}
		} ]
	});

	//2nd sec sns thumb
function windowOpen(url,target){
	
	if(confirm("해당 페이지로 이동을 하시겠습니까?")){
		window.open(url, target);
		}
	}
	$('.thumb_list').slick({
		dots : false,
		arrows : false,
		infinite : true,
		autoplay : false,
		autoplaySpeed : 5000,
		centerPadding:'20px',
		slidesToShow : 5,
		slidesToScroll : 5,
		adaptiveHeight : false,
		responsive : [ {
			breakpoint : 770,
			settings : {
				slidesToShow : 3,
				slidesToScroll : 3
			}
		}, {
			breakpoint : 415,
			settings : {
				slidesToShow : 2,
				slidesToScroll : 2
			}
		} ]
	});

	//2nd sec sns thumb
	$('.thumb_list2').slick({
		dots : false,
		arrows : false,
		infinite : true,
		autoplay : true,
		autoplaySpeed : 5000,
		slidesToShow : 3,
		slidesToScroll : 3,
		adaptiveHeight : false,
		responsive : [ {
			breakpoint : 1600,
			settings : {
				slidesToShow : 1,
				slidesToScroll :1
			}
		}, {
			breakpoint : 415,
			settings : {
				slidesToShow : 1,
				slidesToScroll : 1
			}
		} ]
	});

	// http://www.dte.web.id/2013/02/event-mouse-wheel.html
	(function() {
		function scrollHorizontally(e) {
			e = window.event || e;
			var delta = Math.max(-1, Math.min(1, (e.wheelDelta || -e.detail)));
			document.documentElement.scrollLeft -= (delta * 40); // Multiplied by 40
			document.body.scrollLeft -= (delta * 40); // Multiplied by 40
			e.preventDefault();
		}
		if (window.addEventListener) {
			// IE9, Chrome, Safari, Opera
			window.addEventListener("mousewheel", scrollHorizontally, false);
			// Firefox
			window
					.addEventListener("DOMMouseScroll", scrollHorizontally,
							false);
		} else {
			// IE 6/7/8
			window.attachEvent("onmousewheel", scrollHorizontally);
		}
	})();

	//panel-2 tab
	function openCity2(evt, cityName) {
		var i, tabcontent2, tablinks2;
		tabcontent2 = document.getElementsByClassName("tabcontent2");
		for (i = 0; i < tabcontent2.length; i++) {
			tabcontent2[i].style.display = "none";
		}
		tablinks2 = document.getElementsByClassName("tablinks2");
		for (i = 0; i < tablinks2.length; i++) {
			tablinks2[i].className = tablinks2[i].className.replace(" active",
					"");
		}
		document.getElementById(cityName).style.display = "block";
	}

	//document.getElementById("defaultOpen2").click();
	//panel-3 tab
	function openCity(evt, cityName) {
		var i, tabcontent, tablinks;
		tabcontent = document.getElementsByClassName("tabcontent");
		for (i = 0; i < tabcontent.length; i++) {
			tabcontent[i].style.display = "none";
		}
		tablinks = document.getElementsByClassName("tablinks");
		for (i = 0; i < tablinks.length; i++) {
			tablinks[i].className = tablinks[i].className
					.replace(" active", "");
		}
		document.getElementById(cityName).style.display = "block";
		//evt.currentTarget.className += " atv";
	}

	// Get the element with id="defaultOpen" and click on it
	//document.getElementById("defaultOpen").click();

	function go_url(url) {
		if (url != '')
			window.open(url, '_blank');
	}

	$(".goBtn").on("click", function() {
		var baseDom = $(this).parent();
		
		$("#subForm .nttIdVal").val(baseDom.data("nttid"));
		$("#subForm .bbsIdVal").val(baseDom.data("bbsid"));
		$("#subForm .pageIndexVal").val(baseDom.data("pageindex"));	
		$("#subForm .skinVal").val(baseDom.data("skin"));	
		$("#subForm").submit();
	});
	
	function tapOpen(type){
		if(type == "insta"){
			$("#youtube_con").hide();
			$("#insta_con").show();
			//init(type);
			$('.thumb_list').slick('resize');
		}else{
			$("#youtube_con").show();
			$("#insta_con").hide();
			//init(type);
			 $('.thumb_list2').slick('resize');
		}
		
	}
	var agent = navigator.userAgent.toLowerCase();
	
	
	$(".tabindex_slick").attr("tabindex", "3");
	
	/*pdf뷰어 테스트*/
	/*
	function pdfViewer() {
        var popUrl = "/cop/bbs/selectArticleDetail.do?nttId=3051&bbsId=BBSMSTR_000000000041&pageIndex=1&skin=";
        var popOption = "top=10, left=10, width=500, height=600, status=no, menubar=no, toolbar=no, resizable=no";
        window.open(popUrl, popOption);
    }
	*/
	/*pdf뷰어 테스트*/
	
	// 최신글 게시판 클릭 시...
	function changeBoard(e,pBbsId){
		
		$(".latest_ul > .latest_li > button").removeClass("on");
		$(e).addClass("on");
		
		if(pBbsId == 'BBSMSTR_000000000041'){	// 공지사항
			document.getElementById("bbs01").style.display = "block";
			document.getElementById("bbs02").style.display = "none";
			document.getElementById("bbs03").style.display = "none";
			document.getElementById("bbs04").style.display = "none";
			
		}else if(pBbsId == 'BBSMSTR_000000000051'){ // 채용공고
			document.getElementById("bbs01").style.display = "none";
			document.getElementById("bbs02").style.display = "block";
			document.getElementById("bbs03").style.display = "none";
			document.getElementById("bbs04").style.display = "none";

		}else if(pBbsId == 'BBSMSTR_000000000091'){ // 보도자료
			document.getElementById("bbs01").style.display = "none";
			document.getElementById("bbs02").style.display = "none";
			document.getElementById("bbs03").style.display = "block";
			document.getElementById("bbs04").style.display = "none";
			
			
		}else if(pBbsId == 'BBSMSTR_000000000092'){ // 입찰공고
			document.getElementById("bbs01").style.display = "none";
			document.getElementById("bbs02").style.display = "none";
			document.getElementById("bbs03").style.display = "none";
			document.getElementById("bbs04").style.display = "block";
		
		}
		
	}
	
	// 게시판 링크 세팅.
	function changeBoardMore(){
		var sBbsId = "BBSMSTR_000000000041";
		
		if(document.getElementById("bbs01").style.display == "block"){
			sBbsId = "BBSMSTR_000000000041";
		} else if(document.getElementById("bbs02").style.display == "block"){
			sBbsId = "BBSMSTR_000000000051";
		} else if(document.getElementById("bbs03").style.display == "block"){
			sBbsId = "BBSMSTR_000000000091";
		} else if(document.getElementById("bbs04").style.display == "block"){
			sBbsId = "BBSMSTR_000000000092";
		}
		
		location.href = '/cop/bbs/selectArticleList.do?bbsId='+sBbsId;
	}


	
</script>
</body>

</html>