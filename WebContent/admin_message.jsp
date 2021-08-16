<%@page import="java.io.ObjectOutputStream.PutField"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="jessica.website.bean.Message"%>
<%@ page import="jessica.website.bean.MessageReply"%>
<%@ page import="jessica.website.utils.StringUtil"%>
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
		<title>Admin message</title>
	</head>
	<body>
		<%--获得messages --%>
		<%List<Message> messages = (List<Message>)request.getAttribute("messages"); %>
		<%List<MessageReply> replys = (List<MessageReply>)request.getAttribute("replys"); %>

		<div class="container-scroller">
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
									<h4 class="card-title">Comment</h4>
									<ul class="list-star">
										<li>Reply to a comment</li>
									</ul>
									<form action="/MyWebsite/admin/reply/add" method="post" id="addreply">
										<input type="text" placeholder="Id" class="myform border-0" name="id" id="id">
										<input type="text" placeholder="Reply" class="myform border-0" name="reply" id="reply">
										<button type="button" class="btn btn-inverse-primary btn-fw" style="float: right;" id="addbtn">Reply</button>
										<br><span id="addmsg" style="font-size: 12px; color: #fe7c96;margin-left: 20px"></span>
									</form>
									<br>
									<ul class="list-star">
										<li>Delete a comment</li>
									</ul>

									<form action="/MyWebsite/admin/message/delete" method="post" id="delcomment">
										<input type="text" class="myform bg-transparent border-0" placeholder="Id" name="id"
										 id="delid">
										<button type="button" class="btn btn-inverse-danger btn-fw" style="float: right;" id="delbtn">Delete</button>
										<br><span id="delmsg" style="font-size: 12px; color: #fe7c96;margin-left: 20px"></span>
									</form>
									<br>
									
									<ul class="list-star">
										<li>Alter a reply</li>
									</ul>
									<form action="/MyWebsite/admin/reply/alter" method="post" id="alterreply">
										<input type="text" class="myform bg-transparent border-0" placeholder="Id" name="id" id="alterid">
										<input type="text" placeholder="New reply" class="myform border-0" name="reply" id="alternew">
										<button type="button" class="btn btn-inverse-warning btn-fw" style="float: right;" id="alterbtn">Alter</button>
										<br><span id="altermsg" style="font-size: 12px; color: #fe7c96;margin-left: 20px"></span>
									</form>
									
									<br>
									<p class="card-description"> comment <code>.table</code></p>
									<table class="mytable">
										<thead>
											<tr>
												<th>No</th>
												<th>Id</th>
												<th>Username</th>
												<th>Comment</th>
												<th>Time</th>
												<th>Reply</th>
												<th>Reply time</th>
											</tr>
										</thead>
										<tbody>
											<%-- 显示messages --%>
											<%
											int i=1;
											for(Message m:messages){
										%>
											<tr>
												<td>
													<%out.print(i);%>
												</td>
												<td>
													<%=m.getM_id() %>
												</td>
												<td>
													<%=m.getUsername()%>
												</td>
												<td>
													<%=m.getM_content() %>
												</td>
												<td>
													<%=m.getM_time().substring(0,16) %>
												</td>
												<td>
													<% 
														if(replys.get(i-1).getMre_content()!=null){%>
															<%=replys.get(i-1).getMre_content() %>
													<% }
													%>
												</td>
												<td>
													<% 
														if(replys.get(i-1).getMre_time()!=null&&!replys.get(i-1).getMre_time().trim().equals("")){%>
															<%=replys.get(i-1).getMre_time()%>
													<% }
													%>
												</td>
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
							<span class="text-muted d-block text-center float-sm-right d-sm-inline-block">Copyright Â© Jessica Guan</span>
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
		<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
		<script type="text/javascript">
			//获取信息，以消息方式弹出
			var msg = "<%=request.getAttribute("alert")%>";
			if (msg != "null") {
				alert(msg);
			}

			$("#addbtn").click(function() {
				var addid = $("#id").val();
				var addreply = $("#reply").val();
				var addmsg = $("#addmsg");
				if (isEmpty(addid)) {
					addmsg.html("Please enter an id");
					return;
				}
				if (isEmpty(addreply)) {
					addmsg.html("Please enter reply!");
					return;
				}
				if(!isExist(addid)){
					addmsg.html("The comment does not exist!");
					return;
				}
				if(isReExist(addid)){
					addmsg.html("The comment already has a reply!");
					return;
				}
				$("#addreply").submit();
				
			});

			$("#delbtn").click(function() {
				var delid = $("#delid").val();
				var delmsg = $("#delmsg");
				if (isEmpty(delid)) {
					delmsg.html("Please enter an id!");
					return;
				}
				if(!isExist(delid)){
					delmsg.html("The comment does not exist!");
					return;
				}
				$("#delcomment").submit();
			});
			
			$("#alterbtn").click(function() {
				var alterid = $("#alterid").val();
				var alternew = $("#alternew").val();
				var altermsg = $("#altermsg");
				if (isEmpty(alterid)) {
					altermsg.html("Please enter an id!");
					return;
				}
				if (isEmpty(alternew)) {
					altermsg.html("Please enter reply!");
					return;
				}
				if(!isExist(alterid)){
					altermsg.html("The comment does not exist!");
					return;
				}
				if(!isReExist(alterid)){
					altermsg.html("The comment does not have reply yet!");
					return;
				}
				$("#alterreply").submit();
			});

			function  isExist(id){
				//判断输入的id是否存在
				var flag = 0;
				<%
				for(Message m:messages){
				%>
				var length = <%=messages.size()%>;
				var i = 0;
				for (; i < length; i++) {
					if (id == "<%=m.getM_id()%>")
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

			function  isReExist(x){
				//判断输入的id是否存在回复
				var flag = 0;
				<%
				for(MessageReply re:replys){
				%>
				var length = <%=replys.size()%>;
				var i = 0;
				for (; i < length; i++) {
					if ( !isEmpty("<%=re.getMre_content()%>")&&"<%=re.getM_id()%>"==x)
						flag=1;
				};
				<%	
				}
				%>
				if(flag){
					return true;
				}
				return false;
			}
			
			function isEmpty(str) {
				if (str == null || str == "" || str=="null" || str==" ") {
					return true;
				}
				return false;
			}
		</script>
	</body>
</html>
