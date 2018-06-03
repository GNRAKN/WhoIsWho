<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ page session="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ page contentType="text/html; charset=UTF-8"%>



<tiles:insertDefinition name="layout">
	<tiles:putAttribute name="body">


		<div class="modal-body" align="center">

			<img src="${personel.personelFotoUrl}" name="aboutme" width="140"
				height="140" border="0" class="img-circle">
			<h3 class="media-heading">${personel.personelAdi}
				${personel.personelSoyadi} <small>${personel.departman.departmanAdi}</small>
			</h3>
			<span><strong>Beceriler: </strong></span>
			<c:forEach items="${personel.beceriler}" var="beceri">
				<span class="label label-info">${beceri.beceriAdi}</span>
			</c:forEach>

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



				<div class="button-group">
					<form:form id="formEmail"
						action="${pageContext.request.contextPath}/sendEmail"
						method="POST">
						<input type="hidden" id="personelEposta" name="personelEposta"
							value="${personel.personelEposta}" />

						<button type="submit" class="btn btn-warning">Mail Gönder
						</button>

					</form:form>

					<hr>

					<form:form id="form1"
						action="${pageContext.request.contextPath}/admin/personelguncelle"
						method="POST">
						<input type="hidden" id="personelId" name="personelId"
							value="${personel.personelId}" />
						<sec:authorize access="hasRole('ROLE_ADMIN')">
							<button type="submit" class="btn btn-warning">Düzenle</button>
						</sec:authorize>
					</form:form>


				</div>

			</div>
</div>

	</tiles:putAttribute>
</tiles:insertDefinition>
