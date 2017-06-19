<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   	<title>后台管理系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/bui-min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/main-min.css" rel="stylesheet" type="text/css" />

  </head>
  
  <body>
    <div class="header">

    <div class="dl-title">
        <!--<img src="/chinapost/Public/assets/img/top.png">-->
    </div>

    <div class="dl-log">欢迎您，<span class="dl-log-user">root</span><a href="Public/login.jsp" title="退出系统" class="dl-log-quit">[退出]</a>
    </div>
</div>
<div class="content">
    <div class="dl-main-nav">
        <div class="dl-inform"><div class="dl-inform-title"><s class="dl-inform-icon dl-up"></s></div></div>
        <ul id="J_Nav"  class="nav-list ks-clear">
            <li class="nav-item dl-selected"><div class="nav-item-inner nav-home">系统管理</div></li>	
        </ul>
    </div>
    <ul id="J_NavContent" class="dl-tab-conten">

    </ul>
</div>
<script type="text/javascript" src="assets/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="assets/js/bui-min.js"></script>

<script>
    BUI.use('common/main',function(){
        var config = [{collapsed:true,id:'1',menu:[
		{collapsed:true,text:'菜品管理',items:[
			{id:'12',text:'彩品种类',href:'Menu/foodtype.jsp'},
			{id:'3',text:'菜品信息',href:'Menu/foodinfo.jsp'}
			]},
		
		{collapsed:true,text:'后厨管理',items:[{id:'12',text:'后厨工作区间',href:'Background/index.jsp'}]}
		,
		{collapsed:true,text:'前台管理',items:[{id:'12',text:'桌台管理',href:'Node/index.jsp'},{id:'3',text:'结账操作',href:'Role/index.jsp'}]}
		,
		{collapsed:true,text:'订单管理',items:[{id:'12',text:'订单详情',href:'Node/index.jsp'},{id:'3',text:'新增订单',href:'Role/index.jsp'},{id:'4',text:'完成订单',href:'User/index.jsp'}]}
		,
		{collapsed:true,text:'人员管理',items:[{id:'12',text:'部门管理',href:'Node/index.jsp'},{id:'3',text:'员工管理',href:'Role/index.jsp'}]}
		,
		{collapsed:true,text:'系统管理',items:[{id:'12',text:'角色管理',href:'Node/index.jsp'},{id:'3',text:'权限管理',href:'Role/index.jsp'},{id:'4',text:'用户管理',href:'Role/index.jsp'}]},
		
		{collapsed:true,text:'客户管理',items:[{id:'12',text:'客户信息管理',href:'Node/index.jsp'}]}
		]}];
        
		new PageUtil.MainPage({
            modulesConfig : config
        });
    });
</script>

  </body>
</html>
