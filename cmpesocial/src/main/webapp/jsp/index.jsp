<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"
	scope="application" />
<c:set var="requestURI" value="${pageContext.request.requestURI}"
	scope="application" />
<!DOCTYPE html>
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Cmpe Social</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,900,300italic,400italic,600italic,700italic'
	rel='stylesheet' type='text/css'>

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="apple-touch-icon" href="apple-touch-icon-precomposed.png">
<link rel="shortcut icon" href="favicon.png">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/assets/bootstrap/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/assets/bootstrap/css/jquery.datetimepicker.css">
<link rel="stylesheet"
	href="${contextPath}/assets/bootstrap/css/main.css">
<script src="${contextPath}/assets/js/vendor/modernizr-2.6.2.min.js"></script>
<script type="text/javascript">
	var switchTo5x = true;
</script>
<script type="text/javascript"
	src="http://w.sharethis.com/button/buttons.js"></script>
<script type="text/javascript">
	stLight.options({
		publisher : "ur-b4964695-8b2f-20dd-2ced-c9f6141de24c",
		doNotHash : false,
		doNotCopy : false,
		hashAddressBar : false
	});
</script>
</head>
<body>

	<!--[if lt IE 7]>
<p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->
	<!-- Header -->
	<header class="header-container">
		<!-- Main Header  -->
		<div class="main-header affix">
			<!-- Moblie Nav Wrapper  -->
			<div class="mobile-nav-wrapper">
				<div class="container ">

					<!-- logo  -->
					<div id="logo">
						<a href="index.htm"><img
							src="${contextPath}/assets/img/logo.png" alt=""></a>
					</div>

					<div id="sb-search" class="sb-search">
						<form>
							<input class="sb-search-input"
								placeholder="People, Events and more" type="text" name="search"
								id="search"> <input class="sb-search-submit"
								type="submit" value=""> <span class="sb-icon-search"></span>
						</form>
					</div>
					<!-- moblie-menu-icon -->

					<div class="mobile-menu-icon">
						<i class="fa fa-bars"></i>
					</div>

					<!-- Nav -->
					<nav class="main-nav mobile-menu">

						<ul class="clearfix">
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- header -->


	<!-- Event Form -->
	<br />
	<!-- Events -->
	<section class="events newsection">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<aside id="aside" class="aside-bar-style-two clearfix">
						<div class="widget clearfix">
							<h2>All Events</h2>
							<hr />
							<c:forEach var="event" items="${events}" varStatus="roop">
								<a href="${contextPath}/event/delete?id=${event.id}">Delete</a>
								<div class="top-ppost">
									<div class="date">
										<p>
											{event.date} <span>31</span>OCT
										</p>
									</div>
									<div class="content">
										<h4 class="title">
											<a href="${contextPath}/event/view?id=${event.id}">${event.name}</a>
										</h4>
										<a href="#" class="meta"><i class="icon fa fa-map-marker"></i>${event.location}</a>
									</div>
								</div>
								<br />
							</c:forEach>
							<div class="top-ppost">
								<div class="date">
									<p>
										<span>31</span>OCT
									</p>
								</div>
								<div class="content">
									<h4 class="title">
										<a href="#">Arkadaşlar, halı saha maçı yapalım diyen?</a>
									</h4>
									<a href="#" class="meta"><i class="icon fa fa-map-marker"></i>Etiler
									</a>
								</div>
							</div>
							<br />
							<div class="top-ppost">
								<div class="date">
									<p>
										<span>25</span>OCT
									</p>
								</div>
								<div class="content">
									<h4 class="title">
										<a href="#">Paint Ball Turnuvası diyorum. </a>
									</h4>
									<a href="#" class="meta"><i class="icon fa fa-map-marker"></i>Kilyos</a>
								</div>
							</div>
							<br />
							<div class="top-ppost">
								<div class="date">
									<p>
										<span>23</span>OCT
									</p>
								</div>
								<div class="content">
									<h4 class="title">
										<a href="#">Pes 2016 oynamak isteyen var mı? </a>
									</h4>
									<a href="#" class="meta"><i class="icon fa fa-map-marker"></i>Cafe</a>
								</div>
							</div>
							<br />
							<div class="top-ppost">
								<div class="date">
									<p>
										<span>15</span>OCT
									</p>
								</div>
								<div class="content">
									<h4 class="title">
										<a href="#">Mission Impossible'i izlemek için sinemaya
											gidiyoruz</a>
									</h4>
									<a href="#" class="meta"><i class="icon fa fa-map-marker"></i>Trump
										Alışveriş Merkezi</a>
								</div>
							</div>
						</div>
					</aside>
				</div>
				<!-- col-md-3 -->
				<div class="col-md-4">
					<aside id="aside" class="aside-bar-style-two clearfix">
						<div class="widget clearfix">
							<a href="${contextPath}/user/login"
								class="btn btn-success btn-full"><i class="icon fa fa-lock">
							</i> Sign In</a> <a href="${contextPath}/user/new"
								class="btn btn-pri btn-full"><i class="icon fa fa-edit">
							</i> Register</a>
						</div>
					</aside>
					<br />
					<aside id="aside" class="aside-bar-style-two clearfix">
						<div class="widget clearfix">
							<h3 class="title">Suggested For You</h3>
							<div class="top-ppost">

								<div class="date">
									<p>
										<span><i class="icon fa fa-calendar"> </i></span>EVENT
									</p>
								</div>
								<div class="content">
									<h4 class="title">
										<a href="#">Watching Star Wars in Kuzey Kampus Cinema </a>
									</h4>
								</div>
							</div>
							<hr />
							<div class="top-ppost">
								<div class="date">
									<p>
										<span><i class="icon fa fa-group"> </i></span>GROUP
									</p>
								</div>
								<div class="content">
									<h4 class="title">
										<a href="#">Orta Düzey Tenis Oyuncuları </a>
									</h4>
								</div>
							</div>
						</div>
					</aside>
				</div>
			</div>
		</div>
	</section>
	<!-- Footer -->
	<footer class="main-footer">
		<div class="container">
			<div class="row">
				<div class="widget col-md-3">
					<p>
						<a target="_blank"
							href="https://github.com/bounswe/bounswe2015group3/wiki">
							About US</a>
					<p>
				</div>

				<div class="widget col-md-3"></div>

				<div class="widget col-md-3"></div>

				<div class="widget col-md-3"></div>
			</div>
		</div>
	</footer>
	<script src="${contextPath}/assets/js/vendor/jquery-1.10.2.min.js"></script>
	<script src="${contextPath}/assets/js/plugins.js"></script>
	<script src="${contextPath}/assets/js/main.js"></script>
</body>
</html>
