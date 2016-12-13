<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>供应商门户系统</title>
	<link href="css/back/style.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" type="text/css" href="css/register.css">
	<link rel="stylesheet" href="easyui/themes/default/easyui.css">
	<link rel="stylesheet" href="easyui/themes/icon.css">
	<link rel="stylesheet" href="css/backindex.css">
	<script type="text/javascript" src="easyui/jquery.min.js"></script>   
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script> 
	<script type="text/javascript" src="easyui/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="js/easyuiutil.js"></script>
	
  </head>
  
  <body class="easyui-layout">
  	<div data-options="region:'north'" style="height:90px;">
  		<jsp:include page="layout/north.jsp"></jsp:include>
  	</div>
	<div data-options="region:'south',border:false" style="height:30px;background:#F0F9FD;padding:10px;">
		<p class="bq">版权所有 武汉汉默特公司</p>
	</div>
	<div data-options="region:'west'" style="width:200px;">
		<jsp:include page="layout/west.jsp"></jsp:include>
	</div>
	<div data-options="region:'east',title:'其它信息',split:true" style="width:200px;"></div>
	<div data-options="region:'center',title:'欢迎使用供应商门户系统'" style="overflow: hidden;">
		<jsp:include page="layout/center.jsp"></jsp:include>
	</div>
   </body>
</html>
