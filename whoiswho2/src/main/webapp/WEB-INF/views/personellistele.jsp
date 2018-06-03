<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; charset=UTF-8"%>



<tiles:insertDefinition name="layout">
	<tiles:putAttribute name="body">
	<div class="col-md-12">
		<div class="span3 well" align="center">


			<h3>${departmanAdi}</h3>
			<em>Personel Listesi</em>

		</div>
		

			<table class="table table-striped custab">
				<thead>

					<tr>
						<th>Ad</th>
						<th>Soyad</th>
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
							<td>${personel.personelSoyadi}</td>
							<td>${personel.personelTelefon}</td>

							<td><button type="submit" class="btn btn-success">Detay'a
									Git</button></td>

						</tr>
					</form:form>
				</c:forEach>

			</table>
		</div>



	</tiles:putAttribute>
</tiles:insertDefinition>