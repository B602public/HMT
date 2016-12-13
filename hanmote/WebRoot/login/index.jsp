<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登录供应商门户系统</title>
<link href="../css/back/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="../easyui/themes/default/easyui.css" />
<link rel="stylesheet" href="../easyui/themes/icon.css" />
<script type="text/javascript" src="../js/back/jquery.js"></script>
<script src="../js/back/cloud.js" type="text/javascript"></script>
<script type="text/javascript" src="../easyui/jquery.min.js"></script>   
<script type="text/javascript" src="../easyui/jquery.easyui.min.js"></script> 
<script type="text/javascript" src="../easyui/easyui-lang-zh_CN.js"></script>

<script type="text/javascript">
	$(function(){
    	$('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
		$(window).resize(function(){  
    		$('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    	}); 
		$('#user_login_loginForm input').bind('keyup', function(event) {/* 增加回车提交功能 */
			if (event.keyCode == '13') {
				$('#user_login_loginForm').submit();
			}
		});
		
		$('.loginuser').click(function (){
	    	$(this).val('');
	    } );
		
		$('.loginpwd').click(function (){
	    	$(this).val('');
	    } );
	    
	    window.setTimeout(function() {
			$('#user_login_loginForm input[name=name]').focus();
		}, 0);
		
		$('#user_login_loginForm').form({
			url : '${pageContext.request.contextPath}/admin_login',
			success : function(r) {
				var obj = jQuery.parseJSON(r);
				//登录成功
				if(obj.success){
					location.href='${pageContext.request.contextPath}/login_loginsuc';
				}
				else{
					$.messager.show({
						title : '提示',
						msg : obj.message
					});
				}
			}
		});
		
		
	});
	
	
	
	function cleanvalue(){
    	$(this).val('');
    } 
    
    function checkandsubmit(){
    	var user = $('.loginuser').val();
    	var password = $('.loginpwd').val();
    	if(user==''){
    		alert('用户名不能为空');
    		return;
    	}
    	if(password==''){
    		alert('密码不能为空');
    		return;
    	}
    	$('#user_login_loginForm').submit();
    }
     
</script> 

</head>

<body style="background-color:#1c77ac; background-image:url(../images/back/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">



    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  


<div class="logintop">    
    <span>欢迎供应商门户界面平台</span>    
    <ul>
    <li><a href="${pageContext.request.contextPath}/index.jsp">回首页</a></li>
    <li><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    </ul>    
    </div>
    
    <div class="loginbody">
    
    <span class="systemlogo"></span> 
     
    <form id="user_login_loginForm" method="post">  
	    <div class="loginbox">
		    <ul>
			    <li><input name="userName" type="text" class="loginuser" value="SP002003" /></li>
			    <li><input name="password" type="password" class="loginpwd" value="123456" /></li>
			    <li><input name="" type="button" class="loginbtn" value="登录"  onclick="checkandsubmit()"  /><label><input name="" type="checkbox" value="" checked="checked" />记住密码</label><label><a href="#">忘记密码？</a></label></li>
		    </ul>
	    </div>
    </form>
    
    </div>
    
    
    
   <!--  <div class="loginbm">版权所有  2016  <a href="#">hanmote.com</a></div> -->
	
    
</body>

</html>