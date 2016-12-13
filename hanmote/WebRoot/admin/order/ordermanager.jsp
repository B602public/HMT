<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="css/hantable.css" />
<script type="text/javascript">
	$(function() {
		$('#admin_ord_table').datagrid({
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
				title : '编号'
			},{
				field : 'demandCount',
				title : '数量'
			},{
				field : 'materialId',
				title : '物料编号'
			}, {
				field : 'distributionType',
				title : '分配类型'
			}, {
				field : 'factoryId',
				title : '单位'
			} , {
				field : 'materialName',
				title : '物料名称'
			}, {
				field : 'miniPurchaseCount',
				title : '最小采购量'
			}, {
				field : 'proposerId',
				title : '申请人编号'
			}, {
				field : 'state',
				title : '状态'
			}, {
				field : 'deliveryDate',
				title : '申请日期'
			}] ],
			toolbar : '#admin_ord_toolbar'
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
							$('#admin_ord_table').datagrid('load',msg);
						}
					}
				);
			}
		);
	});

	function searchFun() {
		$('#admin_ord_table').datagrid('load', {
			demandId : $('#admin_ord_layout input[name=demandId]').val()
		});
	}
	function clearFun() {
		$('#admin_ord_layout input[name=demandId]').val('');
		$('#admin_ord_table').datagrid('load', {});
	}
	function searchByDateFun(){
		$('#admin_ord_table').datagrid('load', {
			startDate : $('#admin_ord_layout input[name=startDate]').val(),
			endDate:$('#admin_ord_layout input[name="endDate"]').val()
		});
	}
	function showOrdFun(){
		var rows = $('#admin_ord_table').datagrid('getChecked');
		if(rows.length == 1){
			$('<div/>').dialog({
				width:500,
				height:400,
				href:'${pageContext.request.contextPath}/admin/order/ordershow.jsp',
				modal:true,
				iconCls:'icon-tip',
				title:'订单详情',
				onClose:function(){
					$(this).dialog('destroy');
				},
				onLoad:function(){
					$('#admin_order_showdialog').form('load',rows[0]);
				}
			});
			
		}else{
			$.messager.alert('提示','请选择一条记录！');
		}
	}
</script>

<div id="admin_ord_layout" class="easyui-layout" data-options="fit:true" style="height:400px">
	<div data-options="region:'north',title:'查询条件',border:false" style="height:114px;">
		<table class="hantable" >
			<tr class="datagrid-toolbar">
				<td>检索订单编号（可模糊查询）：
				<input id="inputDemandId" name="demandId" style="border:solid 1px #eee" />
				<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" onclick="searchFun()">查询</a>
				<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" onclick="clearFun()">清空条件</a>
				<!-- 订单编号的提示 -->
				<div >
					<ul>
						<li ></li>
					</ul>
				</div>
				</td>
			</tr>
			<tr class="datagrid-toolbar">
				<td>申请日期(从)：
				<input id="ord_startdate" name="startDate" class="easyui-datebox" style="border:solid 1px #eee" />
				(到)
				<input id="ord_enddate" name="endDate" class="easyui-datebox"/>
				<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" onclick="searchByDateFun()">查询</a>
				<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" onclick="clearFun()">清空条件</a>
				</td>
			</tr>		
		</table>
	</div>
	<div data-options="region:'center'">
		<table id="admin_ord_table" class="easyui-datagrid">
		</table>
	</div>
</div>
<div id="admin_ord_toolbar" >
	<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" style="float:left;" onclick="showOrdFun()">查看详情</a>
	<div class="datagrid-btn-separator"></div>
	<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-ok',plain:true" style="float:left;" onclick="confirmOrdFun()">确认订单</a>
	<div class="datagrid-btn-separator"></div>
	<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" style="float:left;" onclick="editOrdFun()">编辑</a>
	<div class="datagrid-btn-separator"></div>
	<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">拒绝</a>
</div>