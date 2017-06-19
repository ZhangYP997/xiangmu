<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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

	<table class="table table-bordered table-hover definewidth m10 tab">
		<thead>
			<tr>
				
				<th>菜品名称</th>
				<th>数量</th>
				<th>状态</th>
				<th>操作</th>
			</tr>
		</thead>
		<tr>
			<td>鱼香肉丝</td>
			<td>1份</td>
			<td>未制作</td>
			<td>
				<button type="button" class="btn btn-xs btn-primary"data-dismiss="modal">制作</button>
			</td>
		</tr>
		<tr>
			<td>香辣鸡丁</td>
			<td>2份</td>
			<td>制作中</td>
			<td>
				<button type="button" class="btn btn-xs btn-danger"data-dismiss="modal">出餐</button>
			</td>
		</tr>
	</table>

</body>
</html>
<script>
	
</script>