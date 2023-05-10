<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:choose>
	<c:when test="${kid == 'Y' }">
		<c:import url="/kidMenu.do"/>
	</c:when>
	<c:otherwise>
		<c:import url="/menu.do"/>
	</c:otherwise>
</c:choose>

<script>

$(function(){
	$('.kidGnb .kid_mn2').addClass('on');	
	
   	$('#gnb > ul > li:first-of-type').addClass('on2');	
});

</script>

<!-- 차트 
<script src="https://d3js.org/d3.v3.min.js"></script>     
<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script> 
차트 -->

<link rel="stylesheet" href="/css/egovframework/com/jpg/style.css">


<!-- 차트 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.css"/>
<!-- 차트 -->

<form id="pageNation" name="BoardVO" method="post" action="/cop/bbs/selectArticleList.do" style="display: hidden">
	<input class="bbsIdVal" name="bbsId" type="hidden"
		value="<c:out value="${boardMasterVO.bbsId }"/>"> <input
		class="pageIndexVal" name="pageIndex" type="hidden" value="" />
	<input class="skinVal" name="skin" type="hidden"
		value="<c:out value="${boardMasterVO.bbsTyCode }"/>" />
</form>

<div id="subWrap" class="sub01">
    <div class="sub_visual">
    	<c:choose>
	    	<c:when test="${fn:substring(meCode,0,1).equals('5') }">
	    		<h2><c:out value="${meName}"/></h2>
	    	</c:when>
	    	<c:otherwise>
	    		<h2><c:out value="${parentName}"/></h2>
	    	</c:otherwise>
    	</c:choose>
    </div>
	
	<div id="container">
	    <div class="sub_top">
	        <div class="inner">
	            <div class="page_navi">
                    <div class="first_mn">
						<strong class="mn_tit" tabindex="0"><c:out value="${parentName}"/> </strong>
						<div class="mn_2nd">
							<c:forEach var="item" items="${list_menumanage}"
								varStatus="index">
								<c:if test="${fn:length(item.meCode) == 2 && item.meUse == 1 && item.meLang == lang }">
									<a href="<c:out value="${item.meLink}"/>"><c:out value="${item.meName}"/> </a> 
							    </c:if>
							</c:forEach>
						</div>
					</div>   	
					
					<!--end first_mn 대메뉴-->
					<div class="second_mn">
						<strong class="mn_tit" tabindex="0"><c:out value="${meName}"/></strong>
						<div class="mn_2nd">
							<c:forEach var="item" items="${list_menumanage}" varStatus="index">
								<c:if test="${fn:length(item.meCode) == 4 }">

									<c:if test="${fn:substring(item.meCode,0,2) == parentCode}">
										<c:if test="${item.meCode != '7040' && item.meCode != '3070'}">
										<a href="<c:out value="${item.meLink}"/>"><c:out value="${item.meName}"/> </a>
										</c:if>
									</c:if> 
							    </c:if>
                			</c:forEach>
						</div>
					</div>
	                <!--end second_mn 중메뉴-->
	            </div>
	            <!--end sub_navi-->
	            
				<div class="btn_area3">
					<button class="font_resize" href="#"><img alt="폰트사이즈 조절 버튼" src="/images/egovframework/com/jpg/icon/font.png"></button> 
					<div class="font_pop">
						<div>
						    <span>크기:</span>
						    <button class="big" title="크게"><img alt="폰트사이즈 크게 버튼" src="/images/egovframework/com/jpg/icon/big.png"></button>
						    <button class="small" title="작게"><img alt="폰트사이즈 작게 버튼" src="/images/egovframework/com/jpg/icon/small.png"></button>
					    </div>
					</div>
					<button class="print" onclick="window.print();"><img alt="프린트하기 버튼" src="/images/egovframework/com/jpg/icon/print.png"></button>
				</div>
	            <!-- 
	            <form method="post" class="schForm">
	                <input type="text" id="search" placeholder="검색어를 입력하세요">
	
	                <button type="submit">검색</button>
	            </form>
	             -->
	            <!--end search-->
	        </div>
	        <!--end inner-->
	    </div>
	    <!--end sub_top-->

        <!--start content-->
        <div class="contentWrap">
				
			<div class="page_title"><c:out value="${meName}"/></div>
			
			<c:if test="${meCode == '3060'}">
			<div>
				<ul class="tab_btn02">
					<li><a href="/contents.do?id=Academy">소개</a></li>
					<li class="on"><a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000211">성과</a></li>
				</ul>
			</div>
			</c:if>
		    
			<div id="go_direct" style="position:absolute; top:40%"></div>
		    <!--start con01-->
		    <!-- <h3 style="position:relative; width:500px; margin:0.5vw auto; text-align:center">분야별 전라남도국악단 예술단원 소개</h3> -->
		    <div class="con01">
		        
		        
		        <div class="inner">
		            <div class="tab_body" style="position:relative">		            
		        	<%--  	<c:if varStatus="status" test="${status.index==0}">
		            				 	<h4 style="margin-bottom: 0.5vw; display:none;" id="h4_article1">예술감독</h4>	   
		            				 		 <script>
					                	$('#h4_article2').css('display', 'inline');					     
					                </script> 
		            	 <c:if/>
		            	 <c:if varStatus="status" test="${status.index==1}">
		            	 	<h4 style="margin-bottom: 0.5vw;">창악부</h4>
		            	 <c:if/>
	 		             <c:if varStatus="status" test="${status.index==2}">
		            	 	<h4 style="margin-bottom: 0.5vw;">무용부</h4>
		            	 <c:if/>
		            	 <c:if varStatus="status" test="${status.index==3}">
		            	 	<h4 style="margin-bottom: 0.5vw;">기악부</h4>
		            	 <c:if/>
		            	 <c:if varStatus="status" test="${status.index==4}">
		            	 	<h4 style="margin-bottom: 0.5vw;">사물부</h4>
		            	 <c:if/> --%>
		            	
		            	 <!--<h3 style="position:relative; top:-65px; left:50%; width:200px; text-align:center; margin-left:-100px" id="article_h4">예술단원 상제정보</h3>-->
<style>
.list {
	margin-top:100px;
}
.list .detail {
	margin-bottom:25px;
}
.list .detail .inner .manager_button {
	width:100%;
	margin:10px auto;
	text-align:left;
}
.list .detail .inner .manager_button a {
	width: 100px;
    height: 30px;
    line-height: 28px;
    text-align: center;
    display: inline-block;
    background: #fff;
    color: #555;
    font-size: .9rem;
    cursor: pointer;
    border: 1px solid #666;
    border-radius:4px;
    transform: translateX(-50%);
    transition: all .2s;
    margin-left:20px;
}
.list .detail .inner .manager_button a:first-child {
    margin-left:55px;
}
</style>
						<div class="grapeText">
							<h1>교육 성과</h1>
						</div>
							<!--																		
							<div class="slick">
								<div id="mainChart" style="width:1200px; height:600px;"></div>
			            	 	<div id="mainChart1" style="width:1200px; height:600px;"></div>
			            	 	<div id="mainChart2" style="width:1200px; height:600px;"></div>
							</div>
							-->
						<div style="text-align:center;">
							<img src="/images/egovframework/com/jpg/academyGrapeImage.jpg" style="width: 75%;" alt="아카데미그래프"/>
						</div>				
		            	 <div>
		            	 	<ul class="textEtc">
		                		<li>
		            	 			<div>
		            	 				<img src="/images/egovframework/com/jpg/230105_bbb.png" alt="전기수만족도평균"/>
		            	 			</div>
		            	 			<p>누적 교육 인원수<br><span style="color: orange;">138</span>명</p>
		            	 		</li>
		            	 		
		            	 		<li>
		            	 			<div>
		            	 				<img src="/images/egovframework/com/jpg/230105_aaa.png" alt="누적교육인원수"/>
		            	 			</div>
		            	 			<p>전기수 만족도 평균<br><span style="color: blue;">9.1</span>점</p>
		            	 		</li>
		            	 	</ul>
		            	 </div>
		            	 <div class="page_title2">
		            	 	<h3>한섬원 아카데미 갤러리</h3>
		            	 </div>
			                <div class="g_list01">
			   	                <c:forEach var="item" items="${resultList }" >			   	                	
				   	                <div class=galleryAll>
	   	                					
			                        	<a href="/cop/bbs/selectArticleDetail.do?nttId=${item.nttId}&bbsId=${item.bbsId}">
		                        	
			                            <!--img class="profileImg" src="http://kidi.re.kr/cmm/fms/getImage.do?atchFileId=${item.atchFileId}" style="width:100%;"-->
			                            <div class="g_Imgbox">
											<!-- <img class="profileImg" src="${item.filePath}" style="width:100%;"> -->
											<img class="profileImg" src="${fn:replace(item.filePath, '/kidijsp/', '')}" style="width:100%;">
										</div>
			                            	<span class="peo_intro_name2">
			                            		<c:if test="${item.empPosi !='' && item.empPosi != null}">
			                            			${item.empPosi} 
			                            		</c:if>${fn:substring(item.nttSj,0,40)}
			                            	</span>
			                            	<p class="date"><c:out value='${item.frstRegistPnttm }' /></p>
			                            <!--
			                            <div class="over1">
			                                <div class="fsd_p_box">
		                                		<!-- <p>한줄소개</p> 
			                                    <p class="gear_sj3E"><c:out value='${item.nttCn }' /></p>
			                                    <hr/>
			                                </div>
			                            </div>
			                            -->	                            
			                        	</a>
			                        				                        	
				                    </div>
		   	                    </c:forEach>
		   	                    <c:if test="${fn:length(resultList) == 0}">
		   	                    <p class="none_txt">등록된 정보가 없습니다.</p>
		   	                    </c:if>
			                </div>
		             
			            <c:if test="${user.id == 'webmaster'}">
					        <div class="btn" style="margin-top: 30px;">
								<span class="btn_b">
									<a href="<c:url value='/cop/bbs/insertArticleView.do?bbsId=${boardMasterVO.bbsId}' />"  title="<spring:message code="button.create" /> <spring:message code="input.button" />">
										<spring:message code="button.create" />
									</a>
								</span>
							</div>
						</c:if>
		            </div>
		            <!--end tab_body-->
		        </div>
			</div>
		        <!--end inner-->
		    </div>
		    <!--end con01-->
		    <!-- paging navigation -->
			<div class="pageindex">
				<div class="inner">
					<ui:pagination paginationInfo="${paginationInfo}" type="image"
						jsFunction="fn_egov_select_linkPage"/>
				</div>
				<!-- end inner -->
			</div>
			<!-- end paging navigation -->
		</div>
		<!--end contentWrap-->

	</div>
	
	
<script src="/js/egovframework/com/jpg/echart.min.js"></script>

<script>
function fn_egov_select_linkPage(pageNo){
	$("#pageNation .pageIndexVal").val(pageNo);
	$("#pageNation").submit();
}


/* 차트 시작 
var chartDom = document.getElementById('mainChart');
var myChart = echarts.init(chartDom);
var option;

option = {
  tooltip: {
    trigger: 'axis'
  },
  /*toolbox: {
    feature: {
      dataView: { show: true, readOnly: false },
      magicType: { show: true, type: ['line', 'bar'] },
      restore: { show: true },
      saveAsImage: { show: true }
    }
  },
  legend: {
    data: ['만족도', '교육인원'],
    textStyle: {
        fontSize: '15',
    },
  },
  xAxis: [
    {
      type: 'category',
      data: ['아카데미 1기', '아카데미 2기', '아카데미 3기'],
      axisPointer: {
        type: 'shadow'
      }
    }
  ],
  yAxis: [
    {
      type: 'value',
      name: '만족도 및 교육인원',
      min: 0,
      max: 30,
      interval: 5,
      axisLabel: {
        /*formatter: '{value} ml'
      }
    }
    /*
    {
      type: 'value',
      name: 'Temperature',
      min: 0,
      max: 25,
      interval: 5,
      axisLabel: {
        formatter: '{value} °C'
      }
    }
    
  ],
  series: [
    {
      name: '만족도',
      type: 'bar',
      tooltip: {
        valueFormatter: function (value) {
          return value;
        }
      },
      data: [
        9.1, 8.7, 9.3
      ],
      itemStyle:{
    	color:'#0763db',  
      }
    },
    {
      name: '교육인원',
      type: 'bar',
      tooltip: {
        valueFormatter: function (value) {
          return value;
        }
      },
      data: [
        7, 10, 7
      ],
      itemStyle:{
    	color:'#f56207',  
      }
    }
  ]
};

myChart.setOption(option);

var chartDom = document.getElementById('mainChart1');
var myChart = echarts.init(chartDom);
var option;

option = {
  tooltip: {
    trigger: 'axis'
  },
  /*toolbox: {
    feature: {
      dataView: { show: true, readOnly: false },
      magicType: { show: true, type: ['line', 'bar'] },
      restore: { show: true },
      saveAsImage: { show: true }
    }
  },
  legend: {
    data: ['만족도', '교육인원'],
    textStyle: {
        fontSize: '15',
    },
  },
  xAxis: [
    {
      type: 'category',
      data: ['아카데미 4기', '아카데미 5기', '아카데미 6기'],
      axisPointer: {
        type: 'shadow'
      }
    }
  ],
  yAxis: [
    {
      type: 'value',
      name: '만족도 및 교육인원',
      min: 0,
      max: 30,
      interval: 5,
      axisLabel: {
        /*formatter: '{value} ml'*/
      }
    }
    /*
    {
      type: 'value',
      name: 'Temperature',
      min: 0,
      max: 25,
      interval: 5,
      axisLabel: {
        formatter: '{value} °C'
      }
    }
    
  ],
  series: [
    {
      name: '만족도',
      type: 'bar',
      tooltip: {
        valueFormatter: function (value) {
          return value;
        }
      },
      data: [
        7.5, 4, 9
      ],
      itemStyle:{
      	color:'#0763db',  
      }
    },
    {
      name: '교육인원',
      type: 'bar',
      tooltip: {
        valueFormatter: function (value) {
          return value;
        }
      },
      data: [
        5, 8, 14
      ],
      itemStyle:{
      	color:'#f56207',  
      }
    }
  ]
};

myChart.setOption(option);

var chartDom = document.getElementById('mainChart2');
var myChart = echarts.init(chartDom);
var option;

option = {
  tooltip: {
    trigger: 'axis'
  },
  /*toolbox: {
    feature: {
      dataView: { show: true, readOnly: false },
      magicType: { show: true, type: ['line', 'bar'] },
      restore: { show: true },
      saveAsImage: { show: true }
    }
  },
  legend: {
    data: ['만족도', '교육인원'],
    textStyle: {
        fontSize: '15',
    },
  },
  xAxis: [
    {
      type: 'category',
      data: ['아카데미 7기', '아카데미 8기', '아카데미 9기'],
      axisPointer: {
        type: 'shadow'
      }
    }
  ],
  yAxis: [
    {
      type: 'value',
      name: '만족도 및 교육인원',
      min: 0,
      max: 30,
      interval: 5,
      axisLabel: {
        /*formatter: '{value} ml'*/
      }
    }
    /*
    {
      type: 'value',
      name: 'Temperature',
      min: 0,
      max: 25,
      interval: 5,
      axisLabel: {
        formatter: '{value} °C'
      }
    }
    
  ],
  series: [
    {
      name: '만족도',
      type: 'bar',
      tooltip: {
        valueFormatter: function (value) {
          return value;
        }
      },
      data: [
        8.8, 9.1, 2
      ],
      itemStyle:{
      	color:'#0763db',  
      }
    },
    {
      name: '교육인원',
      type: 'bar',
      tooltip: {
        valueFormatter: function (value) {
          return value;
        }
      },
      data: [
        10, 24, 4
      ],
      itemStyle:{
      	color:'#f56207',  
      }
    }
  ]
};

myChart.setOption(option);
*/
/* 차트 끝 */

/* 차트 슬라이드 시작
$('.slick').slick({
  dots: false,
  speed: 300,
  slidesToShow: 1
});
 차트 슬라이드 끝 */

</script>
	 
	<!--end container-->
<%@ include file="/WEB-INF/jsp/egovframework/com/jpg/include/footer.jsp" %>