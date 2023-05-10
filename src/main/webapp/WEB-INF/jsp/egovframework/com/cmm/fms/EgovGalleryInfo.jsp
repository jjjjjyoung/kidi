<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%

/**
  * @Class Name : EgovGalleryDetail.jsp
  * @Description : 갤러리 상세
  * @Modification Information
  * @
  * @ 수정일   	       수정자		수정내용
  * @ ----------	------		---------------------------
  * @ 2009.03.26	이삼섭		최초 생성
  *   2011.07.20	옥찬우		<Input> Tag id속성 추가( Line : 68 )
  *   2018.09.11	신용호		불필요한 function 삭제 - fn_egov_multi_selector_update_delete
  *
  *  @author 공통서비스 개발팀 이삼섭
  *  @since 2009.03.26
  *  @version 1.0
  *  @see
  */
%>
<!-- link href="<c:url value='/css/egovframework/com/com.css' />" rel="stylesheet" type="text/css"-->

<!-- <script type="text/javascript">
</script> -->

<c:forEach var="fileVO" items="${fileList}" varStatus="status">
	<div>
		<ul>
			<!--<img class="profileImg" src="/images/egovframework/com/jpg/mini_pop01.PNG" style="width:100%;">-->
			<img class="profileImg" src="${fn:replace(fileVO.filePath, '/kidijsp/', '')}" style="width:100%;">
		</ul>
    </div>
    <!-- <div style="margin-top:30px;"/> -->
    
</c:forEach>
    
	
