<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
	//顶部导航切换
	$(".functionNav li a").click(function(){
		$(".functionNav li a.selected").removeClass("selected");
		$(this).addClass("selected");
	});	
	//添加文件文件管理选项卡
	$('#file').click(function(){
		addTab('文件管理','file_list');
	});
	//添加常用功能选项卡
	$('#tools').click(function(){
		addTab('常用功能','function_list');
	});
	function addTab(opts,url) {
		var t = $('#layout_center_tabs');
		if (t.tabs('exists',opts)) {
			t.tabs('select',opts);
		} else {
			t.tabs('add',{    
			    title:opts, 
			    href:url,   
			    closable:true,    
			    tools:[{    
			        iconCls:'icon-mini-refresh',    
			        handler:function(){    
			      		         
			        }    
			    }]  
			});
		}
	}
	
	function addTabs(opts) {
		var t = $('#layout_center_tabs');
		if (t.tabs('exists', opts.title)) {
			t.tabs('select', opts.title);
		} else {
			t.tabs('add', opts);
		}
	}
</script>

	<div class="topBox" data-options="region:'north',border:false">
		<div class="topLeft">
			<a href="">
				<img src="images/back/loginlogo.png" alt="logo" title="系统首页"/>
			</a>
		</div>
		<ul class="functionNav">
			<li>
				<a href="" class="selected">
					<img src="images/back/icon01.png" alt="工作台"/>
					<h2 class="functionFont">工作台</h2>
				</a>
			</li>
			<!-- 
			<li>
				<a href="">
					<img src="images/back/icon02.png" alt="功能1"/>
					<h2 class="functionFont"></h2>
				</a>
			</li>
			<li>
				<a href="">
					<img src="images/back/icon03.png" alt="功能1"/>
					<h2 class="functionFont"></h2>
				</a>
			</li>
			
			 -->
			<li>
				<a id="tools" href="javascript:void(0)">
					<img src="images/back/icon04.png" alt="功能1"/>
					<h2 class="functionFont">常用功能</h2>
				</a>
			</li>
			<li>
				<a id="file" href="javascript:void(0)" >
					<img src="images/back/icon05.png" alt="功能1"/>
					<h2 class="functionFont">文件管理</h2>
				</a>
			</li>
			<li>
				<a href="">
					<img src="images/back/icon06.png" alt="功能1"/>
					<h2 class="functionFont">系统配置</h2>
				</a>
			</li>
		</ul>
		<div class="topRight">
			<ul>
				<li><a href="index.jsp">首页</a></li>
				<li><a href="">帮助</a></li>
				<li><a href="">退出</a></li>
			</ul>
			<div class="userDiv">
				<span>${sessionScope.user.userName}</span>
				<i>消息</i>
				<b>0</b>
			</div>
		</div>
	</div>