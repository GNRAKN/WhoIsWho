<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head><link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ----------></head>

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