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
   
     
    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#addUser">添加权限</button>
    
</form>
<table class="table table-bordered table-hover definewidth m10" >
    <thead>
    <tr>
        <th>编码</th>
        <th>权限名</th>
        <th>描述</th>
        <th>操作</th>
    </tr>
    </thead>
	     <tr>
            <td>1</td>
            <td>管理员</td>
             <td>具有总权限</td>
            <td>
                 <button data-toggle="modal" data-target="#changeChar" class="btn btn-success btn-xs">修改</button>
                  <button data-toggle="modal" data-target="#deleteUser" class="btn btn-danger btn-xs">删除</button>
            </td>
        </tr>
         <tr>
            <td>2</td>
            <td>游客</td>
            <td>可查看信息</td>
            <td>
                  <button data-toggle="modal" data-target="#changeChar" class="btn btn-success btn-xs">修改</button>
                  <button data-toggle="modal" data-target="#deleteUser" class="btn btn-danger btn-xs">删除</button>
            </td>
        </tr>
        <tr>
            <td>3</td>
            <td>游客</td>
            <td>可查看信息</td>
            <td>
                  <button data-toggle="modal" data-target="#changeChar" class="btn btn-success btn-xs">修改</button>
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
                                    	确定要删除该权限？删除后不可恢复！
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
            
             <!--弹出添加权限窗口-->
                <div class="modal fade" id="addUser" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">添加权限</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form action="index.jsp" method="post" class="definewidth m20">
   				 <table class="table table-bordered table-hover definewidth m10">
        <tr>
            <td width="10%" class="tableleft">角色名称</td>
            <td><input type="text" name="title"/></td>
        </tr>
        <tr>
            <td class="tableleft">状态</td>
            <td>
                <input type="radio" name="status" value="1" checked/> 启用  
                <input type="radio" name="status" value="0"/> 禁用
            </td>
        </tr>
        <tr>
            <td class="tableleft">权限</td>
            <td>
                <ul>
                	<li><label class='checkbox inline'><input type='checkbox' name='group[]' value='' />公用节点</label>
	                	<ul>
	                		<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='21' />省市区级联数据</label>
	                		<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='22' />省市区数据获取</label>
	                	</ul>
                	</li>
                	<li><label class='checkbox inline'><input type='checkbox' name='group[]' value='' />权限</label>
               		 	<ul>
		               		 <li><label class='checkbox inline'><input type='checkbox' name='node[]' value='1' />权限列表</label>
		               		 <li><label class='checkbox inline'><input type='checkbox' name='node[]' value='2' />权限添加</label>
		               		 <li><label class='checkbox inline'><input type='checkbox' name='node[]' value='3' />权限编辑</label>
		               		 <li><label class='checkbox inline'><input type='checkbox' name='node[]' value='4' />权限删除</label>
               		 	</ul>
               		 </li>
               		 <li><label class='checkbox inline'><input type='checkbox' name='group[]' value='' />用户</label>
	               		 <ul><li><label class='checkbox inline'><input type='checkbox' name='node[]' value='9' />用户列表</label>
		               		 <li><label class='checkbox inline'><input type='checkbox' name='node[]' value='10' />用户添加</label>
		               		 <li><label class='checkbox inline'><input type='checkbox' name='node[]' value='11' />用户编辑</label>
		               		 <li><label class='checkbox inline'><input type='checkbox' name='node[]' value='12' />用户删除</label>
	               		 </ul>
               		 </li>
               		 <li><label class='checkbox inline'><input type='checkbox' name='group[]' value='' />菜单管理</label>
	               		 <ul><li><label class='checkbox inline'><input type='checkbox' name='node[]' value='13' />菜单列表</label>
		               		 <li><label class='checkbox inline'><input type='checkbox' name='node[]' value='14' />菜单新增</label>
		               		 <li><label class='checkbox inline'><input type='checkbox' name='node[]' value='15' />菜单编辑</label>
		               		 <li><label class='checkbox inline'><input type='checkbox' name='node[]' value='16' />菜单删除</label>
	               		 </ul>
               		 </li>
               		 <li><label class='checkbox inline'><input type='checkbox' name='group[]' value='' />角色</label>
	               		 <ul><li><label class='checkbox inline'><input type='checkbox' name='node[]' value='5' />角色列表</label>
		               		 <li><label class='checkbox inline'><input type='checkbox' name='node[]' value='6' />角色添加</label>
		               		 <li><label class='checkbox inline'><input type='checkbox' name='node[]' value='7' />角色编辑</label>
		               		 <li><label class='checkbox inline'><input type='checkbox' name='node[]' value='8' />角色删除</label>
	               		 </ul>
               		 </li>
                </ul> 
            </td>
        </tr>
        
    	</table>
		</form>
    </div>
  </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
                
                
                <!--修改权限弹出窗口-->
                <div class="modal fade" id="changeChar" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">修改权限</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                     <form action="index.jsp" method="post" class="definewidth m20">
   				 <table class="table table-bordered table-hover definewidth m10">
        <tr>
            <td width="10%" class="tableleft">角色名称</td>
            <td><input type="text" name="title"/></td>
        </tr>
        <tr>
            <td class="tableleft">状态</td>
            <td>
                <input type="radio" name="status" value="1" checked/> 启用  
                <input type="radio" name="status" value="0"/> 禁用
            </td>
        </tr>
        <tr>
            <td class="tableleft">权限</td>
            <td>
                <ul>
                	<li><label class='checkbox inline'><input type='checkbox' name='group[]' value='' />公用节点</label>
	                	<ul>
	                		<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='21' />省市区级联数据</label>
	                		<li><label class='checkbox inline'><input type='checkbox' name='node[]' value='22' />省市区数据获取</label>
	                	</ul>
                	</li>
                	<li><label class='checkbox inline'><input type='checkbox' name='group[]' value='' />权限</label>
               		 	<ul>
		               		 <li><label class='checkbox inline'><input type='checkbox' name='node[]' value='1' />权限列表</label>
		               		 <li><label class='checkbox inline'><input type='checkbox' name='node[]' value='2' />权限添加</label>
		               		 <li><label class='checkbox inline'><input type='checkbox' name='node[]' value='3' />权限编辑</label>
		               		 <li><label class='checkbox inline'><input type='checkbox' name='node[]' value='4' />权限删除</label>
               		 	</ul>
               		 </li>
               		 <li><label class='checkbox inline'><input type='checkbox' name='group[]' value='' />用户</label>
	               		 <ul><li><label class='checkbox inline'><input type='checkbox' name='node[]' value='9' />用户列表</label>
		               		 <li><label class='checkbox inline'><input type='checkbox' name='node[]' value='10' />用户添加</label>
		               		 <li><label class='checkbox inline'><input type='checkbox' name='node[]' value='11' />用户编辑</label>
		               		 <li><label class='checkbox inline'><input type='checkbox' name='node[]' value='12' />用户删除</label>
	               		 </ul>
               		 </li>
               		 <li><label class='checkbox inline'><input type='checkbox' name='group[]' value='' />菜单管理</label>
	               		 <ul><li><label class='checkbox inline'><input type='checkbox' name='node[]' value='13' />菜单列表</label>
		               		 <li><label class='checkbox inline'><input type='checkbox' name='node[]' value='14' />菜单新增</label>
		               		 <li><label class='checkbox inline'><input type='checkbox' name='node[]' value='15' />菜单编辑</label>
		               		 <li><label class='checkbox inline'><input type='checkbox' name='node[]' value='16' />菜单删除</label>
	               		 </ul>
               		 </li>
               		 <li><label class='checkbox inline'><input type='checkbox' name='group[]' value='' />角色</label>
	               		 <ul><li><label class='checkbox inline'><input type='checkbox' name='node[]' value='5' />角色列表</label>
		               		 <li><label class='checkbox inline'><input type='checkbox' name='node[]' value='6' />角色添加</label>
		               		 <li><label class='checkbox inline'><input type='checkbox' name='node[]' value='7' />角色编辑</label>
		               		 <li><label class='checkbox inline'><input type='checkbox' name='node[]' value='8' />角色删除</label>
	               		 </ul>
               		 </li>
                </ul> 
            </td>
        </tr>
        
    	</table>
		</form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green">保 存</button>
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
				window.location.href="user.jsp";
		 });
    });
	function del(id){	
		if(confirm("确定要删除吗？")){	
			var url = "index.jsp";			
			window.location.href=url;			
		}
	}
</script>
