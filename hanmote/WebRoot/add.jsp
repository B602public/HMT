<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add.jsp' starting page</title>
    
	<link rel="stylesheet" type="text/css" href="styles.css">
	
  </head>
  
  <body>
   	<form action="user_add" method="post">
   		用户名：<input type="text" name="userName" />
   		编号：<input type="text" name="id" />
   		<input type="submit" value="添加"/>
   	</form>
  </body>
</html>
