<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:import url="/menu.do"/>

<script>
$(function(){
    $('html > head > title').text('채용공고');
});
</script>

<style>
#writeBtn {
	float: right;
    width: 100px;
    margin-left: 10px;
    height: 40px;
    line-height: 40px;
    text-align: center;
    display: block;
    background: #666;
    color: #fff;
    font-size: .9rem;
    cursor: pointer;
}
</style>

<link rel="stylesheet" href="/css/egovframework/com/jpg/style.css">


<div id="subWrap" class="sub0<c:out value='${fn:substring(meCode,0,1) }'/> pro">
    <div class="sub_visual">
    	<c:choose>
	    	<c:when test='${fn:substring(meCode,0,1).equals("5") }'>
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
            </div>
            <!--end inner-->
        </div>
        <!--end sub_top-->


        <!--start content-->
        <div class="contentWrap">
	        <div class="page_title">채용공고</div>
	        <div id="go_direct" style="position:absolute; top:45%"></div>

	        <!--start con02-->
	        <div class="con02">
	            <div class="inner">
	                <div id="bo_btn_top">
	                    <div id="bo_list_total">
	                        <span> <c:out value="${paginationInfo.currentPageNo }"/> /</span>
	                        <c:out value="${paginationInfo.totalPageCount }"/> 페이지
	                    </div>
	                    
	                    <form method="post" class="schForm" action="/cop/bbs/selectArticleList.do" name="BoardVO">
	                        <div class="select_box">
		        		    	<select name="searchCnd" title="분류">
                                    <option value="1">제목</option>
                                    <option value="2">내용</option>
                                    <option value="3">제목+내용</option>
                                </select>
                            </div>
	        	            <input type="text" id="searchWrd" name="searchWrd" placeholder="검색어를 입력하세요" value="${articleVO.searchWrd }" title="검색어 입력">
	        	            
	        	            <input class="bbsIdVal" name="bbsId" type="hidden" value="<c:out value="${boardMasterVO.bbsId }"/>">
	        	            <!-- <input class="skinVal" name="skin" type="hidden" value=""/> -->
	        	            <button type="submit">검색</button>
	                    </form>
	                    <form id="pageNation" name="BoardVO" method="post"
							action="/cop/bbs/selectArticleList.do" style="display: hidden">
							<input class="bbsIdVal" name="bbsId" type="hidden"
								value="<c:out value="${boardMasterVO.bbsId }"/>"> <input
								class="pageIndexVal" name="pageIndex" type="hidden" value="" />
							<input class="skinVal" name="skin" type="hidden"
								value="<c:out value="${boardMasterVO.bbsTyCode }"/>" />
						</form>
	                <!--end search-->
   	                </div>
	                <!--end bo_btn_top-->
	
	                <div class="ntc_table">
	                    <table>
							<colgroup>
								<col width="5%">
								<col width="60%">
								<col width="25%">
								<col width="15%">
							</colgroup>
	                        <tr style="border-top: 2px solid rgb(51, 51, 51); border-bottom: 2px solid rgb(51, 51, 51);">
	                            <th style="padding: 10px 0px;">구분</th>
	                            <th class="c_name">채용공고명</th>
	                            <th class="app_date vhksd_s2">접수기간</th>
	                            <th class="rcp_status">접수상태</th>
	                        </tr>
	                        <c:forEach items="${resultList}" var="resultInfo" varStatus="status">
	                        <tr>
	                            <c:if test="${resultInfo.eduVal == '1'}">	
	                   				<td class="txtBlue">채용</td>
	               				</c:if>
	              				<c:if test="${resultInfo.eduVal == '2'}">	
	                   				<td class="txtGreen">발표</td>
	                   			</c:if>
	                   			<td class="c_name">
	                            <form name="subForm" method="get" action="<c:url value='/cop/bbs/selectArticleDetail.do'/>">
								    <input name="nttId" type="hidden" value="<c:out value="${resultInfo.nttId}"/>">
								    <input name="bbsId" type="hidden" value="<c:out value="${resultInfo.bbsId}"/>">
								    <input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
								    <input name="skin" type="hidden" value="<c:out value='${resultInfo.bbsTyCode}'/>"/>
								    <input type="submit" id="subject" value='<c:out value="${resultInfo.eduSubTitle} ${resultInfo.nttSj}"/>'/>
								</form>
								</td>
	                            <td class="app_date"><c:out value="${fn:substring(resultInfo.applySdate,0,10)}"/> ~ <c:out value="${fn:substring(resultInfo.applyEdate,0,10)}"/></td>

	                           	<c:choose>
		                           	<c:when test="${Today < fn:substring(resultInfo.applySdate,0,10) }">
		                            	<td class="rcp_status before"><span>접수 전</span></td>
		                            </c:when>
		                            <c:when test="${Today > fn:substring(resultInfo.applyEdate ,0,10) }">
		                            	<td class="rcp_status end"><span>접수마감</span></td>
		                            </c:when>
		                            <c:otherwise>
		                            	<td class="rcp_status ing"><span>접수 중</span></td>
		                            </c:otherwise>
	                            </c:choose>
								<c:if test="${fn:length(resultList) == 0}">
								<tr>
									<td colspan="4" style="text-align:center ;">자료가 없습니다.</td> <!-- 다른 검색 조건 텍스트 수정 위치 -->
								</tr>
							</c:if>
	                        </tr>
	                        </c:forEach>
	                    </table>
	                </div>
	            </div>
	            <!--end inner-->
	        </div>
	        <!--end con02-->
	        
	        <div class="btn">
	        	<form id="writeForm" name="writeForm" method="post" action="<c:url value='/cop/bbs/insertArticleView.do'/>">
	        		<input name="bbsId" type="hidden" value="<c:out value="${boardMasterVO.bbsId}"/>">
	        		<c:if test="${user.id =='webmaster' || user.id == boardMasterVO.bbsAdmin }"> 
	            		<input type="button" class="s_submit" id="writeBtn" value="글쓰기" title="글쓰기 버튼">
	            	</c:if>
	            </form>
	        </div>
	
	        <!-- <div class="pageindex">
	            <div class="inner">
	                <div class="prev"><a href="#">이전</a></div>
	                <div class="num on"><a href="#">1</a></div>
	                <div class="num"><a href="#">2</a></div>
	                <div class="num"><a href="#">3</a></div>
	                <div class="num"><a href="#">4</a></div>
	                <div class="num"><a href="#">5</a></div>
	                <div class="num"><a href="#">6</a></div>
	                <div class="num"><a href="#">7</a></div>
	                <div class="num"><a href="#">8</a></div>
	                <div class="num"><a href="#">9</a></div>
	                <div class="next"><a href="#">다음</a></div>
	            </div>
	            end inner
	        </div> -->
	        
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
    <!--end container-->
</div>
<!--end subWrap-->

<script>

$(function(){
	$('#gnb > ul > li:nth-of-type(3)').addClass('on2');
	
});

function fn_egov_select_linkPage(pageNo){
	$("#pageNation .pageIndexVal").val(pageNo);
	$("#pageNation").submit();
}

$("#writeBtn").on("click", function() {
	$("#writeForm").submit();
});
</script>
	
<%@ include file="/WEB-INF/jsp/egovframework/com/jpg/include/footer.jsp" %>