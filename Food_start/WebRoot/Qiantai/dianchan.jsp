<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap 101 Template</title>
<link href="../css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
*{
padding:0px;
margin:0px;
} 
html {
	width: 100%;
	overflow-x: hidden;
}

body {
	background: url(../imags/1.jpg) no-repeat;
	background-size: 100% 100%;
}

#navbar-brand {
	margin: 0;
	padding: 0;
}

#navbar-nav {
	margin-top: 0;
}

#active {
	margin-right: 50px;
}

#navbar {
	margin-left: 65%;
	width: 20%;
	padding: 1px;
}

#dropdown {
	height: 700px;
}

#dropdown button {
	margin-top: 10px;
	border-radius: 10px;
}

.dropdown-menu li {
	width: 60px;
}

.a {
	overflow: auto;
	background-color: #eee;
	border: 1px solid #ccc;
}

#odermenu {
	display: none;
}

#modal-content {
	z-index: 5000 !important;
}

#left-ul li {
	margin-top: 10px;
}

.form-control {
	padding-left: 45%;
}

.bg-a {
	background: #99FFFF;
}

.bg-b {
	background: #FFFFFF;
}
#ding{
height:700px;
}
</style>
</head>
<body>
	<!--白色，浅蓝色，深蓝色，绿色，黄色，红色，黑色，对应的class为btn,btn btn-primary,btn btn-info,btn btn-success,btn btn-warning,btn btn-danger,btn btn-inverse-->
	<div class="container">
		<div class="navbar-header">
			<img src="../imags/logo.png"/>
		</div>
		<div class="collapse navbar-collapse btn-group">
			<ul class="nav navbar-nav navbar-right" id="navbar-nav">
				<li class="active" id="active"><a href="#">${zhuoid}号桌</a></li>
				<li>&nbsp;<a href="#" type="button" class="btn btn-default">
							</a></li>
			</ul>

		</div>
	</div>
	<div class="container">
		<div class="row" id="row">
			<div class="col-md-2 col-sm-2 a " role="group" id="dropdown">
				<ul class="nav " id="left-ul">
					<c:forEach items="${caitype }" var="aa">
						<li><a type="button" href="Dian_caiping.action?cate_id=${aa.cate_id}" class="btn btn-default">${aa.cate_name }</a></li>
					</c:forEach>
					
				</ul>
			</div>
			<div class="col-md-10 col-sm-6 a" id="ding">
			<c:forEach items="${yileicai}" var="sa">
				<div class="col-md-3  col-sm-6 a">
					<div class="thumbnail">
					
						<img src="../imags/yucai.jpg" width="250px" height="200px">
						<div class="caption text-center">
						<span>${sa.dish_id}<span>
							<p id="pone">${sa.dish_name}</p>
							<span id="ptwo">${sa.dish_price}</span>元
							<p class="input-group ">
								<a href="#" class="btn btn-primary input-group-addon jian"
									role="button">-1</a> <input type="text"
									class="form-control numb" value="0" />
							 <a href="#"  class="btn btn-default input-group-addon add" role="button" >+1</a>
							</p>
						</div>
					</div>
				</div>
				</c:forEach>
				

				

				



			</div>

		</div>

	</div>

	<div class="row">
		<div class="col-md-8  col-sm-6"></div>
		<div class="navbar  navbar-fixed-bottom col-md-4 col-sm-6" id="navbar">
			<button type="button" class="btn btn-primary btn-lg"
				data-toggle="modal" data-target="#myModal">我的菜单</button>

			<!-- Modal -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content" id="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">我的菜单</h4>
						</div>
						<div class="modal-body">
							<table class="table">
								<thead>
									<tr>
										<th>菜品名称</th>
										<th>数量</th>
										<th>单价</th>
										<th>小计</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody class="tbodya">

								</tbody>
							</table>
						</div>
						<div class="modal-footer">
							总价：<span id="count"></span>元
							<button type="button" class="btn btn-default"
								data-dismiss="modal">退出</button>
							<button type="button" class="btn btn-primary">确认下单</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	</div>



	<script src="../js/jquery-3.2.1.min.js">
		
	</script>
	<script src="../js/bootstrap.min.js"></script>
	<script>
	
		function del(ba) {
			var count = 0;
			var nb = $(ba).parent().parent().children("td:first").text();
			$(".jian").each(function() {
				var na = $(this).parent().parent().find("#pone").text();
				if (na == nb) {
					$(this).parent().parent().parent().removeClass("bg-a");
					$(this).next().val(0);
				}
			});
			$(ba).parent().parent().remove();

			$(".tbodya tr").each(function() {
				var con = $(this).children("td:eq(3)").text();
				con = con * 1;
				count += con;
			});

			$("#count").text(count.toFixed(2));

		}

		$(".numb").blur(function() {
			$(".jian").next().val(0)
		});

		$(".add").click(function() {
			var num = parseInt($(this).prev().val());
			var totalnum = num + 1;
			if (totalnum > 0) {
				$(this).parent().parent().parent().removeClass("bg-b");
				$(this).parent().parent().parent().addClass("bg-a");
			}
			$(this).prev().val(totalnum);
			shop($(this).parent().parent());
		});
		$(".jian").click(function() {
			var num = parseInt($(this).next().val());
			var totalnum = num - 1;
			if (totalnum == 0) {
				$(this).parent().parent().parent().removeClass("bg-a");
				$(this).parent().parent().parent().addClass("bg-b");

			}
			if (totalnum < 0) {
				$(this).next().val("0");
				return;
			}
			$(this).next().val(totalnum);
			shop($(this).parent().parent());
		});
		function shop(aa) {
			var mm = aa.find("#pone").html();
			var nn = aa.find("#ptwo").html();
			var vv = aa.find(".numb").val();
			var flag = 0;
			var count = 0;

			$(".tbodya tr").each(function() {

				var sn = $(this).children("td:first").text();
				if (sn == mm) {
					flag = 1;
					var num = $(this).children("td:eq(1)").text(vv);
					$(this).children("td:eq(3)").text((vv * nn).toFixed(2));
					if (vv == 0) {
						$(this).remove();
					}

				}

				var con = $(this).children("td:eq(3)").text();
				con = con * 1;
				count += con;
			});

			if (flag == 0) {
				var tr1 = $("<tr><td>"
						+ mm
						+ "</td><td>"
						+ vv
						+ "</td><td>"
						+ nn
						+ "</td><td>"
						+ nn
						+ "</td><td><input type='button' class='btn btn-primary btn-xs ddmm' onclick='del(this)'  value='删除'/></td></tr>");
				$(".tbodya").append(tr1);
				count = count + (nn * 1);
			}

			$("#count").text(count.toFixed(2));

		}
	</script>
</body>
</html>