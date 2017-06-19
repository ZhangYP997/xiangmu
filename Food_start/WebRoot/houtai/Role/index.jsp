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

        @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
                float: none;
                padding-left: 5px;
                padding-right: 5px;
            }
        }


    </style>
  </head>
  
  <body>
    <form class="form-inline definewidth m20" action="index.jsp" method="get">  
	   	 角色名称：
	    <input type="text" name="rolename" id="rolename"class="abc input-default" placeholder="" value="">&nbsp;&nbsp;  
	    <button type="submit" class="btn btn-primary">查询</button>&nbsp;&nbsp; 
	    <button type="button" class="btn btn-success" id="addnew">添加角色</button>
</form>
	<table class="table table-bordered table-hover definewidth m10" >
		    <thead>
		    <tr>
		        <th>角色编号</th>
		        <th>角色名称</th>
		         <th>角色备注</th>
		        <th>状态</th>
		        <th>操作</th>
		    </tr>
		    </thead>
			     <tr>
		            <td>1</td>
		            <td>管理员</td>
		            <td>管理员</td>
		            <td>1</td>
		            <td>
	                   <button onclick="window.location.href='add.jsp'" class="btn btn-success btn-xs">编辑</button>
	                   <button data-toggle="modal" data-target="#deleteUser" class="btn btn-danger btn-xs">删除</button>
	            </td>
	        </tr>
	         <tr>
	            <td>2</td>
	            <td>大堂经理</td>
	            <td>大堂经理</td>
	            <td>1</td>
	            <td>
	                  <button onclick="window.location.href='add.jsp'" class="btn btn-success btn-xs">编辑</button>
	                   <button data-toggle="modal" data-target="#deleteUser" class="btn btn-danger btn-xs">删除</button>
	            </td>
	        </tr>
	        <tr>
	            <td>3</td>
	            <td>服务员</td>
	            <td>服务员</td>
	            <td>1</td>
	            <td>
	                   <button onclick="window.location.href='add.jsp'" class="btn btn-success btn-xs">编辑</button>
	                   <button data-toggle="modal" data-target="#deleteUser" class="btn btn-danger btn-xs">删除</button>
	            </td>
	        </tr>
	     </table>
     
     <!--弹出删除用户警告窗口-->
                <div class="modal fade" id="deleteUser" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h3 class="modal-title" id="gridSystemModalLabel">提示</h3>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    	确定要删除该角色？删除后不可恢复！
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-green btn-xs">确定</button>
                            </div>
                        </div>    
                    </div>
                </div>
            </div>
  	</body>
</html>

<script>
     $(function () {
		$('#addnew').click(function(){
				window.location.href="add.jsp";
		 });
    });

	function del(id){
		if(confirm("确定要删除吗？")){
			var url = "index.jsp";
			window.location.href=url;		
		}
	} 
</script>
