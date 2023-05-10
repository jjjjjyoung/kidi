<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:import url="/menu.do"/>
<script type="text/javascript">
	$('.btn_d a').on('click', function(){
		if(!confirm('정말 삭제하시겠습니까?')){
			return false;
		}
	});
</script>
<link rel="stylesheet" href="/css/egovframework/com/jpg/style.css">

<div id="subWrap" class="sub0<c:out value='${fn:substring(meCode,0,1) }'/>">
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
										<a href="<c:out value="${item.meLink}"/>"><c:out value="${item.meName}"/> </a>
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
	            
<!-- 	            <form method="post" class="schForm">
	                <input type="text" id="search" placeholder="검색어를 입력하세요">
	
	                <button type="submit">검색</button>
	            </form> -->
	            <!--end search-->
	        </div>
	        <!--end inner-->
	    </div>
	    <!--end sub_top-->

        <!--start content-->
        <div class="contentWrap">
	
		    <div class="page_title">한섬원 아카데미 갤러리</div>
		
		    <!--start con01-->
		    <div class="con01 detail">
		        <div class="inner">
		            <div>
		                <div class="left">
		                <!--
		                	<img src="${result.filePath}" alt="${result.empNm}" style="width:100%;">
		                -->
		                	<ul id="gallery_pop">
			                	<c:import url="/cmm/fms/selectGalleryInfo.do" charEncoding="utf-8">
									<c:param name="param_atchFileId" value="${result.atchFileId}" />
								</c:import>
							</ul>
		                	<div style="margin-top:20px;">${result.nttCn}</div>
		                </div>
		                <div class="right">
		                    <dl>
		                        <dt>${result.empDept }</dt>
		                        <dd class="member_name">${result.empNm }</dd>
		                    </dl>
		                    
		                    <dl>
		                        <dt><p style="visibility:hidden">한줄소개</p></dt>
		                        <dd>${result.empIntro }</dd>
		                    </dl>
		                    
		                    
		                </div>
		            </div>
	           	
	       		<div class="btn">
		       		<span class="btn_b" style="float:right;">
						<a style="float:none;position: inherit;" href="<c:url value='/cop/bbs/selectArticleList.do' />?bbsId=${boardMasterVO.bbsId}"  title="<spring:message code="button.list" />  <spring:message code="input.button" />"><spring:message code="button.list" /></a>
						<c:if test="${user.id == 'webmaster'}">
						<a style="float:none;position: inherit;" href="<c:url value='/cop/bbs/updateArticleView.do' />?nttId=${result.nttId}&bbsId=${boardMasterVO.bbsId}"  title="<spring:message code="button.update" />  <spring:message code="input.button" />"><spring:message code="button.update" /></a>
						<a style="float:none;position: inherit;" href="<c:url value='/cop/bbs/deleteArticle.do' />?nttId=${result.nttId}&bbsId=${boardMasterVO.bbsId}"  title="<spring:message code="button.delete" />  <spring:message code="input.button" />"><spring:message code="button.delete" /></a>
						</c:if>
					</span>
				</div>
				
				
		        </div>
		        
		        
		        <!--end inner-->
		    </div>
		    
		    
		    <!--end con01-->
		</div>
		<!--end contentWrap-->
	</div>
	<!--end container-->
</div>
<!--end subWrap-->
	
<script>
	$('#gallery_pop').slick({
	    dots: false,
	    infinite: true,
	    autoplay: true,
	    speed: 500,
	    arrows:true,
	    slidesToShow: 1,
	    slidesToScroll: 1
	});
</script>

<%@ include file="/WEB-INF/jsp/egovframework/com/jpg/include/footer.jsp" %>