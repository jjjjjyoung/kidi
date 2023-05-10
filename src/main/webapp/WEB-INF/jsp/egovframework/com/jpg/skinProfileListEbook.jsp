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


/***
.inv_art_direc01 
***/
</script>


<link rel="stylesheet" href="/css/egovframework/com/jpg/style.css">

<form id="pageNation" name="BoardVO" method="post"
							action="/cop/bbs/selectArticleList.do" style="display: hidden">
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
									<a href="<c:out value="${item.meLink}"/>"><c:out value="${item.meName}"/></a> 
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
				
			<div class="page_title"><c:out value="발간자료"/></div>
						
			<div>
				<ul class="tab_btn02">
					<li class="${(empty(param.ctype) || param.ctype == '') && (param.bbsId == 'BBSMSTR_000000000201') ? 'on' : '' }"><a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000201">전체</a></li>
					<li class="${param.ctype == 'a' ? 'on' : '' }"><a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000201&ctype=a">연구보고서</a></li>
					<li class="${param.ctype == 'b' ? 'on' : '' }"><a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000201&ctype=b">종합간행물</a></li>
					<li class="${param.ctype == 'c' ? 'on' : '' }"><a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000201&ctype=c">정책브리프</a></li>
					<li class="${param.bbsId == 'BBSMSTR_000000000087' ? 'on' : ''}"><a href="/cop/bbs/selectArticleList.do?bbsId=BBSMSTR_000000000087">국내외 학술대회</a></li>
				</ul>
			</div>
		    
			<div id="go_direct" style="position:absolute; top:40%"></div>
		    <!--start con01-->
		    <div class="con01">
		        
		        
		        <div class="inner">
		            <div class="tab_body" style="position:relative">		            
		        	
					<style>
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
							 
			                <div class="list">
			                	<!--
			                	<div class="ebook">
		   	                		<a class="ebook_img" href="/kidi/index.html" target="_blank">
										<img class="profileImg" style="border-radius: 10px;" src="/images/egovframework/com/jpg/kidi_ebook-thumb.png">
									</a>
		   	                	</div>
		   	                	-->
		   	                	
			   	                <c:forEach var="item" items="${resultList }" >
			   	                	  	                	
				   	                <div class="ebook">
				   	                	                					
			                        	<%-- <a href="/cop/bbs/selectArticleDetail.do?nttId=${item.nttId}&bbsId=${item.bbsId}">			                        	
											<!--img class="profileImg" src="http://kidi.re.kr/cmm/fms/getImage.do?atchFileId=${item.atchFileId}" style="width:100%;"-->
											<img class="profileImg" src="${item.filePath}" style="width:100%;">
												<span class="peo_intro_name2">
													<c:if test="${item.empPosi !='' && item.empPosi != null}">
														${item.empPosi} 
													</c:if>${fn:substring(item.nttSj,0,15)}
													<c:out value='${item.frstRegistPnttm }' />
												</span>
											<div class="<c:if test="${articleVO.bbsId == 'BBSMSTR_000000000086'}">over1</c:if>">
												<div class="fsd_p_box">
													<p class="gear_sj3E"><c:out value='${item.nttCn }' /></p>
													<hr/>
												</div>
											</div>			                            
			                        	</a> --%>
			                        	
			                        	<c:if test="${boardMasterVO.bbsId == 'BBSMSTR_000000000201'}">
			                        	
			                        		<c:import url="/cmm/fms/selectFileInfs_n.do" charEncoding="utf-8">
												<c:param name="param_atchFileId" value="${item.atchFileId}" />
												<c:param name="param_atchNm" value="${item.nttSj}" />
												
												<c:param name="link" value="${item.address}" />
												<c:param name="ctype" value="${item.ctype}" />
											</c:import>
											<div style="position: absolute; bottom: 10px; padding-left:10px;">
											  <%-- <input type="checkbox" id="input_check" name="input_check[]" value="${item.nttId}" />
											  <input type="hidden" id="input_check_hideen" name="input_check" value=""> --%>
											  <c:if test="${user.id == 'webmaster' || user.id == boardMasterVO.bbsAdmin}">
											  	<a href="/cop/bbs/selectArticleDetail.do?nttId=${item.nttId}&bbsId=${boardMasterVO.bbsId}" class="show_btn">보기</a>
											  </c:if>
											</div>
										</c:if>
											                        	
				                    </div>
		   	                    </c:forEach>
		   	                    <c:if test="${fn:length(resultList) == 0}">
		   	                    <p class="none_txt">등록된 정보가 없습니다.</p>
		   	                    </c:if>
			                </div>
		             
			            <c:if test="${user.id == 'webmaster' || user.id == boardMasterVO.bbsAdmin}">
					        <div class="btn" style="margin-top: 30px;">
								<span class="btn_c">
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
	
	

<script>

function fn_egov_select_linkPage(pageNo){
	$("#pageNation .pageIndexVal").val(pageNo);
	$("#pageNation").submit();
}

</script>	

	 
	<!--end container-->
<%@ include file="/WEB-INF/jsp/egovframework/com/jpg/include/footer.jsp" %>