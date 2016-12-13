<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="css/hantable.css" />
<script type="text/javascript">
	$(function() {
		$('#admin_rec_table').datagrid({
			url : '${pageContext.request.contextPath}/order/orderManage_datagrid',
			fit : true,
			fitColumns : true,
			border : false,
			pagination : true,
			checkOnSelect:true,
			selectOnCheck:true,
			pageSize : 10,
			pageList : [ 10, 20, 30, 40, 50 ],
			columns : [ [ {
				field : 'id',
				title : '编号',
				checkbox:true
			},{
				field : 'demandId',
				title : '发货单编号'
			},{
				field : 'demandCount',
				title : '接收编号'
			},{
				field : 'materialId',
				title : '发货单号'
			},{
				field : 'proposerId',
				title : '承运人'
			}, {
				field : 'applyDate',
				title : '创建日期'
			}] ],
			toolbar : '#admin_rec_toolbar'
		});
		
		/*订单输入框改变事件*/
		$('#inputDemandId').change(
			function(){
			    var id = $(this).val();
				//ajax向后台发送
				$.ajax({
						type:'post',
						url:'${pageContext.request.contextPath}/order/orderManage_datagrid',
						data:id,
						success:function(msg){
							$('#admin_rec_table').datagrid('load',msg);
						}
					}
				);
			}
		);
	});
	
	function addRecFun(){
		$('<div/>').dialog({
			width:600,
			height:400,
			href:'${pageContext.request.contextPath}/admin/order/deliveryadd.jsp',
			modal:true,
			iconCls:'icon-tip',
			title:'添加',
			buttons:[{
				text:'保存',
				iconCls:'icon-save',
				handler:function(){
					$('#admin_agr_editdialog').form('submit',{
						url:'${pageContext.request.contextPath}/agreement/agreementManage_modify',
						contentType:'application/x-www-form-urlencoded;charset=utf-8',
						onSubmit:function(){
							
						},
						success:function(data){
					    	var obj = eval('(' + data + ')');
							if(obj.success==true){
								$.messager.alert('提示','保存成功！');
							}else{
								$.messager.alert('提示','保存失败！');
							}
						}
					});
				}
			},{
				text:'提交',
				iconCls:'icon-ok',
				handler:function(){
					//设置input可输入
					$('#admin_agr_edittable input').removeAttr('readonly');
					var state = $('#admin_agr_edittable input[name=status]').val();
					if(state=='待供应商确认'){
						$('#statusCmb').addClass('easyui-combobox');
						$('#statusCmb').combobox({
							valueField:'label',
							textField:'value',
							data:[{
								label:'已变更',
								value:'已变更'
							},{
								label:'待供应商确认',
								value:'待供应商确认'
							}
							]
						});
					}
				}
			}],
			onClose:function(){
				//删除dom中的添加的元素
				$(this).dialog('destroy');
			},
			onLoad:function(){
				//加载内容
				//$('#admin_rec_adddialog').form('load',rows[0]);
			}
		});
		
	}

	function searchRecFun() {
		$('#admin_rec_table').datagrid('load', {
			demandId : $('#admin_rec_layout input[name=demandId]').val()
		});
	}
	function clearRecFun() {
		$('#admin_rec_layout input[name=demandId]').val('');
		$('#admin_rec_table').datagrid('load', {});
	}
	function searchDelByDateFun(){
		$('#admin_rec_table').datagrid('load', {
			startDate : $('#admin_rec_layout input[name=startDate]').val(),
			endDate:$('#admin_rec_layout input[name="endDate"]').val()
		});
	}
	function showRecFun(){
		var rows = $('#admin_rec_table').datagrid('getChecked');
		if(rows.length == 1){
			$('<div/>').dialog({
				width:500,
				height:400,
				href:'${pageContext.request.contextPath}/admin/order/receiveshow.jsp',
				modal:true,
				iconCls:'icon-tip',
				title:'订单详情',
				onClose:function(){
					$(this).dialog('destroy');
				},
				onLoad:function(){
					$('#admin_rec_showdialog').form('load',rows[0]);
				}
			});
			
		}else{
			$.messager.alert('提示','请选择一条记录！');
		}
	}
	
	function confrimRecFun(){
		
	}
</script>

<div id="admin_rec_layout" class="easyui-layout" data-options="fit:true" style="height:400px">
	<div data-options="region:'north',title:'查询条件',border:false" style="height:114px;">
		<table class="hantable" >
			<tr class="datagrid-toolbar">
				<td>检索订单编号（可模糊查询）：
				<input id="inputDemandId" name="demandId" style="border:solid 1px #eee" />
				接收编号：
				<input id="" name="" style="border:solid 1px #eee" />
				发货单号：
				<input id="" name="" style="border:solid 1px #eee" />
				<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" onclick="searchRecFun()">查询</a>
				<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" onclick="clearRecFun()">清空条件</a>
				<!-- 订单编号的提示 -->
				<div >
					<ul>
						<li ></li>
					</ul>
				</div>
				</td>
			</tr>
			<tr class="datagrid-toolbar">
				<td>创建日期(从)：
				<input id="del_startdate" name="startDate" class="easyui-datebox" style="border:solid 1px #eee" />
				(到)
				<input id="del_enddate" name="endDate" class="easyui-datebox"/>
				<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" onclick="searchDelByDateFun()">查询</a>
				<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" onclick="clearRecFun()">清空条件</a>
				</td>
			</tr>		
		</table>
	</div>
	<div data-options="region:'center'">
		<table id="admin_rec_table" class="easyui-datagrid">
		</table>
	</div>
</div>
<div id="admin_rec_toolbar" >
	<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" style="float:left;" onclick="showRecFun()">查看详情</a>
	<div class="datagrid-btn-separator"></div>
	<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" style="float:left;" onclick="confrimRecFun()">编辑</a>
	<div class="datagrid-btn-separator"></div>
	<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" style="float:left;" onclick="addRecFun()">添加</a>
	<div class="datagrid-btn-separator"></div>
	<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">删除</a>
</div>