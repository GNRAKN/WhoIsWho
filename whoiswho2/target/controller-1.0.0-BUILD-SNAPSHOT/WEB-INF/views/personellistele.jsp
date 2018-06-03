<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<body>
<div class="container" >	
		<div class="span3 well" align="center">

			
			<h3>${departmanAdi}</h3>
			<em>Personel Listesi</em>

		</div>
	<div class="container">

		<table class="table table-striped custab">
			<thead>
				
				<tr>
					<th>Ad</th>
					<th>Telefon</th>
					<th>Profil</th>
				</tr>
			</thead>



			<c:forEach items="${personelList}" var="personel">
				<form:form id="form1"
					action="${pageContext.request.contextPath}/personel/detay"
					method="POST">
					<input type="hidden" id="personelId" name="personelId"
						value="${personel.personelId}" />
					<tr>
						<td>${personel.personelAdi}</td>
						<td>${personel.personelTelefon}</td>

						<td><button type="submit" class="btn btn-success">Detay'a
								Git</button></td>
					</tr>
				</form:form>
			</c:forEach>

		</table>
	</div>
</div>
</body>
</html>