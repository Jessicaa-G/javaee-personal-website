<%@page import="javax.xml.ws.Response"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="jessica.website.bean.Message"%>
<%@ page import="jessica.website.bean.MessageReply"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="/MyWebsite/assets/css/main.css" />
		<link rel="stylesheet" href="/MyWebsite/assets/vendors/mdi/css/materialdesignicons.min.css">
		<link rel="stylesheet" href="/MyWebsite/assets/vendors/css/vendor.bundle.base.css">
		<link rel="stylesheet" href="/MyWebsite/assets/css/myindex.css" />
		<link rel="shortcut icon" href="/MyWebsite/assets/images/logo.png" />
		<title>:D</title>
	</head>
	<body class="subpage" style="background-image: url(/MyWebsite/assets/images/bg.jpg);background-size: 100% 100%;">
		<%-- 获得登陆成功返回的用户名 username
				若获得到username则写入session
				没有获得则获取session中的username --%>
		<% 
			String username = request.getParameter("username");
			HttpSession s = request.getSession();
			username = (String)s.getAttribute("username");
			
			List<Message> messages = (List<Message>)request.getAttribute("messages");
			List<MessageReply> replys = (List<MessageReply>)request.getAttribute("replys");
		%>
		
		<!-- Header -->
		<header id="header" style="background-color: rosybrown">
			<div class="logo" style="color:floralwhite">Welcome<span class="logo" style="color:floralwhite;font-size: 16px;">
					<% 
					if(username!=null){
						out.write(", "+ username);%>
						&nbsp&nbsp<a href="#" id="logout" style="font-size: 14px"> log out</a>
					<%
					}else{ %>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="/MyWebsite/login.jsp" style="font-size: 14px"><i class="mdi mdi-paw"></i> login</a>
					<%}%></span>&nbsp;&nbsp;♥
					&nbsp;
					<a href="#overview" style="font-size: 14px">Overview</a> | <a href="#gallery" style="font-size: 14px">Gallery</a> | <a href="#message" style="font-size: 14px">Message</a>
			</div>
			<a href="#menu">Menu</a>
		</header>

		<!-- Nav -->
		<nav id="menu" style="background-color: rosybrown;">
			<ul class="links">
				<li><a href="#">Home</a></li>
				<li><a href="/MyWebsite/selfintro">Self Introduction</a></li>
				<li><a href="/MyWebsite/hometownintro">Hometown Introduction</a></li>
				<li><a href="/MyWebsite/admin_login.jsp">Admin Entrance</a></li>
			</ul>
		</nav>
		
		<!-- Banner -->
		<section class="banner full" style="min-height: 100vh;">
			<article>
				<img src="/MyWebsite/assets/images/slide0.jpg" alt="" />
				<div class="inner">
					<header>
						<h1 class="subtitle">Hey there! I'm</h1>
						<h2 class="title" style="font-family: 'Kaushan Script', sans-serif;">Jessica</h2>
						<h1 class="profession">A student</h1>
						<!-- <p>A free responsive web site template by <a href="https://templated.co">TEMPLATED</a></p>
    					<h2>Hielo</h2> -->
					</header>
				</div>
			</article>
			<article>
				<img src="/MyWebsite/assets/images/b.jpg" alt="" />
				<div class="inner">
					<header>
						<p>major in</p>
						<h2>COMPUTER SCIENCE</h2>
					</header>
				</div>
			</article>
			<article>
				<img src="/MyWebsite/assets/images/slide2.jpg" alt="" />
				<div class="inner">
					<header>
						<p>zodiac</p>
						<h2>ARIES</h2>
					</header>
				</div>
			</article>
			<article>
				<img src="/MyWebsite/assets/images/slide3.jpg" alt="" />
				<div class="inner">
					<header>
						<p>favorite color</p>
						<h2>AMARANTH</h2>
					</header>
				</div>
			</article>
			<article>
				<img src="/MyWebsite/assets/images/slide4.jpg" alt="" />
				<div class="inner">
					<header>
						<p>favorite author</p>
						<h2>MAUGHAM</h2>
					</header>
				</div>
			</article>
		</section>

		<!-- overview -->
		<section id="overview" class="wrapper style2">
			<div class="inner">
				<div class="grid-style">
					<div>
						<div class="box">
							<div class="image fit">
								<img src="#" alt="" />
							</div>
							<div class="content" style="height: 420px">
								<header class="align-center">
									<p>LEGNA ELTTIL</p>
									<h2>Self Introduction</h2>
								</header>
								<ul>
									<li>基本信息
										<ul style="margin: 0">
											<li>个人信息</li>
											<li>联系方式</li>
										</ul>
									</li>
									<li>技能</li>
									<li>荣誉</li>
								</ul>
								<footer class="align-center">
									<a href="/MyWebsite/selfintro" class="button alt">Learn More</a>
								</footer>
							</div>
						</div>
					</div>

					<div>
						<div class="box">
							<div class="image fit">
								<img src="#" alt="" />
							</div>
							<div class="content" style="height: 420px">
								<header class="align-center">
									<p>berceau</p>
									<h2>Hometown Introduction</h2>
								</header>
								<p>
									北京位于华北平原的西北边缘，背靠燕山，有永定河流经老城西南，毗邻天津市、河北省，是一座有三千余年建城历史、八百六十余年建都史的历史文化名城，历史上有金、元、明、清、中华民国（北洋政府时期）等五个朝代在此定都，以及数个政权建政于此，荟萃了自元明清以来的中华文化，拥有众多历史名胜古迹和人文景观。</p>
								<footer class="align-center">
									<a href="/MyWebsite/hometownintro" class="button alt">Learn More</a>
								</footer>
							</div>
						</div>
					</div>

				</div>
			</div>
		</section>

		<!-- gallery title-->
		<section id="gallery" class="wrapper style3">
			<div class="inner">
				<header class="align-center">
					<p>Let life be beautiful like summer flowers and death like autumn leaves</p>
					<h2>G A L L E R Y</h2>
				</header>
			</div>
		</section>

		<!-- Gallery -->
		<div class="picbox">
			<div class="picture">
				<img src="assets/images/gallery1.jpg" />
				<div class="pictureinfo">
					<div class="word">🌺🎐💗</div>
					<div class="like"></div>
				</div>
			</div>
			<div class="picture">
				<img src="assets/images/gallery2.jpg" />
				<div class="pictureinfo">
					<div class="word">⭐💖🌷🍬🥨</div>
					<div class="like"></div>
				</div>
			</div>
			<div class="picture">
				<img src="assets/images/gallery3.jpg" />
				<div class="pictureinfo">
					<div class="word">🎈🎇🌹</div>
					<div class="like"></div>
				</div>
			</div>
			<div class="picture">
				<img src="assets/images/gallery4.jpg" />
				<div class="pictureinfo">
					<div class="word">💩🌈🎀🍭</div>
					<div class="like"></div>
				</div>
			</div>
			<div class="picture">
				<img src="assets/images/gallery5.jpg" />
				<div class="pictureinfo">
					<div class="word">🎠💝🍒</div>
					<div class="like"></div>
				</div>
			</div>
			<div class="picture">
				<img src="assets/images/gallery6.jpg" />
				<div class="pictureinfo">
					<div class="word">🐱‍🏍🍑💕💨</div>
					<div class="like"></div>
				</div>
			</div>
			<div class="picture">
				<img src="assets/images/gallery7.jpg" />
				<div class="pictureinfo">
					<div class="word">👼💘🦄✨</div>
					<div class="like"></div>
				</div>
			</div>
			<div class="picture">
				<img src="assets/images/gallery8.jpg" />
				<div class="pictureinfo">
					<div class="word">🌸🍓🎨💓</div>
					<div class="like"></div>
				</div>
			</div>
		</div>

		<section id="message" class="wrapper style2" style="margin-top:100px;padding:0px">
			<div class="inner">
				<div class="box">
					<div class="content">
						<header class="align-center">
							<p>De vin, de poésie ou de vertu, à votre guise</p>
							<h2>Message Box</h2>
						</header>
						<%
							int i=0;
							for(Message m:messages){%>
							<div style="display: flex;position: relative;margin-top: 15px;padding:10px;background-color:#F2E6E6;border:1px solid rosybrown;">
								<div style="width: 80%">
									<h3><%=m.getUsername() %>:</h3>
									<h3 style="margin-left: 10px;table-layout: fixed;word-wrap: break-all;word-break: normal;overflow: hidden;"><%=m.getM_content() %></h3>
								</div>
								<p style="position: absolute; right: 10px" ><%=m.getM_time().toString().substring(0, 16) %></p>
							</div>
							
							<!-- 回复 -->
							<%if(!replys.get(i).getMre_content().trim().equals("")){ %>
							<div style="display: flex;position: relative;padding:10px;background-color:#fff;border:1px solid rosybrown;">
								<div style="width: 80%">
									<h3>Reply:</h3>
									<h3 style="margin-left: 10px;table-layout: fixed;word-wrap: break-all;word-break: normal;overflow: hidden;"><%= replys.get(i).getMre_content() %></h3>
								</div>
								<p style="position: absolute; right: 10px" ><%=replys.get(i).getMre_time().toString().substring(0, 16) %></p>
							</div>
						<%}%>
						<%
							i++;
							} %>
		
						<form style="margin-top: 20px" action="/MyWebsite/index" method="post" id="msgform">
							<textarea type="text" name="msgcontent" id="msgcontent" placeholder="Leave a message:"></textarea>
							<span id="msg" style="font-size:12px;color: mediumpurple"></span>
							<div style="text-align: right;margin-top: 5px">
								<button type="button" id="addmsg" style="background-color: rosybrown">submit</button>
							</div>
						</form>
					</div>
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
		<script src="/MyWebsite/assets/js/myindex.js"></script>
		<script type="text/javascript">
		var msg = "<%=request.getAttribute("alert")%>";
		if (msg != "null") {
			alert(msg);
		}
		
		$("#addmsg").click(function(){
			let msgcontent = $("#msgcontent").val();
			let msg = $("#msg");
			if(isEmpty(msgcontent)){
				msg.html("Please enter your message!");
				return;
			}
			if("<%=username%>"=="null"){
				alert("请先登录！");
				window.location.href='/MyWebsite/login.jsp';
				return false;
			}else{
				$("#msgform").submit();
			}
		});
	
		function isEmpty(str){
			if (str == null || str.trim() ==""){
				return true;
			}
			return false;
		}
		
		$("#logout").click(function(){
			if (confirm("确认注销账号？")){
			 location.href="/MyWebsite/logout.jsp";}
		});
		</script>
	</body>
</html>
