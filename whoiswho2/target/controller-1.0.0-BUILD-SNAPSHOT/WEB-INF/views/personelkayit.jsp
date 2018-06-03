<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; charset=UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>


<script type="text/javascript">
	// göster/gizle
	
	function showMe() {
		
		var x = document.getElementById("departman").value;
		var div1 = document.getElementById("1");
		var div2 = document.getElementById("2");
		var div3 = document.getElementById("3");
		var div4 = document.getElementById("4"); 
		if (x == 1) {
			div1.style.display = "block";
			div2.style.display = "none";
			div3.style.display = "none";
			div4.style.display = "none";
		}
		if (x == 2) {
			div2.style.display = "block";
			div1.style.display = "none";
			div3.style.display = "none";
			div4.style.display = "none";
		}
		if (x == 3) {
			div3.style.display = "block";
			div1.style.display = "none";
			div2.style.display = "none";
			div4.style.display = "none";
		}
		if (x == 4) {
			div4.style.display = "block";
			div1.style.display = "none";
			div3.style.display = "none";
			div2.style.display = "none";
		}
		
		//all checkbox checked false
		 var w = document.getElementsByTagName('input'); 
	      for(var i = 0; i < w.length; i++){ 
	        if(w[i].type=='checkbox'){ 
	          w[i].checked = false; 
	        }
	      }

	}
</script>


<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">

<!-- Website CSS style -->
<link rel="stylesheet" type="text/css" href="assets/css/main.css">

<!-- Website Font style -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">

<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Passion+One'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen'
	rel='stylesheet' type='text/css'>

<title>Admin</title>

<style>
body, html {
	height: 100%;
	background-repeat: no-repeat;
	background-color: #d3d3d3;
	font-family: 'Oxygen', sans-serif;
}

.main {
	margin-top: 70px;
}

h1.title {
	font-size: 50px;
	font-family: 'Passion One', cursive;
	font-weight: 400;
}

hr {
	width: 10%;
	color: #fff;
}

.form-group {
	margin-bottom: 15px;
}

label {
	margin-bottom: 15px;
}

input, input::-webkit-input-placeholder {
	font-size: 11px;
	padding-top: 3px;
}

.main-login {
	background-color: #fff;
	/* shadows and rounded borders */
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	-moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	-webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
}

.main-center {
	margin-top: 30px;
	margin: 0 auto;
	max-width: 330px;
	padding: 40px 40px;
}

.login-button {
	margin-top: 5px;
}

.login-register {
	font-size: 11px;
	text-align: center;
}
</style>
</head>
<body>

	<div class="container">
		<div class="row main">
			<div class="panel-heading">
				<div class="panel-title text-center">
					<h1 class="title">Personel Kayıt</h1>
					<hr />
				</div>
			</div>
			<div class="main-login main-center">
				<form:form class="form-horizontal" method="post"
					action="personelkayit" commandName="personel">

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


					<div class="form-group ">
						<button type="submit"
							class="btn btn-primary btn-lg btn-block login-button">Kaydet</button>
					</div>

				</form:form>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="assets/js/bootstrap.js"></script>
</body>
</html>