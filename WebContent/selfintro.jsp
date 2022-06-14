<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="jessica.website.bean.Skill"%>
<%@ page import="jessica.website.bean.Award"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="/MyWebsite/assets/css/main.css" />
		<link rel="stylesheet" href="/MyWebsite/assets/css/mycss.css">
		<link rel="shortcut icon" href="/MyWebsite/assets/images/logo.png" />
		<title>Self Introduction</title>
		<style>
			.progress {
				-moz-appearance: none;
				-webkit-appearance: none;
				border: none;
				border-radius: 290486px;
				height: 1rem;
				overflow: hidden;
				padding: 0;
				max-width:100rem;
				width: 25rem; 
				margin-right: 25px;
				margin-left: 25px;
			}

			.progress::-webkit-progress-bar {
				background-color: #ededed
			}

			.progress.is-danger::-webkit-progress-value {
				background-color: #f14668
			}

			.progress.is-danger::-moz-progress-bar {
				background-color: #f14668
			}

			.progress.is-danger::-ms-fill {
				background-color: #f14668
			}

			.progress.is-danger:indeterminate {
				background-image: linear-gradient(to right, #f14668 30%, #ededed 30%
			}
			
				  .table th,
				  .table td {
				    padding: 0.9375rem;
				    vertical-align: top;
				    border-top: 1px solid #ebedf2; }
				  .table thead th {
				    vertical-align: bottom;
				    border-bottom: 2px solid #ebedf2; }
				  .table tbody + tbody {
				    border-top: 2px solid #ebedf2; }
			
				.table-danger,
				.table-danger > th,
				.table-danger > td {
				  background-color: #ffdae2; }
				
				.table-danger th,
				.table-danger td,
				.table-danger thead th,
				.table-danger tbody + tbody {
				  border-color: #febbc8; }
			
		</style>
	</head>
	<body class="subpage" style="background-image: url(/MyWebsite/assets/images/bg3.jpg);background-size: 100% 100%;">
		<%--获得skills --%>
		<%List<Skill> skills = (List<Skill>)request.getAttribute("skills"); %>
		<%--获得awards --%>
		<%List<Award> awards = (List<Award>)request.getAttribute("awards"); %>

		<!-- Header -->
		<header id="header" style="background-color: rosybrown">
			<div class="logo" style="color:floralwhite"><a href="#personal" style="font-size: 14px">Personal</a> | <a href="#skill" style="font-size: 14px">Skill</a> | <a href="#award" style="font-size: 14px">Award</a></div>
			<a href="#menu">Menu</a>
		</header>

		<!-- Nav -->
		<nav id="menu" style="background-color: rosybrown;">
			<ul class="links">
				<li><a href="/MyWebsite/index">Home</a></li>
				<li><a href="#">Self Introduction</a></li>
				<li><a href="/MyWebsite/hometownintro">Hometown Introduction</a></li>
				<li><a href="/MyWebsite/admin_login.jsp">Admin Entrance</a></li>
			</ul>
		</nav>

		<!-- avatar -->
		<section class="wrapper style3">
			<div class="inner">
				<header class="align-center">
					<span style="border-radius: 100%;display: inline-block;margin: 0 0 2em 0;
					padding: 0.5em;border: solid 1px rgba(255, 255, 255, 0.25);background-color: rgba(255, 255, 255, 0.075);">
					<img style="border-radius: 100%;display: block;width: 10em;height: 10em;" 
					src="/MyWebsite/assets/images/bubble.jpg" alt="" /></span>
					<h3 style="color: floralwhite;letter-spacing: .25rem;font-family: FontAwesome">☆ Self Introduction ☆</h3>
					</div>
				</header>
			</div>
		</section>
		
		<!-- personal -->
		<section class="wrapper style2" style="margin: 0 auto;">
			<div class="inner">
				<div class="box">
					<div class="content">
						<header id="personal" class="align-center">
							<p>BASIC INFOMATION</p>
							<h2>基本信息</h2>
						</header>
						<div style="display: flex;width: 100%">
							<div style="flex:1;border-right: 1px solid #BC8F8F;">
								<h3 style="text-align:center">个人信息</h3>
								<h4 style="margin-left: 70px"> 
									姓名：xxx	
									<br>性别：x			
									<br>生日：xxxx-xx-xx
									<br>学历：xxx
									<br>就读学校：xxxx
									<br>专业：xxxx
								</h4>
								
							</div>
							<div style="flex:1;border-left: 1px solid #BC8F8F; ">
								<h3 style="text-align:center">联系方式</h3>
								<h4 style="margin-left: 70px;line-height: 3"> 
									手机：xxxx	
									<br>邮箱：xxxx			
									<br>地址：xxxx
								</h4>
							</div>
						</div>
						<br>
						<header id="skill" class="align-center" style="margin-top:20px">
							<p>skill & technique</p>
							<h2>技能</h2>
						</header>
						<div style="display: flex; justify-content:center;">
							<div class="mycol">
								<%	int pro=0;
										int ran=0;
										int flag=0;
										for(int i=0;i<skills.size();i++){ 
										Skill s = skills.get(i);
										ran=(int)(1+Math.random()*10);	//生成1-10的随机数
										if(s.getSkill_proficiency().equals("熟练"))
											pro=90;
										if(s.getSkill_proficiency().equals("掌握"))
											pro=50;
										if(s.getSkill_proficiency().equals("了解"))
											pro=25;
										flag=(int)(Math.random()*2);//随机加或减
										if(flag==0)
											pro+=ran;
										else
											pro-=ran;
								%>
								<h1 style="margin-left: 25px;margin-top: 5px">
									<%=s.getSkill_name() %>
								</h1>
								<progress class="progress is-danger" value="<%=pro %>" max="100"></progress>
								<%if(i%(int)(skills.size()/2)==0&&i!=0){ %>
									</div>
									<div>
								<%} %> 
								
								<%} %>
							</div>
						</div>

						<br><br><br>
						<header id="award" class="align-center">
							<p>honor & scholarship</p>
							<h2>荣誉</h2>
							<table class="mytable">
								<thead>
									<tr>
										<th>Award</th>
										<th>Title</th>
										<th>Year</th>
									</tr>
								</thead>
								<tbody>
							<%for(Award a:awards){ %>
								<tr>
									<td><%=a.getAward_name() %></td>
									<td><%=a.getAward_title() %></td>
									<td><%=a.getAward_year() %></td>
								</tr>
							<%} %>
								</tbody>
							</table>

						</header>
					</div>
				</div>
		</section>

		<!-- Footer -->
		<footer id="footer" style="background-color: transparent;">
			<div class="container">
				<ul class="icons">
					<li><a href="https://github.com/Jessicaa-G" class="icon fa-github"><span class="label">Github</span></a></li>
					<li><a href="https://www.facebook.com/jieyun.guan" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
					<li><a href="https://www.instagram.com/g.jessica325/" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
					<li><a href="mailto:yinxi325@sina.com" class="icon fa-envelope-o"><span class="label">Email</span></a></li>
				</ul>
			</div>
			<div class="copyright">
				&copy; Untitled. All rights reserved.
			</div>
		</footer>

		<!-- Scripts -->
		<script src="/MyWebsite/assets/js/jquery.min.js"></script>
		<script src="/MyWebsite/assets/js/jquery.scrollex.min.js"></script>
		<script src="/MyWebsite/assets/js/skel.min.js"></script>
		<script src="/MyWebsite/assets/js/util.js"></script>
		<script src="/MyWebsite/assets/js/main.js"></script>
		<script src="/MyWebsite/assets/js/jquery.poptrox.min.js"></script>
		<script src="/MyWebsite/assets/js/visualize.js"></script>
	</body>
</html>
