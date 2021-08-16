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
	<title>Login</title>
</head>
<body>
<div class="container-scroller">
	  <div class="container-fluid page-body-wrapper full-page-wrapper">
	    <div class="content-wrapper d-flex align-items-center auth">
	      <div class="row flex-grow">
	        <div class="col-lg-4 mx-auto">
	          <div class="auth-form-light text-left p-5">
	            <div  style="text-align: center;">
	              <img src="/MyWebsite/assets/images/logo.png" style="width: 40px;height: 40px;margin:0 auto">
	            </div>
	            <br>
	            <h4>Login as visiter</h4>
	            <h6 class="font-weight-light">Log in to continue.</h6>
				
	            <form class="pt-3" action="/MyWebsite/login" method="post" id="loginForm">
	              <div class="form-group">
	                <input type="text" class="form-control form-control-lg" name="username" id="name" placeholder="Username">
	              </div>
	              <div class="form-group">
	                <input type="password" class="form-control form-control-lg" name="password" id="psw" placeholder="Password">
	              </div>
				  <span class="font-weight-light" id="msg" style="font-size:12px;color: mediumpurple"></span>
	              <div class="mt-3">
					<button class="btn btn-block btn-gradient-primary btn-lg font-weight-medium auth-form-btn" type="button" id="loginbtn"> LOG IN</button>
	              </div>
	              <div class="my-2 d-flex justify-content-between align-items-center">
	                <div class="form-check">
	                  <label class="form-check-label text-muted">
	                    <input type="checkbox" class="form-check-input"> Keep me loged in </label>
	                </div>
	              </div>
	              <div class="text-center mt-4 font-weight-light"> Don't have an account? <a href="/MyWebsite/register.jsp" class="text-primary">Create</a>
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
<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>

<script type="text/javascript">
<%-- 获取错误信息，以消息方式弹出--%>
	var err = "<%=request.getAttribute("error")%>";
	if(err!="null"){
		alert(err);
	}
	$("#loginbtn").click(function(){
		let name = $("#name").val();
		let psw = $("#psw").val();
		let msg = $("#msg");
		if(isEmpty(name)){
			msg.html("Please enter username!");
			return;
		}
		if(isEmpty(psw)){
			msg.html("Please enter password!");
			return;
		}
		$("#loginForm").submit();
	});
	
	function isEmpty(str){
		if (str == null || str.trim() ==""){
			return true;
		}
		return false;
	}
</script>
</body>
</html>