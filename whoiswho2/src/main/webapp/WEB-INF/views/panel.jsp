
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!-- PANEL SCRIPTLER -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<%@ page contentType="text/html; charset=UTF-8"%>


<!-- PANEL SCRIPTLER -->

<nav class="navbar navbar-default navbar-static-top">
    <div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle navbar-toggle-sidebar collapsed">
			MENU
			</button>
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${pageContext.request.contextPath}">
				Personel Takip Sistemi	
			</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">  
		
		<form:form action="${pageContext.request.contextPath}/personel/bilgi" class="navbar-form navbar-left" method="POST" commandName="personel">
                               <div class="form-group">
                                <form:input type="text" class="form-contro" placeholder="Personel Ara" path="personelAdi"></form:input>
                                  </div>  
                                  <button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-search"></i></button>
			</form:form>
			<ul class="nav navbar-nav navbar-right">
				
				<li class="dropdown ">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
						Hesap
						<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							
							<li><a href="${pageContext.request.contextPath}/logout">Çıkış</a></li>
						</ul>
					</li>
				</ul>
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav> 	<div class="container-fluid main-container">
  		<div class="col-md-2 sidebar">
  			<div class="row">
	<!-- uncomment code for absolute positioning tweek see top comment in css -->
	<div class="absolute-wrapper"> 
	<!-- Menu -->
	<div class="side-menu">
		<nav class="navbar navbar-default" role="navigation">
			<!-- Main Menu -->
			<div class="side-menu-container">
				<ul class="nav navbar-nav">
					<li class="active"><a href="${pageContext.request.contextPath}/admin/departman/list"><span class="glyphicon glyphicon-book"></span> Departmanlar</a></li>
					<sec:authorize access="hasRole('ROLE_ADMIN')">
					<li><a href="${pageContext.request.contextPath}/admin/personelkayit"><span class="glyphicon glyphicon-plus	"></span> Personel Kayıt</a></li>
					</sec:authorize>
					<li><a href="${pageContext.request.contextPath}/personel/bilgi"><span class="glyphicon glyphicon-search"></span> Personel Ara</a></li>

				</ul>
			</div><!-- /.navbar-collapse -->
		</nav>

	</div>
</div>  			</div></div>	

  		<div class="col-md-10 content">
  			  <div class="panel panel-default">
	<div class="panel-heading">
		
	</div>
	
	<div class="panel-body">

  		

	
		
	
