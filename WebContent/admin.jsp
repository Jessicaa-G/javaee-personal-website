<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="jessica.website.bean.User"%>
<%@ page import="jessica.website.bean.Skill"%>
<%@ page import="jessica.website.bean.Award"%>
<%@ page import="jessica.website.bean.Food"%>
<%@ page import="jessica.website.bean.Custom"%>
<%@ page import="jessica.website.bean.Message"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="/MyWebsite/assets/vendors/mdi/css/materialdesignicons.min.css">
		<link rel="stylesheet" href="/MyWebsite/assets/vendors/css/vendor.bundle.base.css">
		<link rel="stylesheet" href="/MyWebsite/assets/css/style.css">
		<link rel="shortcut icon" href="/MyWebsite/assets/images/logo.png" />
		<title>Admin home</title>
	</head>
	<body>
		<%-- 获得 users --%>
		<%List<User> users = (List<User>)request.getAttribute("users"); %>
		<%--获得skills --%>
		<%List<Skill> skills = (List<Skill>)request.getAttribute("skills"); %>
		<%--获得awards --%>
		<%List<Award> awards = (List<Award>)request.getAttribute("awards"); %>
		<%-- 获得 foods --%>
		<%List<Food> foods = (List<Food>)request.getAttribute("foods"); %>
		<%-- 获得 customs --%>
		<%List<Custom> customs = (List<Custom>)request.getAttribute("customs"); %>
		<%-- 获得 messages --%>
		<%List<Message> messages = (List<Message>)request.getAttribute("messages"); %>

		<div class="container-scroller">
			<!-- partial:partials/_navbar.html -->
			<nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
				<div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
					<a class="navbar-brand brand-logo" href="#"><img src="/MyWebsite/assets/images/logo.png" alt="logo" style="width: 40px;height: 40px" /></a>
					<a class="navbar-brand brand-logo-mini" href="#"><img src="/MyWebsite/assets/images/logo.png" alt="logo" style="width: 20px;height: 20px" /></a>
				</div>
				<div class="navbar-menu-wrapper d-flex align-items-stretch">
					<button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
						<span class="mdi mdi-menu"></span>
					</button>
					<ul class="navbar-nav navbar-nav-right">
						<li class="nav-item nav-profile dropdown">
							<a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
								<div class="nav-profile-img">
									<img src="/MyWebsite/assets/images/bubble.jpg" alt="image">
									<span class="availability-status online"></span>
								</div>
								<div class="nav-profile-text">
									<p class="mb-1 text-black">Jessica Guan</p>
								</div>
							</a>
							<div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
								<a class="dropdown-item" href="#">
									<i class="mdi mdi-cached mr-2 text-success"></i> Activity Log </a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="/MyWebsite/admin_login.jsp">
									<i class="mdi mdi-logout mr-2 text-primary"></i> Signout </a>
							</div>
						</li>
						<li class="nav-item d-none d-lg-block full-screen-link">
							<a class="nav-link">
								<i class="mdi mdi-fullscreen" id="fullscreen-button"></i>
							</a>
						</li>

						<li class="nav-item nav-logout d-none d-lg-block">
							<a class="nav-link" href="/MyWebsite/index">
								<i class="mdi mdi-power"></i>
							</a>
						</li>
					</ul>
					<button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
						<span class="mdi mdi-menu"></span>
					</button>
				</div>
			</nav>
			<!-- partial -->
			<div class="container-fluid page-body-wrapper">
				<nav class="sidebar sidebar-offcanvas" id="sidebar">
					<ul class="nav">
						<li class="nav-item nav-profile">
							<a href="#" class="nav-link">
								<div class="nav-profile-image">
									<img src="/MyWebsite/assets/images/bubble.jpg" alt="profile">
									<span class="login-status online"></span>
								</div>
								<div class="nav-profile-text d-flex flex-column">
									<span class="font-weight-bold mb-2">Jessica Guan</span>
									<span class="text-secondary text-small">Admin</span>
								</div>
								<i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
							</a>
						</li>

						<li class="nav-item">
							<a class="nav-link" href="/MyWebsite/admin/home">
								<span class="menu-title">Home</span>
								<i class="mdi mdi-home menu-icon"></i>
							</a>
						</li>

						<li class="nav-item">
							<a class="nav-link" href="/MyWebsite/admin/user">
								<span class="menu-title">User</span>
								<i class="mdi mdi-account-multiple-outline menu-icon"></i>
							</a>
						</li>

						<li class="nav-item">
							<a class="nav-link" data-toggle="collapse" href="#general-pages" aria-expanded="false" aria-controls="general-pages">
								<span class="menu-title">Self Introduction</span>
								<i class="menu-arrow"></i>
								<i class="mdi mdi-account-star menu-icon"></i>
							</a>
							<div class="collapse" id="general-pages">
								<ul class="nav flex-column sub-menu">
									<li class="nav-item"> <a class="nav-link" href="/MyWebsite/admin/skill"> Skills </a></li>
									<li class="nav-item"> <a class="nav-link" href="/MyWebsite/admin/award"> Awards </a></li>
								</ul>
							</div>
						</li>

						<li class="nav-item">
							<a class="nav-link" data-toggle="collapse" href="#general-pages" aria-expanded="false" aria-controls="general-pages">
								<span class="menu-title">Hometown Introduction</span>
								<i class="menu-arrow"></i>
								<i class="mdi mdi-city menu-icon"></i>
							</a>
							<div class="collapse" id="general-pages">
								<ul class="nav flex-column sub-menu">
									<li class="nav-item"> <a class="nav-link" href="/MyWebsite/admin/food"> Delicacy</a></li>
									<li class="nav-item"> <a class="nav-link" href="/MyWebsite/admin/custom"> Customs </a></li>
								</ul>
							</div>
						</li>

						<li class="nav-item">
							<a class="nav-link" href="/MyWebsite/admin/message">
								<span class="menu-title">Comments</span>
								<i class="mdi mdi-message-text menu-icon"></i>
							</a>
						</li>
					</ul>
				</nav>
				<div class="main-panel">
					<div class="content-wrapper">
						<div class="row">
							<div class="col-md-4 stretch-card grid-margin" onclick="window.open('/MyWebsite/admin/user','_self')">
								<div class="card bg-gradient-primary card-img-holder text-white">
									<div class="card-body">
										<img src="/MyWebsite/assets/images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image" />
										<h4 class="font-weight-normal mb-3">总用户数 <i class="mdi mdi-account-multiple mdi-24px float-right"></i>
										</h4>
										<br>
										<h2 class="mb-5">
											<%=users.size() %>
										</h2>
									</div>
								</div>
							</div>
							<div class="col-md-4 stretch-card grid-margin" onclick="window.open('/MyWebsite/admin/skill','_self')">
								<div class="card bg-gradient-danger card-img-holder text-white">
									<div class="card-body">
										<img src="/MyWebsite/assets/images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image" />
										<h4 class="font-weight-normal mb-3">技能个数 <i class="mdi mdi-auto-fix mdi-24px float-right"></i>
										</h4>
										<br>
										<h2 class="mb-5">
											<%=skills.size() %>
										</h2>
									</div>
								</div>
							</div>
							<div class="col-md-4 stretch-card grid-margin" onclick="window.open('/MyWebsite/admin/award','_self')">
								<div class="card bg-gradient-success card-img-holder text-white">
									<div class="card-body">
										<img src="/MyWebsite/assets/images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image" />
										<h4 class="font-weight-normal mb-3">荣誉个数 <i class="mdi mdi-trophy-variant float-right"></i>
										</h4>
										<br>
										<h2 class="mb-5">
											<%=awards.size() %>
										</h2>
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-4 stretch-card grid-margin" onclick="window.open('/MyWebsite/admin/food','_self')">
								<div class="card bg-gradient-warning card-img-holder text-white">
									<div class="card-body">
										<img src="/MyWebsite/assets/images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image" />
										<h4 class="font-weight-normal mb-3">美食个数 <i class="mdi mdi-food-variant mdi-24px float-right"></i>
										</h4>
										<br>
										<h2 class="mb-5">
											<%=foods.size() %>
										</h2>
									</div>
								</div>
							</div>
							<div class="col-md-4 stretch-card grid-margin" onclick="window.open('/MyWebsite/admin/custom','_self')">
								<div class="card bg-gradient-info card-img-holder text-white">
									<div class="card-body">
										<img src="/MyWebsite/assets/images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image" />
										<h4 class="font-weight-normal mb-3">习俗个数 <i class="mdi mdi-star mdi-24px float-right"></i>
										</h4>
										<br>
										<h2 class="mb-5">
											<%=customs.size() %>
										</h2>
									</div>
								</div>
							</div>
							<div class="col-md-4 stretch-card grid-margin" onclick="window.open('/MyWebsite/admin/message','_self')">
								<div class="card bg-gradient-light card-img-holder text-white">
									<div class="card-body">
										<img src="/MyWebsite/assets/images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image" />
										<h4 class="font-weight-normal mb-3">评论个数 <i class="mdi mdi-comment-text mdi-24px float-right"></i>
										</h4>
										<br>
										<h2 class="mb-5">
											<%=messages.size() %>
										</h2>
									</div>
								</div>
							</div>
						</div>
					</div>
					<footer class="footer">
						<div class="container-fluid clearfix">
							<span class="text-muted d-block text-center float-sm-right d-sm-inline-block">Copyright © Jessica Guan</span>
						</div>
					</footer>
				</div>
			</div>
		</div>
		<script src="/MyWebsite/assets/vendors/js/vendor.bundle.base.js"></script>
		<script src="/MyWebsite/assets/vendors/chart.js/Chart.min.js"></script>
		<script src="/MyWebsite/assets/js/off-canvas.js"></script>
		<script src="/MyWebsite/assets/js/hoverable-collapse.js"></script>
		<script src="/MyWebsite/assets/js/misc.js"></script>
		<script src="/MyWebsite/assets/js/dashboard.js"></script>
		<script src="/MyWebsite/assets/js/todolist.js"></script>
	</body>
</html>
