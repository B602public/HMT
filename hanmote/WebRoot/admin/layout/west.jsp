<%@ page language="java" pageEncoding="UTF-8"%>

<div class="easyui-panel" data-options="title:'功能导航',border:false,fit:true">
	<div class="easyui-accordion" data-options="fit:true,border:false">
		<div title="系统菜单" data-options="iconCls:'icon-save'">
			<ul id="layout_west_tree" class="easyui-tree" data-options="
					url : '${pageContext.request.contextPath}/login_allmenunode',
					idField:'mid',
					textField:'menutext',
					parentField : 'pid',
					lines : true,
					animate:true,
					onClick : function(node) {
						if (node.attributes.url) {
						    var base = '${pageContext.request.contextPath}';
						    base = base.replace('/','\/');
							addTabs({
								title : node.text,
								closable : true,
								href : base + node.attributes.url
							});
						}
					}
					"></ul>
		</div>
		<div title="其它功能" data-options="iconCls:'icon-reload'"></div>
	</div>
</div>