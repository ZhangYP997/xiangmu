<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>账号注册</title>

<link href="../css/bootstrap.min.css" rel="stylesheet">
<head>
<script type="text/javascript" src="../jquery-2.1.3.min.js">
	
</script>
<style type="text/css">
html {
	width: 100%;
	overflow-x: hidden;
}

#sg {
	width: 25%;
}

body {
	background: url("../imags/logn_bg.jpg") no-repeat;
	background-size: 100% 100%;
	height: 100%;
	width: 100%;
}

#zc {
	position: relative;
	left: 40%;
	top: 20%;
}

#h2 {
	position: relative;
	left: 30%;
	top: 20%;
}

#yzh {
	position: relative;
	top: 10px;
	left: 5px;
}

#y3 {
	position: relative;
	right: 0px;
}

#sm0,#sm1,#sm2,#sm3,#sm4 {
	color: gray;
}

#spUser1,#spUser2,#spw1,#spw2,#spww1,#spww2,#phone1,#phone2,#em1,#em2 {
	display: none;
}

#tarea {
	display: none;
}

#pan {
	display: none;
}
</style>
</head>
<body>

	<div class="bg container-fluid">

		<div id="h2">
			<blockquote>欢迎注册</blockquote>
			</h1>
		</div>
		<div id="y3">
			<ul class="list-unstyled list-inline row ">
				<li
					class="col-lg-1 col-lg-push-9 col-md-1 col-md-push-9 col-sm-1 col-sm-push-9 a"><a
					href="signin.html">用户登陆</a>
				</li>
			</ul>
		</div>
		<form action="QianUser_adduser.action" method="post" id="zc">
			<div>
				<div class="input-group has-feedback" id="sg">
					<span class="input-group-addon" id="basic-addon1"><span
						class="glyphicon glyphicon-user"></span>
					</span> <input type="text" id="ipuser" onblur="user()"
						class="form-control" placeholder="请输入用户名"
						name="pro_username"
						aria-describedby="basic-addon1"> <span
						class="glyphicon glyphicon-ok form-control-feedback" id="spUser1"></span>
					<!--验证-->
					<span class="glyphicon glyphicon-remove form-control-feedback"
						id="spUser2"></span>
					<!--验证-->
				</div>
				<small id="sm0" class="form-group input-group">用户名必须以字母开头,数字组合</small>
				<div class="input-group" id="sg">
					<span class="input-group-addon" id="basic-addon1"><span
						class="glyphicon glyphicon-lock"></span>
					</span> <input type="password" id="ipword" onblur="pw()"
						class="form-control" placeholder="请输入密码"
						name="pro_password"
						aria-describedby="basic-addon1"> <span
						class="glyphicon glyphicon-ok form-control-feedback" id="spw1"></span>
					<span class="glyphicon glyphicon-remove form-control-feedback"
						id="spw2"></span>
					<!--验证-->
				</div>
				<small id="sm1" class="form-group input-group">密码长度至少大于6位</small>

				<div class="input-group" id="sg">
					<span class="input-group-addon" id="basic-addon1"><span
						class="glyphicon glyphicon-lock"></span>
					</span> <input type="password" id="ipwword" onblur="pww()"
						class="form-control" placeholder="请确认密码"
						aria-describedby="basic-addon1"> <span
						class="glyphicon glyphicon-ok form-control-feedback" id="spww1"></span>
					<span class="glyphicon glyphicon-remove form-control-feedback"
						id="spww2"></span>
					<!--验证-->
				</div>
				<small id="sm2" class="form-group input-group">要与上述密码相等</small>

				<div class="input-group" id="sg">
				  <span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-earphone"></span></span>
				  <input type="tel"  id="inphone" onblur="phone()"class="form-control" placeholder="请输入手机号码" aria-describedby="basic-addon1"
				  name="pro_shouji">
				  <span class="glyphicon glyphicon-ok form-control-feedback" id="phone1"></span>
				  <span class="glyphicon glyphicon-remove form-control-feedback" id="phone2"></span><!--验证-->
				</div>
				<small id="sm3" class="form-group input-group">手机号码必须为11位</small>

				<div class="btn-group role=group" role="group">
					<button type="submit" class="btn btn-default" onclick="ag()"
						id="cj">立即注册</button>
					<span class="text-left" id="yzh">已有账号？<a href="logon.jsp">马上登陆</a>
					</span>
				</div>
		</form>
	</div>

	<script>
		$(function() {
			$('#pro').click(function() {
				if ($('#tarea').is(':hidden')) {
					$('#tarea').show();
				} else {
					$('#tarea').hide();

				}
			})
		})

		$("#lab").click(function() {
			if ($("#ck").is(':checked')) {
				$("#pan").hide();
				$("#pan").css({
					color : "black"
				});
			} else

				$("#pan").show();
			$("#pan").css({
				color : "red"
			});
		});

		function user() {
			var name = /^[\w]{6,10}$/;
			ipuser = document.getElementById("ipuser").value;
			var sp2 = document.getElementById("spUser2");
			var sp1 = document.getElementById("spUser1");
			var sm0 = document.getElementById("sm0");
			if (!name.test(ipuser)) {
			   
				sp2.style.display = "block";
				sp1.style.display = "none";
				sm0.style.color = "red";
				return false;
			} else {
                 $.ajax({
			type : "post",
			data:{pro_username:$("#ipuser").val()},
			url : "QianUser_checkname.action",
			dataType : "text",
			success : function(data) {
				if(data=="true"){
				 $("#sm0").html("用户名必须以字母开头,数字组合");
				 sp1.style.display = "block";
				sp2.style.display = "none";
				sm0.style.color = "gray";
				return true;
				}
				if(data=="false"){
				$("#sm0").html("用户名已存在");
				sm0.style.color = "red";
				return false;
				}
			}
		});
					
				
			}
		}
		function pw() {

			var name = /^[\w]{7,10}$/;
			ipword = document.getElementById("ipword").value;
			var spw1 = document.getElementById("spw1");
			var spw2 = document.getElementById("spw2");
			var sm1 = document.getElementById("sm1");
			if (!name.test(ipword)) {
				spw2.style.display = "block";
				spw1.style.display = "none";
				sm1.style.color = "red";
				return false;
			} else {

				spw1.style.display = "block";
				spw2.style.display = "none";
				sm1.style.color = "gray";
				return true;
			}
		}
		function pww() {
			var ipw = document.getElementById("ipword").value;
			var ipww = document.getElementById("ipwword").value;
			var spww1 = document.getElementById("spww1");
			var spww2 = document.getElementById("spww2");
			var sm2 = document.getElementById("sm2");
			if (ipww != ipw || ipww == '') {
				spww2.style.display = "block";
				spww1.style.display = "none";
				sm2.style.color = "red";
				return false;
			} else {
				spww2.style.display = "none";
				spww1.style.display = "block";
				sm2.style.color = "gray";
				return true;
			}
		}
		function phone(){
			
				var name=/^[1][358][0-9]{9}$/;
				inp=document.getElementById("inphone").value;
				var sp1=document.getElementById("phone1");
				var sp2=document.getElementById("phone2");
				var sm3=document.getElementById("sm3");
				if (!name.test(inp))
				{	
					sp2.style.display="block";
					sp1.style.display="none";
					sm3.style.color="red";
					return false;
				}else{
					
					sp1.style.display="block";
					sp2.style.display="none";
					sm3.style.color="gray";
					return true;
					
				}
			}
		function ag() {
			if (user() && pw() && pww()&&phone()) {
			 alert("提交成功");
				return true;

			} else {
				return false;
			}
		}
	</script>
	<script src="../js/jquery-3.2.1.min.js">
   </script>

	<script src="js/bootstrap.min.js"></script>
</body>
</html>

