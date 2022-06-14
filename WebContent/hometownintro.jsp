<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="jessica.website.bean.Food"%>
<%@ page import="jessica.website.bean.Custom"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Hometown</title>
		<link rel="stylesheet" href="/MyWebsite/assets/css/main.css" />
		<link rel="stylesheet" href="/MyWebsite/assets/css/visualize.css" />
		<link rel="shortcut icon" href="/MyWebsite/assets/images/logo.png" />
	</head>

	<body class="subpage" style="background-image: url(assets/images/bg2.jpg);background-size: 100% 100%;">
		<%-- 获得 foods --%>
		<%List<Food> foods = (List<Food>)request.getAttribute("foods"); %>
		<%-- 获得 customs --%>
		<%List<Custom> customs = (List<Custom>)request.getAttribute("customs"); %>
		<!-- Header -->
		<header id="header" style="background-color: rosybrown">
			<div class="logo" style="color:floralwhite"><a href="#scenary" style="font-size: 14px">Scenary</a> | <a href="#delicacy" style="font-size: 14px">Delicacy</a> | <a href="#custom" style="font-size: 14px">Customs</a></div>
			<a href="#menu">Menu</a>
		</header>

		<!-- Nav -->
		<nav id="menu" style="background-color: rosybrown;">
			<ul class="links">
				<li><a href="/MyWebsite/index">Home</a></li>
				<li><a href="/MyWebsite/selfintro">Self Introduction</a></li>
				<li><a href="#">Hometown Introduction</a></li>
				<li><a href="/MyWebsite/admin_login.jsp">Admin Entrance</a></li>
			</ul>
		</nav>

		<!-- One -->
		<section id="One" class="wrapper style3">
			<div class="inner">
				<header class="align-center">
					<p>the land of abundance</p>
					<h2>Beijing, China</h2>
				</header>
			</div>
		</section>

		<!-- Two -->
		<section id="two" class="wrapper style2" style="margin: 0 auto;padding:0px">
			<div class="inner">
				<div class="box">
					<div class="content">
						<header class="align-center">
							<p>overview</p>
							<h2>总体介绍</h2>
						</header>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;北京是一座有三千余年历史、八百五十余年的建都史的文化名城，历史上共有五个皇朝曾在此定都，
							是世界历史文化名城和中国四大古都之一。早在70万年前，北京周口店地区就出现了原始人群落“北京人”，
							北京最初见于记载的名字为“蓟”。全球只有极少数城市像北京一样长时间作为一个国家的政治和文化中心。
							《不列颠百科全书》将北京形容为全球最伟大的城市之一，而且断言，“这座城市是中国历史最重要的组成部分。
							在中国过去的八个世纪里，不论历史是否悠久，几乎北京所有主要建筑都拥有着不可磨灭的民族和历史意义”。
							故宫、天坛、颐和园、圆明园、北海公园等数不胜数的古迹为这座城市添加了更绚烂的色彩。</p>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;古老而富有韵味之中又有现代都市繁华的庞大城区，向东南方铺展的广阔平原，加之逶迤蜿蜒、
							镇守城区西北的太行山脉和燕山山脉，成就了北京独特的魅力。园林遗迹，古刹皇陵，给北京城注入了深厚
							的人文底蕴；峻崖曲壑，丽泉飞瀑，为城郊挂上了一层神秘的面纱；而人来人往的步行街和星罗棋布的商业区，
							则为这座古老的城市增添了时代的新生命力。</p>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;今日的北京，更已发展成为一座现代化的国际大都市：金融街早
							已是中国名副其实的金融管理中心；北京商务中心区更是北京对外开放和经济实力的象征。此外，中国国家大
							剧院、北京首都国际机场3号航站楼、中央电视台总部大楼、“鸟巢”、“水立方”等建筑也成了新北京的现代符号。
							游走在北京的胡同小巷之间，全世界的各色人种你都可以看到。北京正以它古老又时尚的全新面貌，迎接每年超
							过1亿4700万的旅客。</p>
					</div>
				</div>
			</div>
		</section>
		
		<section id="scenary" class="wrapper style3" style="padding:0px;margin-top:100px">
			<div class="inner">
				<header class="align-center">
					<p>Let life be beautiful like summer flowers and death like autumn leaves</p>
					<h2>S C E N A R Y</h2>
				</header>
			</div>
		</section>
		
		<div id="wrapper" style="margin-top: 50px;margin-bottom: 50px">
			<section class="thumbnails" style="margin: 0 auto ">
				<div>
					<a href="/MyWebsite/assets/images/hts1.jpg">
						<img src="/MyWebsite/assets/images/hts1.jpg" alt="" />
						<h3>the Old summer palace</h3>
					</a>
					<a href="/MyWebsite/assets/images/hts2.jpg">
						<img src="/MyWebsite/assets/images/hts2.jpg" alt="" />
						<h3>the Old summer palace</h3>
					</a>
				</div>
				<div>
					<a href="/MyWebsite/assets/images/ht7.jpg">
						<img src="/MyWebsite/assets/images/hts3.jpg" alt="" />
						<h3>the Summer Palace</h3>
					</a>
					<a href="/MyWebsite/assets/images/hts4.jpg">
						<img src="/MyWebsite/assets/images/hts4.jpg" alt="" />
						<h3>Drum-tower</h3>
					</a>
					<a href="/MyWebsite/assets/images/hts5.jpg">
						<img src="/MyWebsite/assets/images/hts5.jpg" alt="" />
						<h3>Tian'anmen Square</h3>
					</a>
				</div>
				<div>
					<a href="/MyWebsite/assets/images/ht6.jpg">
						<img src="/MyWebsite/assets/images/hts6.jpg" alt="" />
						<h3>the Great Wall</h3>
					</a>
					<a href="/MyWebsite/assets/images/ht5.jpg">
						<img src="/MyWebsite/assets/images/hts7.jpg" alt="" />
						<h3>the Great Wall</h3>
					</a>
				</div>
			</section>
		</div>

		<section id="delicacy" class="wrapper style2" style="margin: 0 auto;padding:0px">
			<div class="inner">
				<div class="box">
					<div class="content" style="padding-left: 100px">
						<header class="align-center">
							<p>delicacy</p>
							<h2>美食</h2>
						</header>
						<%for(Food f:foods){%>
							<div style="display: flex;margin-bottom: 20px">
								<div style="width: 60%">
									<h3><%=f.getFood_name()%></h3>
									<p><%=f.getFood_content() %></p>
								</div>
								<%String fullpath =  f.getFood_pic_path();%>
								<img style="width: 200px;height: 200px;margin-left: 100px;align-self:center"" src="<%=fullpath %>">
							</div>
						<%}%>
					</div>
				</div>
			</div>
		</section>
		
		<section id="custom" class="wrapper style2" style="margin: 0 auto">
			<div class="inner">
				<div class="box">
					<div class="content" style="padding-left: 100px">
						<header class="align-center">
							<p>customs</p>
							<h2>习俗</h2>
						</header>
						<%for(Custom c:customs){%>
							<div style="display: flex;margin-bottom: 20px">
								<div style="width: 60%">
									<h3><%=c.getCustom_name()%></h3>
									<p><%=c.getCustom_introduction() %></p>
								</div>
								<%String fullpath = c.getCustom_pic_path();%>
								<img style="width: 200px;height: 200px;margin-left: 100px;align-self:center" src="<%=fullpath %>">
							</div>
						<%}%>
					</div>
				</div>
			</div>
		</section>

			<!-- Footer -->
			<footer id="footer" style="background-color: transparent;">
				<div class="container">
					<ul class="icons">
						<li><a href="#"" class="icon fa-github"><span class="label">Github</span></a></li>
						<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
						<li><a href="#" class="icon fa-envelope-o"><span class="label">Email</span></a></li>
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
