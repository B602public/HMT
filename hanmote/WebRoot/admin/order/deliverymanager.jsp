<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="css/hantable.css" />
<script type="text/javascript">
	$(function() {
		$('#admin_del_table').datagrid({
			url : '${pageContext.request.contextPath}/order/1.json',
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
				title : '产品编号'
			},{
				field : 'state',
				title : '库存状态',
				formatter : function(value,row,index){
					//库存状态为库存不足时标红
					if(value=='库存不足')
						return '<font color="red">' + value + '</font>';
					else
						return value;
			    }
			},{
				field : 'distributionType',
				title : '库存地点'
			}, {
				field : 'demandCount',
				title : '数量'
			} , {
				field : 'factoryId',
				title : '单位'
			} , {
				field : 'purchaseType',
				title : '最小库存水平 '
			}, {
				field : 'miniPurchaseCount',
				title : '库存数'
			}, {
				field : 'deliveryDate',
				title : '日期'
			}
			] ],
			toolbar : '#admin_del_toolbar'
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
							$('#admin_del_table').datagrid('load',msg);
						}
					}
				);
			}
		);
	});
	
	function addDelFun(){
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
				//$('#admin_del_adddialog').form('load',rows[0]);
			}
		});
		
	}

	function searchDelFun() {
		$('#admin_del_table').datagrid('load', {
			demandId : $('#admin_del_layout input[name=demandId]').val()
		});
	}
	function clearDelFun() {
		$('#admin_del_layout input[name=demandId]').val('');
		$('#admin_del_table').datagrid('load', {});
	}
	function searchDelByDateFun(){
		$('#admin_del_table').datagrid('load', {
			startDate : $('#admin_del_layout input[name=startDate]').val(),
			endDate:$('#admin_del_layout input[name="endDate"]').val()
		});
	}
	function showDelFun(){
		var rows = $('#admin_del_table').datagrid('getChecked');
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
	
	function confrimDelFun(){
		
	}
</script>

<div id="admin_del_layout" class="easyui-layout" data-options="fit:true" style="height:400px">
	<div data-options="region:'north',title:'查询条件',border:false" style="height:114px;">
		<table class="hantable" >
			<tr class="datagrid-toolbar">
				<td>检索产品编号（可模糊查询）：
				<input id="inputDemandId" name="demandId" style="border:solid 1px #eee" />
				 库存状态  <input id="admin_agr_agrstate" name="status" class="easyui-combobox"></input>
				<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" onclick="searchDelFun()">查询</a>
				<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" onclick="clearDelFun()">清空条件</a>
				<!-- 订单编号的提示 -->
				<div >
					<ul>
						<li ></li>
					</ul>
				</div>
				</td>
			</tr>
			<tr class="datagrid-toolbar">
				<td>查询日期(从)：
				<input id="del_startdate" name="startDate" class="easyui-datebox" style="border:solid 1px #eee" />
				(到)
				<input id="del_enddate" name="endDate" class="easyui-datebox"/>
				<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" onclick="searchDelByDateFun()">查询</a>
				<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" onclick="clearDelFun()">清空条件</a>
				</td>
			</tr>		
		</table>
	</div>
	<div data-options="region:'center'">
		<table id="admin_del_table" class="easyui-datagrid">
		</table>
	</div>
</div>
<div id="admin_del_toolbar" >
	<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" style="float:left;" onclick="showDelFun()">查看详情</a>
	<div class="datagrid-btn-separator"></div>
	<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-ok',plain:true" style="float:left;" onclick="confrimDelFun()">确认发货</a>
	<div class="datagrid-btn-separator"></div>
	<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true"  onclick="addDelFun()">新建</a>
</div>