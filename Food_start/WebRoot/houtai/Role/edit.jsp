<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
    <form class="form-inline definewidth m20"  action="FuUser_adduser.action" method="post">  
    	用户名称：
	    <input type="text" name="rolename" id="rolename"class="abc input-default" placeholder="" value="">&nbsp;&nbsp;  
	    <button type="submit" class="btn btn-primary">查询</button>&nbsp;&nbsp;
	    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#addUser">添加用户</button>
	</form>
	<table class="table table-bordered table-hover definewidth m10" >
	    <thead>
	    <tr>
	        <th>用户id</th>
	        <th>用户名</th>
	        <th>用户密码</th>
	        <th>状态</th>
	        <th>操作</th>
	    </tr>
	    </thead>
	     <tr>
            <td>1</td>
            <td>张三</td>
             <td>123456</td>
            <td>1</td>
            <td>
                 <button data-toggle="modal" data-target="#reviseUser" class="btn btn-success btn-xs">修改</button>
                  <button data-toggle="modal" data-target="#deleteUser" class="btn btn-danger btn-xs">删除</button>
            </td>
        </tr>
         <tr>
            <td>2</td>
            <td>李四</td>
            <td>123</td>
            <td>1</td>
            <td>
                  <button data-toggle="modal" data-target="#reviseUser" class="btn btn-success btn-xs">修改</button>
                  <button data-toggle="modal" data-target="#deleteUser" class="btn btn-danger btn-xs">删除</button>
            </td>
        </tr>
        <tr>
            <td>3</td>
            <td>王五</td>
            <td>zhagnsan123</td>
            <td>1</td>
            <td>
                  <button data-toggle="modal" data-target="#reviseUser" class="btn btn-success btn-xs">修改</button>
                  <button data-toggle="modal" data-target="#deleteUser" class="btn btn-danger btn-xs">删除</button>
            </td>
        </tr>     
       <%--  <c:forEach>
	        <tr>
	            <td>${c.cus_id }</td>
	            <td>${c.cus_username }</td>
	            <td>${c.cus_password}</td>
	            <td>1</td>
	            <td>
	                  <button data-toggle="modal" data-target="#reviseUser" class="btn btn-success btn-xs">修改</button>
	                  <button data-toggle="modal" data-target="#deleteUser" class="btn btn-danger btn-xs">删除</button>
            	</td>
        	</tr>
        </c:forEach> --%>
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
                                    	确定要删除该用户？删除后不可恢复！
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
            
             <!--弹出添加用户窗口-->
                <div class="modal fade" id="addUser" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">添加用户</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal" action="FuUser_adduser.action" method="post">
                                        <div class="form-group ">
                                            <label  class="col-xs-3 control-label" >用户id：</label>
                                            <div class="col-xs-8 ">
                                                <input  class="form-control input-sm duiqi" name="cus_id">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label" >用户名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm duiqi" id="sLink" placeholder="" name="cus_username">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label" >用户密码：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd" placeholder="" name="cus_password">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">角色：</label>
                                            <div class="col-xs-8">
                                                <select class=" form-control select-duiqi">
                                                    <option value="">管理员</option>
                                                    <option value="">普通用户</option>
                                                    <option value="">游客</option>
                                                </select>
                                            </div>
                                        </div>
                                         <div class="modal-footer">
			                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
			                                <button type="submit" class="btn btn-xs btn-green" >保 存</button>
		                            	</div>
                                    </form>
                                </div>
                            </div>
                           
                        </div>
                    </div>
                </div>
                
                
                 <!--弹出修改用户窗口-->
                <div class="modal fade" id="reviseUser" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">修改用户</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label">用户id：</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label">用户名：</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm duiqi" id="sLink" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label">用户密码：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd" placeholder="">
                                            </div>
                                        </div>
                                       <div class="form-group">
                                            <label for="sKnot" class="col-xs-3 control-label">角色：</label>
                                            <div class="col-xs-8">
                                                <select class=" form-control select-duiqi">
                                                    <option value="">管理员</option>
                                                    <option value="">普通用户</option>
                                                    <option value="">游客</option>
                                                </select>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-green" id="addnew">保 存</button>
                            </div>
                        </div>
                    </div>
                </div>
	  	</body>
	</html>

<script>
    $(function () {       
		$('#addnew').click(function(){
				window.location.href="edit.jsp";
		 });
    });
	function del(id){
		if(confirm("确定要删除吗？")){	
			var url = "index.jsp";		
			window.location.href=url;			
		}
	}
</script>
