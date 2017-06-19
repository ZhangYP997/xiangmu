<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title></title>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="../css/style.css" />
<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.js"></script>

<style type="text/css">
body {
	padding-bottom: 40px;
}

.sidebar-nav {
	padding: 9px 0;
}

@media ( max-width : 980px) { /* Enable use of floated navbar text */
	.navbar-text.pull-right {
		float: none;
		padding-left: 5px;
		padding-right: 5px;
	}
}
.tab {
	
	text-align: center;
}

.tab th{
	text-align: center;
}
</style>
</head>

<body>
	<form class="form-inline definewidth m20" action="index.jsp"
		method="get">

		
		<button type="button" data-toggle="modal" data-target="#deleteUser"
			class="btn btn-success">新增菜单</button>
		
	</form>
	

	<table class="table table-bordered table-hover definewidth m10 tab">
		<thead>
			<tr>
				<th>菜品编号</th>
				<th>菜品类别</th>
				<th>菜品名称</th>
				<th>菜品价格</th>
				<th>菜品图片</th>
				<th>管理操作</th>
			</tr>
		</thead>
		<tr>
			<td>1</td>
			<td>特色凉菜</td>
			<td>面酱黄瓜</td>
			<td>￥8.00</td>
			<td><input type="text"></td>
			<td>
				<button class="btn btn-success btn-xs">停用</button>
                <button data-toggle="modal" data-target="#deleteUser" class="btn btn-danger btn-xs">删除</button>
			</td>
		</tr>
		<tr>
			<td>2</td>
			<td>特色小炒</td>
			<td>香菇青菜</td>
			<td>￥15.00</td>
			<td><input type="text"></td>
			<td>
				<button class="btn btn-success btn-xs">停用</button>
                <button data-toggle="modal" data-target="#deleteUser" class="btn btn-danger btn-xs">删除</button>
			</td>
		</tr>
		
	</table>
	<!--弹出新增菜品窗口-->
	<div class="modal fade" id="deleteUser" role="dialog"
		aria-labelledby="gridSystemModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
						<h3 class="modal-title" id="gridSystemModalLabel">新菜增加</h3>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<table class="table table-bordered">
							<tr>
								<td>菜品类别：</td><td><input type="text"></td>
							</tr>
							<tr>
								<td>菜品名称：</td><td><input type="text"></td>
							</tr>
							<tr>
								<td>菜品价格：</td><td><input type="text"></td>
							</tr>
							<tr>
								<td>菜品图片：</td><td><input type="text"></td>
							</tr>
						</table>
					</div>
				</div>
				<div class="modal-footer">
					<form action="foodinfo.jsp">
						<button type="button" class="btn btn-xs btn-primary"
							data-dismiss="modal">
							取 消
						</button>
						<button type="submit" class="btn btn-success btn-xs">
							确定
						</button>
					</form>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	
</body>
</html>

<script>
    $(function () {
        

		$('#addnew').click(function(){

				window.location.href="add.jsp";
		 });


    });
	
</script>
