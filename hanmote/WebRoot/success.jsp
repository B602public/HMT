<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'index.jsp' starting page</title>
	<link rel="stylesheet" type="text/css" href="styles.css">
	
  </head>
  
  <body>
    <a href="user_addInput">增加</a>
    <a href="user_list">列表</a>
    <a href="user_dgList">dg列表</a>
    <a href="organizationInfo_addInput">信息</a>
  </body>
</html>
