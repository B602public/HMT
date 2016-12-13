<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>武汉汉默特公司</title>
	<link rel="stylesheet" type="text/css" href="css/reset.css" />
	<link rel="stylesheet" type="text/css" href="css/index.css" />
	
  </head>
  
  <body>
    	<div class="pageContainer">
    		<jsp:include page="layout/header.jsp"></jsp:include>
    		<div class="navinfo">
    			<jsp:include page="layout/navinfo.jsp" />
    		</div>
    		<div class="main">
    			<jsp:include page="layout/leftMenu.jsp"></jsp:include>
    			<div id="mainPage" class="right">
    				<jsp:include page="default/contentindex.jsp"></jsp:include>
    			</div>
    		</div>
    		<jsp:include page="layout/footer.jsp"></jsp:include>
    	</div>
   </body>
</html>
