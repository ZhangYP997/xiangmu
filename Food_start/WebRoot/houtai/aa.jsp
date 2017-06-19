<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'aa.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  
  <link rel="stylesheet" href="houtai/css/bootstrap.min.css" type="text/css"></link>
  </head>
  <style type="text/css">
  		  #u4>li {
	margin-top: 10px;
}

#u4>li>button {
	width: 100px;
	height: 100px;
	background-color: #A2FFA2;
}

#u8>li {
	margin-top: 10px;
}

#u8>li>button {
	width: 100px;
	height: 100px;
	background-color: #A2FFA2;
}

#u10>li {
	margin-top: 10px;
}

#u10>li>button {
	width: 100px;
	height: 100px;
	background-color: #A2FFA2;
}

#u2>li {
	margin-top: 10px;
}

#u3>li {
	margin-top: 10px;
}

#last {
	position: relative;
	top: 100px;
}

small {
	color: gray;
	margin-left: -40px;
	position: relative;
	top: 20;
}



#sr>div>input {
	width: 100px;
}

#sr>div {
	margin-top: 10px;
}


#kt>div {
	margin-top: 15px;
}

#rs {
	margin-left: -5%;
}

  </style>
 
  <body>
   <script type="text/javascript">
   	$(function() {
	// 桌子切换；
	$("#all").click(function() {
		$("#u4>li").show();
		$("#u8>li").show();
		$("#u10>li").show();
	});

	$("#four").click(function() {
		$("#u4>li").show();
		$("#u8>li").hide();
		$("#u10>li").hide();
	});
	$("#eight").click(function() {
		$("#u8>li").show();
		$("#u4>li").hide();
		$("#u10>li").hide();
	});
	$("#ten").click(function() {
		$("#u10>li").show();
		$("#u4>li").hide();
		$("#u8>li").hide();
	});
	// 桌子点击事件；

});

$(function(){
	$("#bb>ul>li>button").click(function(e) {
		$("#s1").html($(e.target).val());
		$("#s2").html($(e.target).val());
		$("#starDesk").click(function(){
			$(e.target).css({'background-color':'red'});
			
		});
		$("#over").click(function(){
			$(e.target).css({'background-color':'#A2FFA2'});
			
		});
	});
	
});

   	
   </script>
<div class="col-md-9">
		<div class="col-md-7  col-md-push-2" id="div7">
			<ul class="list-unstyled list-inline" id="u1">
				<li><button class="btn btn-default" type="submit" id="all"
						style="background:#CDCDCD">全部</button>
				</li>
				<li><button class="btn btn-default" type="submit" id="four">4人桌</button>
				</li>
				<li><button class="btn btn-default" type="submit" id="eight">6-8人桌</button>
				</li>
				<li><button class="btn btn-default" type="submit" id="ten">8人桌以上</button>
				</li>
			</ul>
		</div>
		<div class="col-md-5 ">
			<ul class="list-unstyled list-inline" id="u2">
				<li><input type="radio" name="radio" checked><b>全部</b>
				</li>
				<li><input type="radio" name="radio"><b>空闲</b>
				</li>
				<li><input type="radio" name="radio"><b>就餐</b>
				</li>
				<li><input type="radio" name="radio"><b>预定</b>
				</li>
				<li><input type="radio" name="radio"><b>预结</b>
				</li>
			</ul>
		</div>
		<div id="bb">
			<ul class="list-unstyled list-inline col-md-12 col-md-push-2 " id="u4">
				<li><button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal" value="1号桌">
						1号桌<br> <small>可供4人</small>
					</button>
				</li>
				<li><button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal" value="2号桌">
						2号桌<br> <small>可供4人</small>
					</button>
				</li>
				<li><button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal"value="3号桌">
						3号桌<br> <small>可供4人</small>
					</button>
				</li>
				<li><button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal"value="4号桌">
						4号桌<br> <small>可供4人</small>
					</button>
				</li>
				<li><button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal"value="5号桌">
						5号桌<br> <small>可供4人</small>
					</button>
				</li>
				<li><button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal"value="6号桌">
						6号桌<br> <small>可供4人</small>
					</button>
				</li>
				<li><button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal"value="7号桌">
						7号桌<br> <small>可供4人</small>
					</button>
				</li>
				<li><button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal"value="8号桌">
						8号桌<br> <small>可供4人</small>
					</button>
				</li>
			</ul>
			<ul class="list-unstyled list-inline col-md-12 col-md-push-2" id="u8">
				<li><button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal"value="9号桌">
						9号桌<br> <small>可供8人</small>
					</button>
				</li>
				<li><button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal"value="10号桌">
						10号桌<br> <small>可供8人</small>
					</button>
				</li>
				<li><button type="button" class="btn btn-default btn-lg"data-toggle="modal" data-target="#myModal"value="11号桌">
						11号桌<br> <small>可供8人</small>
					</button>
				</li>
				<li><button type="button" class="btn btn-default btn-lg"data-toggle="modal" data-target="#myModal"value="12号桌">
						12号桌<br> <small>可供8人</small>
					</button>
				</li>
				<li><button type="button" class="btn btn-default btn-lg"data-toggle="modal" data-target="#myModal"value="13号桌">
						13号桌<br> <small>可供8人</small>
					</button>
				</li>
				<li><button type="button" class="btn btn-default btn-lg"data-toggle="modal" data-target="#myModal"value="14号桌">
						14号桌<br> <small>可供8人</small>
					</button>
				</li>
				<li><button type="button" class="btn btn-default btn-lg"data-toggle="modal" data-target="#myModal"value="15号桌">
						15号桌<br> <small>可供8人</small>
					</button>
				</li>
				<li><button type="button" class="btn btn-default btn-lg"data-toggle="modal" data-target="#myModal"value="16号桌">
						16号桌<br> <small>可供8人</small>
					</button>
				</li>
			</ul>
			<ul class="list-unstyled list-inline col-md-12 col-md-push-2"
				id="u10">

				<li><button type="button" class="btn btn-default btn-lg"data-toggle="modal" data-target="#myModal"value="17号桌">
						17号桌<br> <small>可供10人</small>
					</button>
				</li>
				<li><button type="button" class="btn btn-default btn-lg"data-toggle="modal" data-target="#myModal"value="18号桌">
						18号桌<br> <small>可供10人</small>
					</button>
				</li>
				<li><button type="button" class="btn btn-default btn-lg"data-toggle="modal" data-target="#myModal"value="19号桌">
						19号桌<br> <small>可供10人</small>
					</button>
				</li>
				<li><button type="button" class="btn btn-default btn-lg"data-toggle="modal" data-target="#myModal"value="20号桌">
						20号桌<br> <small>可供10人</small>
					</button>
				</li>
				<li><button type="button" class="btn btn-default btn-lg"data-toggle="modal" data-target="#myModal"value="21号桌">
						21号桌<br> <small>可供10人</small>
					</button>
				</li>
				<li><button type="button" class="btn btn-default btn-lg"data-toggle="modal" data-target="#myModal"value="22号桌">
						22号桌<br> <small>可供10人</small>
					</button>
				</li>
				<li><button type="button" class="btn btn-default btn-lg"data-toggle="modal" data-target="#myModal"value="23号桌">
						23号桌<br> <small>可供10人</small>
					</button>
				</li>
				<li><button type="button" class="btn btn-default btn-lg"data-toggle="modal" data-target="#myModal"value="24号桌">
						24号桌<br> <small>可供10人</small>
					</button>
				</li>
			</ul>
		</div>
	</div>
		<div class="col-md-3">
		<ul class="list-unstyled list-inline col-md-12 col-md-push-3" id="u2">
			<li><b>桌号:</b><b id="s2"></b>
			</li>
			<br>

			<li><b>单号:</b>
			</li>
			<br />
			<li><b>开台时间:</b>
			</li>
			<br />
			<li><b>开台备注:</b>
			</li>
		</ul>
		<div id="last">
			<ul class="list-unstyled list-inline col-md-12 col-md-push-3" id="u3">
				<li><button type="button" class="btn btn-default btn-lg">
						<span class="glyphicon glyphicon-user"></span>开台
					</button>
				</li>
				<li><button type="button" class="btn btn-default btn-lg">
						<span class="glyphicon glyphicon-cutlery"></span>点单
					</button>
				</li>
				<br>

				<li><button type="button" class="btn btn-default btn-lg">
						<span class="glyphicon glyphicon-usd"></span>结账
					</button>
				</li>
				<li><button type="button" class="btn btn-default btn-lg">
						<span class="glyphicon glyphicon-trash"></span>清台
					</button>
				</li>
			</ul>
			<br>
			 <div class="dropdown col-md-12 col-md-push-3">
  			<button class="btn btn-default dropdown-toggle glyphicon glyphicon-user btn-lg" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
   			 更多操作
    		<span class="caret"></span>
  			</button>
			  <ul class="dropdown-menu">
			    <li><a href="#"><b>顾客转台</b></a></li>
			    <li><a href="#"><b>打印清单</b></a></li>
			  </ul>
		   </div> 
		   

		</div>
	</div>
	<!-- yes -->


	<div class="container-fluid text-center">
		
		<!-- 模态框（Modal） -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 class="modal-title" id="myModalLabel">开台状况</h4>
					</div>
					<div class="modal-body" id="kt">
						
						<div class="dropdown">
							<button class="btn btn-default dropdown-toggle " type="button"
								id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="true">
								<b id="s1"></b><b>服务员</b> <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
								<li><a href="#">0001</a></li>
								<li><a href="#">0002</a></li>
								<li><a href="#">0003</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#">Separated link</a></li>
							</ul>
						</div>
					    <div id="rs"> <b>就餐人数：</b><input type="text"></div>
						<div id="rs"> <b>就餐备注：</b><input type="text"></div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary btn-lg "data-dismiss="modal"
							aria-hidden="true" id="starDesk">开台</button>
						<button type="button" class="btn btn-warning btn-lg" data-dismiss="modal"
							aria-hidden="true" id="over">清台</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>
</body>
</html>
