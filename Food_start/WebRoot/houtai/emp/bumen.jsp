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
	width: 45%;
	margin-left: 2%;
	margin-top: 2%;
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

		<button type="button" class="btn btn-success" data-toggle="modal"
			data-target="#deleteUser">新增分类</button>
	</form>
	<table class="table table-bordered table-hover definewidth  tab">
		<thead>
			<tr>
				<th>部门编号</th>
				<th>部门名称</th>
				<th>操作</th>
			</tr>
		</thead>
		<tr>
			<td>1</td>
			<td>服务部</td>
			<td><input type="button" value="删除"
				class="btn btn-primary btn-xs">
			</td>

		</tr>
		<tr>
			<td>2</td>
			<td>传菜部</td>
			<td><input type="button" value="删除"
				class="btn btn-primary btn-xs">
			</td>
			</td>

		</tr>
		<tr>
			<td>3</td>
			<td>厨房</td>
			<td><input type="button" value="删除"
				class="btn btn-primary btn-xs">
			</td>
			</td>

		</tr>
		<tr>
			<td>4</td>
			<td>后勤部</td>
			<td><input type="button" value="删除"
				class="btn btn-primary btn-xs">
			</td>
			</td>

		</tr>
		<tr>
			<td>5</td>
			<td>清洁部</td>
			<td><input type="button" value="删除"
				class="btn btn-primary btn-xs">
			</td>
			</td>

		</tr>

	</table>
	<!--弹出新增菜类窗口-->
	<div class="modal fade" id="deleteUser" role="dialog"
		aria-labelledby="gridSystemModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h3 class="modal-title" id="gridSystemModalLabel">菜品分类增加</h3>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th colspan="2">部门分类新增</th>
								</tr>
							</thead>
							<tr>
								<td class="tableleft">分类名称</td>
								<td><input type="text" name="name" />
								</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="modal-footer">
					<form action="#">
						<button type="button" class="btn btn-xs btn-primary"
							data-dismiss="modal">取 消</button>
						<button type="submit" class="btn btn-success btn-xs">确定</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

<script>
    
</script>
