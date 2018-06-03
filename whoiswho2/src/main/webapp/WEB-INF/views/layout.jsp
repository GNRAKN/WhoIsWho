<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="tr">
<body>
<head>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/panel.css">
		

<script
			src="${pageContext.request.contextPath}/resources/js/panel.js"></script>
 
<title><tiles:insertAttribute name="title" ignore="true" /></title>  
</head>  
<body>  
		 
        <div><tiles:insertAttribute name="panel" /></div>  
       <div> <tiles:insertAttribute name="body" /></div>  
        <div style="clear:both"><tiles:insertAttribute name="footer" /></div>  
  
</body>  
</html>  