<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>${param.title }</title>
<meta name="description" content="${param.title }">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<style>
.file-input-wrapper {
	overflow: hidden;
	position: relative;
	cursor: pointer;
	z-index: 1;
}

.file-input-wrapper input[type=file], .file-input-wrapper input[type=file]:focus,
	.file-input-wrapper input[type=file]:hover {
	position: absolute;
	top: 0;
	left: 0;
	cursor: pointer;
	opacity: 0;
	filter: alpha(opacity = 0);
	z-index: 99;
	outline: 0;
}

.file-input-name {
	margin-left: 8px;
}
</style>
<link rel="stylesheet" href="<c:url value="/theme/Template-Admin/css/bootstrap.css"/>">
<link rel="stylesheet"
	href="<c:url value="/theme/Template-Admin/css/font-awesome.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/theme/Template-Admin/css/plugin.css"/>">
<link rel="stylesheet"
	href="<c:url value="/theme/Template-Admin/css/style.css"/>">
<!--[if lt IE 9]>
    <link rel="stylesheet" href="<c:url value="/theme/Template-Admincss/ie.css"/>">
    <script src="<c:url value="/theme/Template-Adminjs/ie/respond.min.js"/>"></script>
    <script src="<c:url value="/theme/Template-Admin/js/ie/html5.js"/>"></script>
    <script src="<c:url value="/theme/Template-Admin/js/ie/excanvas.js"/>"></script>
  <![endif]-->

</head>







<header id="header" class="navbar navbar-sm bg bg-black">
	<ul class="nav navbar-nav navbar-avatar pull-right">
		<li class="dropdown"><a href="#" class="dropdown-toggle"
			data-toggle="dropdown"> <span class="hidden-sm-only">Deni
					Test</span> <span class="thumb-small avatar inline"><img
					src="<c:url value="/theme/Template-Admin/images/avatar.jpg"/>"
					alt="Mika Sokeil" class="img-circle"></span> <b
				class="caret hidden-sm-only"></b>
		</a>
			<ul class="dropdown-menu">
				<li><a href="signin.html">Logout</a></li>
			</ul></li>
	</ul>
	<a class="navbar-brand" href="#">crm</a>
	<button type="button"
		class="btn btn-link pull-left nav-toggle hidden-lg"
		data-toggle="class:show" data-target="#nav">
		<i class="icon-reorder icon-xlarge text-default"></i>
	</button>

</header>


<nav id="nav" class="nav-primary visible-lg nav-vertical">
    <ul class="nav affix" data-spy="affix" data-offset-top="50">
      <li><a href="<c:url value="/"/>"><i class="icon-dashboard icon-xlarge"></i>Acceuil</a></li>
      <li class="dropdown-submenu">
        <a href="<c:url value="/echange/listAction.action"/>"><i class="icon-comments icon-xlarge"></i>Echange</a>
        <ul class="dropdown-menu">
          <li><a href="<c:url value="/echange/listAction.action"/>">List echanges</a></li>
          <li><a href="<c:url value="/echange/InitUpdateAction.action"/>">Nouvel echange</a></li>    
        </ul>
      </li>
      <li class="dropdown-submenu">
        <a href="<c:url value="/contact/listAction.action"/>"><i class="icon-group icon-xlarge"></i>Contact</a>
        <ul class="dropdown-menu">
           <li><a href="<c:url value="/contact/listAction.action"/>">List contacts</a></li>
          <li><a href="<c:url value="/contact/InitUpdateAction.action"/>">Nouveau contact</a></li> 
        </ul>
      </li>
	<li class="dropdown-submenu">
        <a href="<c:url value="/entreprise/listAction.action"/>"><i class="icon-building icon-xlarge"></i>Entreprise</a>
        <ul class="dropdown-menu">
           <li><a href="<c:url value="/entreprise/listAction.action"/>">List entreprise</a></li>
          <li><a href="<c:url value="/entreprise/InitUpdateAction.action"/>">Nouvel entreprise</a></li> 
        </ul>
      </li>
 	
     
    </ul>
  </nav>
  
  
  