<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8"%>


<tiles:insertDefinition name="layout">
	<tiles:putAttribute name="body">


<div class="col-md-12">

		<table class="table table-striped custab">
			<thead>

				<tr>

					<th>Departman</th>
					<th class="text-center">Personel Listesi</th>
				</tr>
			</thead>

			<c:forEach items="${departmanList }" var="departman">
				<form:form id="form1"
					action="${pageContext.request.contextPath}/personel/list"
					method="POST">
					<input type="hidden" id="departmanId" name="departmanId"
						value="${departman.departmanId}" />
					<input type="hidden" id="departmanAdi" name="departmanAdi"
						value="${departman.departmanAdi}" />
					<tr>

						<td>${departman.departmanAdi}</td>
						<td class="text-center">
							<button type="submit" class="btn btn-success">Görüntüle</button>

						</td>
					</tr>
				</form:form>
			</c:forEach>

		</table>


</div>


	</tiles:putAttribute>
</tiles:insertDefinition>