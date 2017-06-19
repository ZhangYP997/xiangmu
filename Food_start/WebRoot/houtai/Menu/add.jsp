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
		.tab{
			width:35%;
			margin-left:2%;
			margin-top:2%;
			text-align:center;
		}
		.tab th{
			text-align:center;
		}
    </style>
   

  </head>
  
  <body>
  	
    <form action="houMenu_addmenu.action" method="post" class="definewidth m20">
    	
		<table  class="table table-bordered table-hover m10 tab">
		  
    		<thead>
			    <tr>
			        <th colspan="2">菜品分类新增</th>  
			    </tr>
		    </thead>
		    <tr>
		        <td class="tableleft">分类名称</td>
		        <td ><input type="text" name="name"/></td>
		    </tr>
		   
		    
		    </tr>
		    <tr>
		        <td class="tableleft"></td>
		        <td>
		            <button type="submit" class="btn btn-primary" >保存并新增</button> &nbsp;&nbsp;
		            <button type="button" class="btn btn-success" name="backid" id="backid">返回列表</button>
		        </td>
		    </tr>
		</table>
</form>
  </body>
</html>
<script>
    $(function () {       
		$('#backid').click(function(){
				window.location.href="foodtype.jsp";
		 });

    });
</script>
