<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<body>
<head>

<style type="text/css">
body { padding-top:20px; }
.panel-body .btn:not(.btn-block) { width:150px;margin-bottom:10px; }
</style>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
</head>
<div class="container">
	<div class="span3 well" align="center">


		<h3>Personel Takip</h3>


	</div>
	<div class="row">
		<div class="container">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">
						<span class="glyphicon glyphicon-home"></span> Hoşgeldiniz
					</h3>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-xs-12 col-md-12" align="center">
							<a href="departman/list" class="btn btn-primary btn-lg" role="button"><span
								class="glyphicon glyphicon-user"></span> <br />Departmanlar</a>
								<a href="personelkayit" class="btn btn-primary  btn-lg" role="button"><span
								class="glyphicon glyphicon-plus"></span> <br />Personel Ekle</a>
								 <a href="#" class="btn btn-warning  btn-lg" role="button"><span
								class="glyphicon glyphicon-refresh"></span> <br />Güncelle</a>
								 <a
								href="#" class="btn btn-danger btn-lg" role="button"><span
								class="glyphicon glyphicon-trash"></span> <br />Personel
								Sil</a> 
							
							
							<a href="personel/bilgi" class="btn btn-success  btn-lg" role="button"><span
								class="glyphicon glyphicon-search"></span> <br />Personel Ara</a> <a
								href="#" class="btn btn-primary  btn-lg" role="button"><span
								class="glyphicon glyphicon-envelope"></span> <br />Gelen Kutusu</a>
							<a href="#" class="btn btn-danger  btn-lg" role="button"><span
								class="glyphicon glyphicon-off"></span> <br />Çıkış</a>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>