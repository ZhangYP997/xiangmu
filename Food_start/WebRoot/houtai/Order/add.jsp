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
	padding-bottom:40px;
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
</style>
</head>

<body>
	<form class="form-inline definewidth m20" action="index.jsp"
		method="get">
		订单查询： <input type="text" name="rolename" id="rolename"
			class="abc input-default" placeholder="" value="">&nbsp;&nbsp;
		<button type="submit" class="btn btn-primary">查询</button>
		
	</form>
	<table class="table table-bordered table-hover definewidth m10">
		<thead>
			<tr>
				<th>订单编号</th>
				<th>订单桌号</th>
				<th>订单金额</th>
				<th>下单时间</th>
				<th>订单数量</th>
				<th>订单状态</th>
				
			</tr>
		</thead>
		<tr>
			<td>1</td>
			<td>20</td>
			<td>￥58</td>
			<td>2017-7-1</td>
			<td>5</td>
			<td>2</td>
			
		</tr>
		<tr>
			<td>2</td>
			<td>30</td>
			<td>￥55</td>
			<td>2017-7-1</td>
			<td>2</td>
			<td>1</td>
			
		</tr>
	</table>
	
	<div class="inline pull-right page">
		10 条记录 1/50 页 <a href='#'>下一页</a> <span class='current'>1</span> <a
			href='#'>2</a><a href='/chinapost/index.php?m=Label&a=index&p=3'>3</a>
		<a href='#'>4</a><a href='#'>5</a> <a href='#'>下5页</a> <a href='#'>最后一页</a>
	</div>

</body>
</html>
<script>
    $(function () { 
		$('#addnew').click(function(){
				window.location.href="add.jsp";
		 });
    });
	function del(id)
	{	
		if(confirm("确定要删除吗？"))
		{
			var url = "index.jsp";	
			window.location.href=url;		
		}
	}
</script>