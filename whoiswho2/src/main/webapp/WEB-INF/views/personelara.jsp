<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page session="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link
	href="${pageContext.request.contextPath}/resources/css/personelKayit.css"
	rel='stylesheet' type='text/css'>
	
</head>
<body>

<div class="container">
<div class="span3 well" align="center">

			
			<h3>Personel Ara</h3>
			

		</div>
	<div class="row">
		<div class="container">
           <div id="custom-search-input">
                            <div class="input-group col-md-12">
                            <form:form action="${pageContext.request.contextPath}/personel/bilgi" class="input-group col-md-12" method="POST" commandName="personel">
                                <form:input type="text" class="  search-query form-control" placeholder="Search" path="personelAdi"></form:input>
                              
                                <span class="input-group-btn">
                                    <button class="btn btn-danger" type="submit">
                                        <span class=" glyphicon glyphicon-search"></span>
                                    </button>
                                    
                                </span>
                                </form:form>
                            </div>
                        </div>
	</div>
	</div>
</div>

</body>
</html>