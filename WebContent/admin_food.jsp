<%@page import="java.io.ObjectOutputStream.PutField"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="jessica.website.bean.Food"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="/MyWebsite/assets/vendors/mdi/css/materialdesignicons.min.css">
		<link rel="stylesheet" href="/MyWebsite/assets/vendors/css/vendor.bundle.base.css">
		<link rel="stylesheet" href="/MyWebsite/assets/css/style.css">
		<link rel="stylesheet" href="/MyWebsite/assets/css/mycss.css">
		<link rel="shortcut icon" href="/MyWebsite/assets/images/logo.png" />
		<title>Admin food</title>
	</head>
	<body>
		<%-- 获得 foods --%>
		<%List<Food> foods = (List<Food>)request.getAttribute("foods"); %>

		<div class="container-scroller">
			<!-- partial:partials/_navbar.html -->
			<nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
				<div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
					<a class="navbar-brand brand-logo" href="#"><img src="/MyWebsite/assets/images/logo.png" alt="logo" style="width: 40px;height: 40px" /></a>
					<a class="navbar-brand brand-logo-mini" href="#"><img src="/MyWebsite/assets/images/logo.png" alt="logo" style="width: 20px;height: 20px"/></a>
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
									<!--change to offline or busy as needed-->
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
									<li class="nav-item"> <a class="nav-link" href="/MyWebsite/admin/food"> Delicacy </a></li>
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
						<div class="col-lg-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Delicacy</h4>
									<ul class="list-star">
					                    <li>Add a new delicacy</li>
				                    </ul>
				                    <form action="/MyWebsite/admin/food/add" method="post" id="addfood" enctype="multipart/form-data">
					                    <input type="text" placeholder="Food" class="myform bg-transparent border-0" name="foodname" id="name">
										<input type="text" placeholder="Introduction" class="myform bg-transparent border-0" name="content" id="content">
										<input type="file" name="picture">
										<button type="button" class="btn btn-inverse-primary btn-fw" style="float: right;" id="addbtn">Add</button>
										<br><span id="addmsg" style="font-size: 12px; color: #fe7c96;margin-left: 20px"></span>
									</form>
									<br>
									
									<ul class="list-star">
					                    <li>Delete a delicacy</li>
				                    </ul>
				                    <form action="/MyWebsite/admin/food/delete" method="post" id="delfood">
					                    <input type="text" class="myform bg-transparent border-0" placeholder="Food" name="foodname" id="delname">
										<button type="button" class="btn btn-inverse-danger btn-fw" style="float: right;" id="delbtn">Delete</button>
										<br><span id="delmsg" style="font-size: 12px; color: #fe7c96;margin-left: 20px"></span>
									</form>
									<br>
									
									<ul class="list-star">
					                    <li>Alter a delicacy's introduction</li>
				                    </ul>
				                    <form action="/MyWebsite/admin/food/alter" method="post" id="altfood">
					                    <input type="text" class="myform bg-transparent border-0" placeholder="Food" name="foodname" id="altname">
										<input type="text" placeholder="Introduction" class="myform bg-transparent border-0" name="content" id="altcontent">
										<button type="button" class="btn btn-inverse-warning btn-fw" style="float: right;" id="altbtn">Alter</button>
										<br><span id="altmsg" style="font-size: 12px; color: #fe7c96;margin-left: 20px"></span>
									</form>
									<br>
									
									<p class="card-description"> ht_food <code>.table</code></p>
									<table class="mytable">
										<thead>
											<tr>
												<th>No</th>
												<th>Food</th>
												<th>Introduction</th>
												<th>Picture</th>
											</tr>
										</thead>
										<tbody>
										<%-- 显示foods --%>
										<%
											int i=1;
											for(Food food:foods){
										%>
											<tr>
												<td><%out.print(i);%></td>
												<td><%=food.getFood_name() %></td>
												<td><%=food.getFood_content() %></td>
												<%String fullpath = food.getFood_pic_path();%>
												<td><img style="width: 200px;height: 200px;" src="<%=fullpath %>"/></td>
											</tr>
										<%
											i++;} 
										%>
										</tbody>
									</table>
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
		<script src="/MyWebsite/assets/js/hoverable-collapse.js"></script>
		<script src="/MyWebsite/assets/js/misc.js"></script>
		<script src="/MyWebsite/assets/js/dashboard.js"></script>
		<script src="/MyWebsite/assets/js/todolist.js"></script>
		<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
		<script type="text/javascript">
			//获取信息，以消息方式弹出
			var msg = "<%=request.getAttribute("alert")%>";
			if (msg != "null") {
				alert(msg);
			}

			$("#addbtn").click(function() {
				var addname = $("#name").val();
				var addcontent = $("#content").val();
				var addmsg = $("#addmsg");
				if (isEmpty(addname)) {
					addmsg.html("Please enter food's name");
					return;
				}
				if (isEmpty(addcontent)) {
					addmsg.html("Please enter introduction!");
					return;
				}
				$("#addfood").submit();
			});

			$("#delbtn").click(function() {
				var delname = $("#delname").val();
				var delmsg = $("#delmsg");
				if (isEmpty(delname)) {
					delmsg.html("Please enter a food!");
					return;
				}
				if(!isExist(delname)){
					delmsg.html("The food does not exist!");
					return;
				}
				$("#delfood").submit();
			});
				
				$("#altbtn").click(function() {
					var altname = $("#altname").val();
					var altcontent = $("#altcontent").val();
					var altmsg = $("#altmsg");
					if (isEmpty(altname)) {
						altmsg.html("Please enter food's name");
						return;
					}
					if (isEmpty(altcontent)) {
						altmsg.html("Please enter introduction!");
						return;
					}
					if(!isExist(altname)){
						altmsg.html("The food does not exist!");
						return;
					}
					$("#altfood").submit();
				});
				//判断输入的美食是否存在
			function isExist(x){
				var flag = 0;
				<%
				for(Food food:foods){
				%>
				var length = <%=foods.size()%>;
				var i = 0;
				for (; i < length; i++) {
					if (x == "<%=food.getFood_name()%>")
						flag = 1;
				};
				<%	
				}
				%>
				if (!flag) {
					return false;
				}
				return true;
			}
			
			function isEmpty(str) {
				if (str == null || str == "") {
					return true;
				}
				return false;
			}
		</script>
	</body>
</html>
