<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:import url="/menu.do" />
<link rel="stylesheet" href="/css/egovframework/com/jpg/index_en.css">
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
    	<c:import url="/uss/ion/bnr/getBannerImage.do" charEncoding="utf-8">
			<c:param name="bannerTarget" value="main" />
		</c:import>
		
		<!-- <div id="main-banner">
			div class="main-banner-div main-banner-img01"></div
			<div class="main-banner-div main-banner-img02"></div>
			<div class="main-banner-div main-banner-img03"></div>
			<div class="main-banner-div main-banner-img04"></div>
			<div class="main-banner-div main-banner-img05"></div>
		</div> -->
        <div class="main-content">
            <div class="index_inner">
                <div class="content01">
                	<div class="main_tit">
                		<h2>ISLANDS</h2>
                		<h3>
                			BRIDGING TO THE FUTURE,<br>SAILING TOWARDS THE WORLD
                		</h3>
						
                	</div>
                </div>
                <!-- <div class="content02">
                    <div class="q_icon">
                        <ul>
                            <li>
                                <a href="/contents.do?id=en_greet&lang=en">
                                    <div class="icon">
                                        <img src="/images/egovframework/com/jpg/e_q_icon01.png" alt=""/>
                                    </div>
                                    <h3>Greetings</h3>
                                </a>
                            </li>
                            <li>
                                <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000131&lang=en">
                                    <div class="icon">
                                        <img src="/images/egovframework/com/jpg/e_q_icon02.png" alt=""/>
                                    </div>
                                    <h3>Newsletter</h3>
                                </a>
                            </li>
                            <li>
                                <a href="/contents.do?id=en_par&lang=en">
                                    <div class="icon">
                                        <img src="/images/egovframework/com/jpg/e_q_icon03.png" alt=""/>
                                    </div>
                                    <h3>Partnerships</h3>
                                </a>
                            </li>
                            <li>
                                <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000141&lang=en">
                                    <div class="icon">
                                        <img src="/images/egovframework/com/jpg/e_q_icon04.png" alt=""/>
                                    </div>
                                    <h3>Gallery</h3>
                                </a>
                            </li>
                            <li>
                                <a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000151&lang=en">
                                    <div class="icon">
                                        <img src="/images/egovframework/com/jpg/e_q_icon05.png" alt=""/>
                                    </div>
                                    <h3>Notice</h3>
                                </a>
                            </li>
                            <li>
                                <a href="/contents.do?id=en_f&lang=en">
                                    <div class="icon">
                                        <img src="/images/egovframework/com/jpg/e_q_icon06.png" alt=""/>
                                    </div>
                                    <h3>FAQ</h3>
                                </a>
                            </li>
                            <li>
                                <a href="/contents.do?id=en_lt&lang=en">
                                    <div class="icon">
                                        <img src="/images/egovframework/com/jpg/e_q_icon07.png" alt=""/>
                                    </div>
                                    <h3>Visitor Information</h3>
                                </a>
                            </li>
                            <li>
                                <a href="http://wom.synology.me/kisland/" target="_blank">
                                    <div class="icon">
                                        <img src="/images/egovframework/com/jpg/e_q_icon08.png" alt=""/>
                                    </div>
                                    <h3>Virtual Tour</h3>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <script>
                        $('.q_icon ul').slick({
                            infinite: true,
                            slidesToShow: 5,
                            slidesToScroll: 1,
                            arrows:true,
                            
                            responsive: [
                                {
                                  breakpoint: 1024,
                                  settings: {
                                    slidesToShow: 4,
                                    slidesToScroll: 1,
                                    infinite: true,
                                  }
                                },
                                {
                                  breakpoint: 600,
                                  settings: {
                                    slidesToShow: 3,
                                    slidesToScroll: 1
                                  }
                                }
                                // You can unslick at a given breakpoint now by adding:
                                // settings: "unslick"
                                // instead of a settings object
                           	]
                        });
                    </script>
                </div> -->
            </div>
        </div>
        <!-- <div class="Remark">
        	    	<p>
        	    		Nammunbawi, Hongdo Island
        	    	</p>
        	    	<p>
        	    		Heuksan-myeon
        	    	</p>
        	    </div> -->

    </div>
    <!--컨텐츠 끝-->
</div>
<!--end container-->
<!-- 슬라이드 추가 ▼ -->
<div class="csr-index section header-black">
	<h3><!--ISLANDS BRIDGING TO THE FUTURE,<br-->Korea's Island of the Month</h3>
	<div class="middle_content">
		<div class="middle_img">
			<c:import url="/uss/ion/bnr/getBannerImage.do" charEncoding="utf-8">
				<c:param name="bannerTarget" value="middle" />
			</c:import>
			<!-- <ul id="main_middle">
				<li>
					<a href="https://www.google.com/maps/place/Hongdo/data=!3m1!4b1!4m5!3m4!1s0x3575201114b7864f:0xbf5d09d35d72ef9d!8m2!3d34.693242!4d125.2011079?hl=en" target="_blank">
						<div class="img_div">
							<div class="img_m">
								<img src="/images/egovframework/com/jpg/latest_09.jpg" alt=""/>
							</div>
							<div class="img_hover">
								<img src="/images/egovframework/com/jpg/hover_img.png" class="link_img" alt=""/>
								<i class="material-icons link_img" aria-hidden="true">link</i>
							</div>
						</div>
						<h2 class="img_h2">Hongdo Island</h2>
						<p class="img_p">Sinan-gun County, Jeollanam-do Province</p>
					</a>
				</li>
				
				<li>
					<a href="https://www.google.com/maps/place/Yokji+Island/data=!4m5!3m4!1s0x356e9e95a037d50f:0xa025f92d07f6c313!8m2!3d34.6397448!4d128.2505343?hl=en" target="_blank">
						<div class="img_div">
							<div class="img_m">
								<img src="/images/egovframework/com/jpg/latest_08.jpg" alt=""/>
							</div>
							<div class="img_hover">
								<img src="/images/egovframework/com/jpg/hover_img.png" class="link_img" alt=""/>
								<i class="material-icons link_img" aria-hidden="true">link</i>
							</div>
						</div>
						<h2 class="img_h2">Yokjido Island</h2>
						<p class="img_p">Tongyeong-si City, Gyeongsangnam-do Province</p>
					</a>
				</li>

				<li>
					<a href="https://www.google.com/maps/place/Ulleungdo/data=!4m5!3m4!1s0x5fe0450f9bc93579:0x5fb137bda35e5cb1!8m2!3d37.5063677!4d130.8571536?hl=en" target="_blank">
						<div class="img_div">
							<div class="img_m">
								<img src="/images/egovframework/com/jpg/latest_07.jpg" alt=""/>
							</div>
							<div class="img_hover">
								<img src="/images/egovframework/com/jpg/hover_img.png" class="link_img" alt=""/>
								<i class="material-icons link_img" aria-hidden="true">link</i>
							</div>
						</div>
						<h2 class="img_h2">Ulleungdo Island</h2>
						<p class="img_p">Ulleung-gun County, Gyeongsangbuk-do Province</p>
					</a>
				</li>

				<li>
					<a href="https://www.google.com/maps/search/Dokdo+Island/@37.2398562,131.8612822,15.79z?hl=en" target="_blank">
						<div class="img_div">
							<div class="img_m">
								<img src="/images/egovframework/com/jpg/latest_06.jpg" alt=""/>
							</div>
							<div class="img_hover">
								<img src="/images/egovframework/com/jpg/hover_img.png" class="link_img" alt=""/>
								<i class="material-icons link_img" aria-hidden="true">link</i>
							</div>
						</div>
						<h2 class="img_h2">Dokdo Island</h2>
						<p class="img_p">Ulleung-gun County, Gyeongsangbuk-do Province</p>
					</a>
				</li>

				<li>
					<a href="https://www.google.com/maps/place/Geumodo+Island/data=!4m5!3m4!1s0x356dc696a5795ac9:0xc18fb59eda0d9122!8m2!3d34.5256181!4d127.749654?hl=en" target="_blank">
						<div class="img_div">
							<div class="img_m">
								<img src="/images/egovframework/com/jpg/latest_05.jpg" alt=""/>
							</div>
							<div class="img_hover">
								<img src="/images/egovframework/com/jpg/hover_img.png" class="link_img" alt=""/>
								<i class="material-icons link_img" aria-hidden="true">link</i>
							</div>
						</div>
						<h2 class="img_h2">Geumodo Island</h2>
						<p class="img_p">Yeosu-si City, Jeollanam-do Province</p>
					</a>
				</li>

				<li>
					<a href="https://www.google.com/maps/place/Baengnyeongdo/data=!4m5!3m4!1s0x357898077faf3867:0x3e2035de421317ab!8m2!3d37.9590027!4d124.6653814?hl=en" target="_blank">
						<div class="img_div">
							<div class="img_m">
								<img src="/images/egovframework/com/jpg/latest_04.jpg" alt=""/>
							</div>
							<div class="img_hover">
								<img src="/images/egovframework/com/jpg/hover_img.png" class="link_img" alt=""/>
								<i class="material-icons link_img" aria-hidden="true">link</i>
							</div>
						</div>
						<h2 class="img_h2">Baengnyeongdo Island</h2>
						<p class="img_p">Ongjin-gun County, Incheon</p>
					</a>
				</li>

				<li>
					<a href="https://www.google.com/maps/search/Chujado?hl=en" target="_blank">
						<div class="img_div">
							<div class="img_m">
								<img src="/images/egovframework/com/jpg/latest_03.jpg" alt=""/>
							</div>
							<div class="img_hover">
								<img src="/images/egovframework/com/jpg/hover_img.png" class="link_img" alt=""/>
								<i class="material-icons link_img" aria-hidden="true">link</i>
							</div>
						</div>
						<h2 class="img_h2">Chujado Island</h2>
						<p class="img_p">Jeju-si City, Jeju-do Province</p>
					</a>
				</li>

				<li>
					<a href="https://www.google.com/maps/place/Seonyudo,+Gunsan/data=!4m5!3m4!1s0x35711cdf949b4ebb:0x774cdd6ef4fcfce2!8m2!3d35.8106824!4d126.4162652?hl=en" target="_blank">
						<div class="img_div">
							<div class="img_m">
								<img src="/images/egovframework/com/jpg/latest_01.jpg" alt=""/>
							</div>
							<div class="img_hover">
								<img src="/images/egovframework/com/jpg/hover_img.png" class="link_img" alt=""/>
								<i class="material-icons link_img" aria-hidden="true">link</i>
							</div>
						</div>
						<h2 class="img_h2">Seonyudo Island</h2>
						<p class="img_p">Gunsan-si City, Jeollabuk-do Province</p>
					</a>
				</li>

				<li>
					<a href="https://www.google.com/maps/place/%EC%A6%9D%EB%8F%84/data=!4m5!3m4!1s0x3573933b819ba957:0xd581b954f75ee3e1!8m2!3d35.0139122!4d126.1465327?hl=en" target="_blank">
						<div class="img_div">
							<div class="img_m">
								<img src="/images/egovframework/com/jpg/latest_02.jpg" alt=""/>
							</div>
							<div class="img_hover">
								<img src="/images/egovframework/com/jpg/hover_img.png" class="link_img" alt=""/>
								<i class="material-icons link_img" aria-hidden="true">link</i>
							</div>
						</div>
						<h2 class="img_h2">Jeungdo Island</h2>
						<p class="img_p">Sinan-gun County, Jeollanam-do Province</p>
					</a>
				</li>
			</ul> -->
		</div>
	</div>
</div>
<!-- 슬라이드 추가 ▲ -->
<div class="main_bottom">
	<div class="main_b_inner">
		<div class="main_b_tit">
			<h2>
				ISLANDS BRIDGING TO THE FUTURE,<br>SAILING TOWARDS THE WORLD
			</h2>
		</div>
		<div class="main_b_category">
			<ul class="main_b_submenu">
				<li>
					<ul class="main_b_submenu01">
						<li><a href="/contents.do?id=en_greet&lang=en"><span>Greetings</span><i class="material-icons">navigate_next</i></a></li>
						<li><a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000131&lang=en"><span>Newsletter</span><i class="material-icons">navigate_next</i></a></li>
						<li><a href="/contents.do?id=en_par&lang=en"><span>Partnerships</span><i class="material-icons">navigate_next</i></a></li>
						<li><a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000141&lang=en"><span>Gallery</span><i class="material-icons">navigate_next</i></a></li>
					</ul>
				</li>
				<li>
					<ul class="main_b_submenu01">
						<li><a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000151&lang=en"><span>Notice</span><i class="material-icons">navigate_next</i></a></li>
						<li><a href="/contents.do?id=en_f&lang=en"><span>FAQ</span><i class="material-icons">navigate_next</i></a></li>
						<li><a href="/contents.do?id=en_lt&lang=en"><span>Visitor Information</span><i class="material-icons">navigate_next</i></a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</div>
<!--start footer-->
	<div class="footer">
        <div class="ft_info">
            <div class="inner">
                <div class="ft_logo"><img src="/images/egovframework/com/jpg/logo_en.png" alt="KIDI 한국섬진흥원"/style=width:200px;></div>
                <div class="ft_info0">
                    <p>Address : 6, Samhak-ro 92beon-gil, Mokpo-si, Jeollanam-do, Republic of Korea</p>
                    <p>Office : +82 61-276-6001 <br>Fax : +82 61-276-4005</p>
                    <p class="copyright">COPYRIGHT ⓒ KIDI All rights reserved.</p>
                </div>
            </div>
        </div>
	</div>
    <!--end footer-->
</div>
<!--end wrap-->

<script>
	//메인 배너
	$('#main-banner').slick({
		dots : true,
		arrows : false,
		infinite : true,
		autoplay : true,
		autoplaySpeed : 3000,
		slidesToShow : 1,
		slidesToScroll : 1
	});

	//2nd sec poster
	/*
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
	*/

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

	//main_middle
	$('#main_middle').slick({
		arrows : false,
		infinite : true,
		autoplay : true,
		autoplaySpeed : 3000,
		slidesToShow : 3,
		slidesToScroll : 1,
		responsive : [
		{
			breakpoint : 768,
			settings : {
				slidesToShow : 2,
				slidesToScroll : 1
			}
		}, {
			breakpoint : 350,
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
	document.getElementById("defaultOpen").click();

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
</script>

</body>

</html>