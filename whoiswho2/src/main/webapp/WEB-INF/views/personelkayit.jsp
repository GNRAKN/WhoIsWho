<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<link
	href="${pageContext.request.contextPath}/resources/css/personelKayit.css"
	rel='stylesheet' type='text/css'>
	
	<script
			src="${pageContext.request.contextPath}/resources/js/personelKayit.js"></script>






<tiles:insertDefinition name="layout">
	<tiles:putAttribute name="body">

	
		<div class="row main">
			<div class="panel-heading">
				<div class="panel-title text-center">
					<h1 class="title">Personel Kayıt</h1>
					<hr />
				</div>
			</div>
			<div class="main-login main-center">
				<form:form class="form-horizontal" method="post"
					action="${pageContext.request.contextPath}/admin/personelkayit"
					commandName="personel">

					<div class="form-group">
						<label for="name" class="cols-sm-2 control-label">Ad</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-user fa"
									aria-hidden="true"></i></span>
								<form:input type="text" class="form-control" path="personelAdi"
									id="name" placeholder="Personel Ad" />
							</div>
						</div>
					</div>



					<div class="form-group">
						<label for="username" class="cols-sm-2 control-label">Soyad</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-user fa"
									aria-hidden="true"></i></span>
								<form:input type="text" class="form-control"
									path="personelSoyadi" id="username"
									placeholder="Personel Soyad" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="personelTelefon" class="cols-sm-2 control-label">Telefon</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-phone fa"
									aria-hidden="true"></i></span>
								<form:input type="text" class="form-control"
									path="personelTelefon" id="personelTelefon"
									placeholder="Personel Telefon" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="personelEposta" class="cols-sm-2 control-label">E-posta</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-envelope"
									aria-hidden="true"></i></span>
								<form:input type="text" class="form-control"
									path="personelEposta" id="personelEposta"
									placeholder="Personel E-posta" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="personelFotoUrl" class="cols-sm-2 control-label">Fotoğraf</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="fa fa-file-photo-o" aria-hidden="true"></i></span>
								<form:input type="text" class="form-control"
									path="personelFotoUrl" id="personelFotoUrl"
									placeholder="Personel Foto" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="personelPozisyon" class="cols-sm-2 control-label">Pozisyon</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-rocket"
									aria-hidden="true"></i></span>
								<form:input type="text" class="form-control"
									path="personelPozisyon" id="personelPozisyon"
									placeholder="Personel Pozisyon" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="personelPozisyon" class="cols-sm-2 control-label">Departman</label>
						<div class="cols-sm-10">
							<div class="input-group">

								<select id="departman" name="departmanId" onchange="showMe();">

									<c:forEach items="${departmanMap}" var="departman">
										<option value="${departman.key}">${departman.value}</option>

									</c:forEach>
								</select>
							</div>
						</div>
					</div>

					<div id="hideMe" class="form-group">
						<label for="personelPozisyon" class="cols-sm-2 control-label">Beceriler</label>
						<div class="cols-sm-10">
							<div class="input-group">


								<div id="1">
									<c:forEach items="${yazilimMap}" var="yazilim">
										<input type="checkbox" id="beceri" name="beceri"
											value="${yazilim.key}">${yazilim.value}<br>
									</c:forEach>
								</div>

								<div id="2" hidden="true">
									<c:forEach items="${donanimMap}" var="donanim">
										<input type="checkbox" id="beceri" name="beceri"
											value="${donanim.key}">${donanim.value}<br>
									</c:forEach>
								</div>

								<div id="3" hidden="true">
									<c:forEach items="${agMap}" var="ag">
										<input type="checkbox" id="beceri" name="beceri"
											value="${ag.key}">${ag.value}<br>
									</c:forEach>
								</div>

								<div id="4" hidden="true">
									<c:forEach items="${testMap}" var="test">
										<input type="checkbox" id="beceri" name="beceri"
											value="${test.key}">${test.value}<br>
									</c:forEach>
								</div>

							</div>
						</div>
					</div>


					<div class="form-group">
						<label for="username" class="cols-sm-2 control-label">username</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-rocket"
									aria-hidden="true"></i></span>
								<form:input type="text" class="form-control"
									path="user.username" placeholder="username" />
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="password" class="cols-sm-2 control-label">password</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-rocket"
									aria-hidden="true"></i></span>
								<form:input type="text" class="form-control"
									path="user.password" placeholder="username" />
							</div>
						</div>
					</div>



					
					<div class="form-group">
						<label for="role" class="cols-sm-2 control-label">Role</label>
						<div class="cols-sm-10">
							<div class="input-group">

								<select id="role" name="role">

									<option value="ROLE_ADMIN">ROLE_ADMIN</option>
									<option value="ROLE_USER">ROLE_USER</option>

								</select>
							</div>
						</div>
					</div>


					<div class="form-group ">
						<button type="submit"
							class="btn btn-primary btn-lg btn-block login-button">Kaydet</button>
					</div>


				</form:form>
			</div>
		</div>
	

	</tiles:putAttribute>
</tiles:insertDefinition>


