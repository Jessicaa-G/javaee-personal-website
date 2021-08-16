<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="/MyWebsite/assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="/MyWebsite/assets/vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="/MyWebsite/assets/css/style.css">
    <link rel="shortcut icon" href="/MyWebsite/assets/images/logo.png" />
	<title>Admin login</title>
</head>
<body>
	<div style="text-align: center;">
		<div class="container-scroller">
		  <div class="container-fluid page-body-wrapper full-page-wrapper">
			<div class="content-wrapper d-flex align-items-center auth">
			  <div class="row flex-grow">
				<div class="col-lg-4 mx-auto">
				  <div class="auth-form-light text-left p-5">
					<div style="text-align: center;">
					  <img src="/MyWebsite/assets/images/logo.png" style="width: 40px;height: 40px;margin:0 auto">
					</div>
					<br>
					<h4>Login as admin</h4>
					<h6 class="font-weight-light">Log in to continue.</h6>
					<form class="pt-3">
					  <div class="form-group">
						<input type="password" class="form-control form-control-lg" name="password" id="psw" placeholder="Admin's password">
					  </div>
					  <span class="font-weight-light" id="msg" style="font-size:12px;color: mediumpurple"></span>
					  <div class="mt-3">
						<button class="btn btn-block btn-gradient-primary btn-lg font-weight-medium auth-form-btn" type="button" id="loginbtn"> LOG IN</button>
					  </div>
					</form>
				  </div>
				</div>
			  </div>
			</div>
		  </div>
		</div>
	</div>
	<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
	<script src="/MyWebsite/assets/vendors/js/vendor.bundle.base.js"></script>
	<script src="/MyWebsite/assets/js/off-canvas.js"></script>
	<script src="/MyWebsite/assets/js/hoverable-collapse.js"></script>
	<script src="/MyWebsite/assets/js/misc.js"></script>

	<script type="text/javascript">
		$("#loginbtn").click(function(){
			let psw = $("#psw").val();
			let msg = $("#msg");
			if(psw=="jessica325"){
				window.location="admin/home";
			}
			else{
				msg.html("Wrong passord!");
			}
		});
	</script>
</body>
</html>