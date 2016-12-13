<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    <link rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
    
    <script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript">
	$(function(){
		userList();
	});
	function userList(){
		$("#userList").datagrid({
			url:'user_dgList',
			iconCls:'icon-save',
			pagination:true,
			pageSize:10,
			pageList:[10,20,30,40],
			fit:true,
			border:false,
			idField:'id',
			columns:[[{
				field:'id',
				text:'编号',
				width:50
			},{
				field:'userName',
				text:'用户名',
				width:100
			}
			]]
		});
	};
	
	</script>
	
  </head>
  
  <body>
        <h1>列表</h1>
		<c:forEach var="user" items="${list}" >
			<tr>
				<td>${user.id}</td>
				<td>${user.userName}</td>
			</tr>
		</c:forEach>
		<table id="userList" ></table>
		
  </body>
</html>
