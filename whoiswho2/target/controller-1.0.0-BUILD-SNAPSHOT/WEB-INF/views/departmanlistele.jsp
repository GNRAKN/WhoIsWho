<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<html>
<head>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
</head>
<body>

	<div class="container">
		<div class="span3 well" align="center">

			
			<h3>Hoşgeldiniz</h3>
			

		</div>



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


</body>
</html>