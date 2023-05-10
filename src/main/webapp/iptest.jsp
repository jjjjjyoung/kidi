<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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



<c:set var="iptest" value="<%=getClientIP(request)%>" />

<c:if test="${iptest eq '221.144.12.3'}">
 
  <a>111111</a>
 
</c:if>