<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<style type="text/css">
body {
	padding-top: 30px;
}

.glyphicon {
	margin-bottom: 10px;
	margin-right: 10px;
}

small {
	display: block;
	line-height: 1.428571429;
	color: #999;
}
</style>

</head>
<body>

	<div id="myModal" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true"></button>
					<h4 class="modal-title" id="myModalLabel">Personel Detay</h4>
				</div>
				<div class="modal-body" align="center">

					<img
						src="${personel.personelFotoUrl}"
						name="aboutme" width="140" height="140" border="0"
						class="img-circle"></a>
					<h3 class="media-heading">${personel.personelAdi} ${personel.personelSoyadi} 
						<small>${personel.departman.departmanAdi}</small>
					</h3>
					<span><strong>Beceriler:  </strong></span>
					<c:forEach items="${personel.beceriler}" var="beceri">
					 <span
						class="label label-warning">${beceri.beceriAdi}</span></c:forEach> 

					<hr>

					<table class="table table-striped custab">



						<tr>
							<td>Pozisyon</td>
							<td>${personel.personelPozisyon}</td>

						</tr>


						<tr>
							<td>Telefon</td>
							<td>${personel.personelTelefon}</td>

						</tr>


						<tr>
							<td>E-posta</td>
							<td>${personel.personelEposta}</td>

						</tr>



					</table>
					<br>

				</div>
				<div class="modal-footer">
					<div align="center">
					
					<form:form id="form1"
					action="${pageContext.request.contextPath}/personel/guncelle"
					method="POST">
					<input type="hidden" id="personelId" name="personelId"
						value="${personel.personelId}" />
					

						<button type="submit" class="btn btn-success">Düzenle</button>
				
				</form:form>
						<button type="button" class="btn btn-default">Mesaj
							Gönder</button>
						<button type="button" class="btn btn-default">Mail Gönder</button>
						
					</div>
				</div>
			</div>
		</div>
	</div>

	


</body>
</html>