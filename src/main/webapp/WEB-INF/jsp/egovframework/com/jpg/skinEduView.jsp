<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:import url="/menu.do"/>

<script>
$(function(){
    $('html > head > title').text('채용공고|채용정보');
});

$(document).ready(function(){
	$('.submit_art_sele06').click(function(){
		$('.joygrason_pop_cisses').fadeIn('slow')
	})
	$('.fgesd_close').click(function(){
		$('.joygrason_pop_cisses').fadeOut('slow')
	})
})

</script>

<link rel="stylesheet" href="/css/egovframework/com/jpg/style.css">

<div id="subWrap" class="sub0<c:out value='${fn:substring(meCode,0,1) }'/>">
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

<!--                 <form method="post" class="schForm">
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

	        <!--list 페이지에서 앞에 '교육'이라고 쓰여있는 글 클릭하면 '교육프로그램'
	            '체험'이라고 쓰여있는 글 클릭하면 '체험프로그램' 바뀌게-->
	        <div id="go_direct" style="position:absolute; top:40%"></div>
	        <div class="page_title">채용정보</div>
	
	        <div class="view_table2 job">
	            <!--start con01-->
	            <div class="con01">
	                <div class="inner">
	                    <div class="vw_head">
							<div class="title">
								<span class="txtGray"><c:out value="${result.eduSubTitle}"/></span>
								<strong><c:out value="${result.nttSj}"/></strong>
							</div>
							<div class="detail">
								<div class="left">
									<table>
										<tr>
											<th>구분</td>
											<c:if test="${result.eduVal == '1'}">
												<td>채용</td>
												</c:if>
												<c:if test="${result.eduVal == '2'}">
												<td>발표</td>
											</c:if>
										</tr>
										<tr>
											<th>담당자</th>
											<td><span><c:out value="${result.eduManagerNm}"/></span><span class="blank">&nbsp;|&nbsp;</span><span><c:out value="${result.eduManagerTel}"/></span></td>
										</tr>
									</table>
								</div>
								<div class="right ojfas_fast">

									<table>
										<!--<tr>
											<td>교육명</td>
											<td><c:out value="${result.nttSj}"/></td>
										</tr>-->
										<tr>
											<th>접수기간</th>
											<td><c:out value="${fn:substring(result.applySdate,0,10)}"/> ~ <c:out value="${fn:substring(result.applyEdate,0,10)}"/></td>
										</tr>
										<tr>
											<th>작성자</th>
											<td><span class="txtPink"><c:out value='${result.frstRegisterNm}'/></span></span></td>
										</tr>
									</table>
								</div>
							</div>

	                        <div class="file">
								<table>
									<tr style="border-top:1px solid #aaa; border-bottom:1px solid #ddd">
										<th>첨부파일</th>
										<td style="padding:10px 0">
											<ul class="bt vlxnl_4">
												<li class="file file_fxeto">
													<c:import url="/cmm/fms/selectFileInfs.do" charEncoding="utf-8">
														<c:param name="param_atchFileId" value="${result.atchFileId}" />
													</c:import>
												</li>
											</ul>
										</td>
									</tr>
								</table>
								
								<!--<div class="jpg_applyClass">
		                            <div class="btn_area5">
									<%--
	 	                        	<c:if test="${Today < fn:substring(result.applySdate,0,10) }">
		                            	<a href="javascript:alert('접수기간이 아닙니다.');">접수하기</a>
		                            </c:if>
		                            <c:if test="${Today > fn:substring(result.applySdate,0,10) && Today < fn:substring(result.applyEdate,0,10)}">
		                            	<a href="/eduRegist.do?nttId=<c:out value='${result.nttId}'/>&bbsId=<c:out value='${boardMasterVO.bbsId}'/>">접수하기</a>
		                            </c:if>
		                            <c:if test="${Today > fn:substring(result.applyEdate ,0,10) }">
		                            	<a href="javascript:alert('접수기간이 아닙니다.');">접수마감</a>
		                            </c:if>
		                             --%>
		                            <c:choose>
			                           	<c:when test="${Today < fn:substring(result.applySdate,0,10) }">
			                            	<a href="javascript:alert('접수기간이 아닙니다.');">접수하기</a>
			                            </c:when>
			                            <c:when test="${Today > fn:substring(result.applyEdate ,0,10) }">
			                            	<a href="javascript:alert('접수기간이 아닙니다.');" class="fin_enter_btn">접수마감</a>
			                            </c:when>
			                            
			                            <c:when test="${ user == null }">
	                           				<a href="javascript:alert('로그인 해주세요.');" class="vsdf_btn">접수하기</a>
	                           			</c:when>
	                           			
			                            <c:otherwise>
			                            	<a class="submit_art_sele06" style="cursor:pointer">접수하기</a>
			                            </c:otherwise>
			                            
		                            </c:choose>
		                        	</div>
		                        	
		                        	
		                        
								</div>-->
								<script>
								$(document).ready(function(){
									$('.whatApplySalexe').click(function(){
										$('.sig_fopdZe').fadeToggle('fast')
									})
								})
								</script>
	                        
							</div>
	                        
	                        
	                        <section class="joygrason_pop_cisses" style ="display:none">
	                        <form name="frm" id="frm" method="post" enctype="multipart/form-data">
	                        	<input type="hidden" name="nttId" value="<c:out value='${result.nttId}'/>">
								<p>신청자의 성함(실명)과 연락 가능한 연락처를 기입해주시기 바랍니다.</p>
								<div class="job-box">
									<table>
										<tr>
											<th>성함</th>
											<td><input type="text" name="eduApplyName" id="eduApplyName" style="margin-left:5px" required></td>
										</tr>
										<tr>
											<th>연락처</th>
											<td class="tel">
												<input id="eduApplyTel1" name="eduApplyTel1" type="text" size="10" maxlength="3" style="margin-left:5px" required>
												-
												<input id="eduApplyTel2" name="eduApplyTel2" type="text" size="10" maxlength="4" required>
												-
												<input id="eduApplyTel3" name="eduApplyTel3" type="text" size="10" maxlength="4" required>
											</td>
										</tr>
										<tr>
											<th>파일</th>
											<td><input type="file" name="j_file" id="j_file" style="margin-left:5px" required></td>
										</tr>
									</table>
								</div>
								<ul class="enter_box_list">
									<li><a onclick="applyUser()" style="cursor:pointer">접수하기</a></li>
									<li><p class="fgesd_close">닫기</p></li>
								</ul>
							</form>
							</section>
	                        
	                        
	                        
	                        
	                    </div>
	                    <!--end vw_head-->
	
	                    <div class="vw_con">
	
	                        <table>
								<tr>
									<th style="color: rgb(34, 34, 34); text-align: center; font-size: 24px; padding-bottom: 30px; font-weight: bold;"></th>
								</tr>
	                            <tr>
	                                <td>
	                                    <c:out value="${result.nttCn}" escapeXml="false"/>
	                                </td>
	                            </tr>
	                        </table>
	                    </div>
	                    <!--end vw_con-->
	
	                    <div class="btn_area4">
	                    	<div>
	                        	<!-- 
	                            <a class="prev_pg" href="#">다음글</a>
	                            <a class="next_pg" href="#">이전글</a>
	                            -->
	                            <c:if test="${user.id == 'webmaster' || user.id == boardMasterVO.bbsAdmin}">
	                            <form id="formDelete" name="formDelete" action="" method="post" style="float:right; margin:0 0 0 3px;">
									<input type="button" class="s_submit" id="uptBtn" value="수정" title="수정 버튼" style="width: 100px;height: 30px;line-height: 28px;text-align: center;border: 1px solid #999;color: #666;font-size: 15px;transition: all .2s;">
									<input type="button" class="s_submit" id="dltBtn" value="삭제" title="삭제 버튼" style="width: 100px;height: 30px;line-height: 28px;text-align: center;border: 1px solid #999;color: #666;font-size: 15px;transition: all .2s;">
									<input name="nttId" type="hidden" value="<c:out value='${result.nttId}'/>">
									<input name="bbsId" type="hidden" value="<c:out value='${result.bbsId }'/>">
								</form>
								</c:if>
	                        </div>
	                    
	                        <div class="list"><a href="/cop/bbs/selectArticleList.do?bbsId=<c:out value='${boardMasterVO.bbsId }'/>">목록보기</a></div>
	                    </div>

	                </div>
	                <!--end inner-->
	            </div>
	            <!--end con01-->
	        </div>
	        <!--end bo_v bo_v_ntc-->

		</div>
		<!--end contentWrap-->
    </div>
    <!--end container-->
</div>
<!--end subWrap-->
<script>


$("#eduApplyTel1,#eduApplyTel2,#eduApplyTel3").keyup(function(event){

	if (!(event.keyCode >=37 && event.keyCode<=40)) {
		var inputVal = $(this).val();	
		$(this).val(inputVal.replace(/[^0-9]/gi,''));
	}

});

$("#eduApplyName").keyup(function(event){

	if (!(event.keyCode >=37 && event.keyCode<=40)) {
		var inputVal = $(this).val();	
		$(this).val(inputVal.replace(/[0-9|~!@\#$%^&*\()\-=+_']/gi,''));
	}

});



function applyUser() {
	
	const regex = /^[ㄱ-ㅎ|가-힣|a-z|A-Z]+$/;
	
	if ($('#eduApplyName').val() == "") {
		alert("신청자 이름을 입력해주세요");
		$('#eduApplyName').focus();
		return false;
	}
	
	if(!regex.test($('#eduApplyName').val())){
		alert("한글,영어만 입력가능합니다.");
		return false;
	}
	
	if ($('#eduApplyTel1').val() == "" || $('#eduApplyTel2').val() == "" || $('#eduApplyTel3').val() == "") {
		alert("신청자 전화번호를 입력해주세요");
		$('#eduApplyTel').focus();
		return false;
	}
	
	if($("#j_file").val() == ""){
		alert("이력서파일을 등록해주세요");
		$('#j_file').focus();
		return false;
	}
	
	var nttId = $("input[name='nttId']").val();
	var tel = $('#eduApplyTel1').val()+"-"+$('#eduApplyTel2').val()+"-"+$('#eduApplyTel3').val();
	var rtn = true;
	
	$.ajax({
		type : "POST",
		dataType : "JSON",
		async:false,
		url : "/cop/bbs/ajaxJobCheck.do",
		data : {"nttId":nttId,"tel":tel},
		success : function(data){
			
			if(data.num > 0){
				alert("해당 채용공고에 이미 채용신청을 하셨습니다.");
				$('.joygrason_pop_cisses').fadeOut('slow');
				document.getElementById("frm").reset();
				rtn = false;
			}
			
		}
	});
	 
	if(!rtn){
		return false;
	}
	
	
	
	
	var queryString = document.getElementById("frm");
	formData = new FormData(queryString);
		
	$.ajax({

		contentType : false,
	    processData : false,
	    data : formData,
	    url : "/eduRegistNew.do",
	    type : 'post',
	    dataType : "JSON",
	    success : function(data){
	    	if(data.status == "ok"){
	    		alert("접수가 완료되었습니다.");
	    		location.reload();
	    	}
	    }
	});
	
	/* var edutype = document.getElementsByName('edutype');
	var edutype_value; 
	for(var i=0; i<edutype.length; i++) {
	    if(edutype[i].checked) {
	    	edutype_value = edutype[i].value;
	    }
	} */
	//location.href="/eduRegistNew.do?nttId=" + nttId + "&bbsId=BBSMSTR_000000000051&eduType=" + edutype_value + "&eduApplyTel=" + eduApplyTel + "&eduApplyName=" + eduApplyName  ;
}

$("#dltBtn").on("click", function() {
	if(confirm("<spring:message code="common.delete.msg" />")){	
		$("#formDelete").attr("action", "/cop/bbs/deleteArticle.do");
		$("#formDelete").submit();
	}		
});

$("#uptBtn").on("click", function() {
	$("#formDelete").attr("action", "/cop/bbs/updateArticleView.do");
	$("#formDelete").submit();
});
</script>

<%@ include file="/WEB-INF/jsp/egovframework/com/jpg/include/footer.jsp" %>