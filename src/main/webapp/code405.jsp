<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>한국섬진흥원_405 Error</title>
<link href="<c:url value='/css/egovframework/com/com.css' />" rel="stylesheet" type="text/css" />

<script language="javascript">
function fncGoAfterErrorPage(){
    history.back(-2);
}
</script>

<style>
	/* 스타일 추가 */
	body {
	    font-family: Arial, sans-serif;
	    background-color: #F4F4F4;
	    text-align: center;
	}
	h1 {
	    font-size: 100px;
	    color: #555555;
	}
	p {
	    font-size: 24px;
	    color: #777777;
	}
	a {
	    display: inline-block;
	    margin-top: 20px;
	    padding: 10px 20px;
	    background-color: #337AB7;
	    color: #FFFFFF;
	    border-radius: 5px;
	    text-decoration: none;
	    font-size: 20px;
	}
	a:hover {
	    background-color: #286090;
	}
	img {
		margin-top: 50px;
		width: 120px;
	}
</style>

</head>

<body>

<!--
<div style="width: 1000px; margin: 50px auto 50px;">

	<p style="font-size: 18px; color: #000; margin-bottom: 10px; "><img width="236px" height="65px" src="<c:url value='/images/egovframework/com/cmm/main/lob_logo.png'/>" alt="egovframe" /></p>
	<div style="border: 0px solid #666; padding: 20px;">

		<p style="color:red; margin-bottom: 8px; ">405 Error</p>

		<div class="boxType1" style="width: 500px;">
			<div class="box">
				<div class="error">
					<p class="title">HTTP error fetching URL</p>
					<p class="cont mb20"><br /></p>
					<span class="btn_style1 blue"><a href="javascript:fncGoAfterErrorPage();">이전 페이지</a></span>
				</div>
			</div>
		</div>
	</div>

</div>
-->

<div style="margin-top: 150px;">
	<h1>405</h1>
	<p>서버 점검중입니다.</p>
	<p>Sorry, Checking the server.</p>
	<a href="/">메인페이지로 돌아가기</a>	
</div>
<img src="/images/egovframework/com/jpg/raineyeLogo.png" alt="레인아이 로고"/>

</body>
</html>
