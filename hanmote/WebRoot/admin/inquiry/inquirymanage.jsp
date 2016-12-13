<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="css/hantable.css" />
<script type="text/javascript">
	var $agr_table = null;
	$(function() {
		$agr_table = $('#admin_inq_table').datagrid({
			url : '${pageContext.request.contextPath}/order/1.json',
			fit : true,
			fitColumns : true,
			border : false,
			pagination : true,
			pageSize : 10,
			pageList : [ 10,20,30,40,50 ],
			checkOnSelect: true,
			selectOnCheck: true,
			sortOrder:'desc',
			columns : [ [ {
				field : 'id',
				title : '编号',
				checkbox: true
			},{
				field : 'contractId',
				title : '询价编号',
				sortable:true
			}, {
				field : 'demandCount',
				title : '名称'
			},{
				field : 'demandId',
				title : '类'
			},{
				field : 'distributionType',
				title : '人员'
			}, {
				field : 'applyDate',
				title : '开始日期'
			},{
				field : 'factoryId',
				title : '结束日期'
			},{
				field : 'materialId',
				title : '状态'
			}
			] ],
			toolbar : '#admin_inq_toolbar'
		});
		
		$('#admin_inq_inqtype').combobox({
			valueField: 'label',
			textField: 'value',
			data: [{
				label: '未查看',
				value: '未查看'
			},{
				label: '未提交',
				value: '未提交'
			}],
			onSelect:function(){
				$('#admin_inq_table').datagrid('load', {
					agreementContractType : $('#admin_inq_layout input[name=agreementContractType]').val()
				});
			}
		});
		
		$('#admin_inq_inqstate').combobox({
			valueField:'label',
			textField:'value',
			data:[{
				label:'已变更',
				value:'已变更'
			},{
				label:'待供应商确认',
				value:'待供应商确认'
			}
			],
			onSelect:function(){
				$('#admin_inq_table').datagrid('load',{
					status:$(this).combobox('getValue')
				});
			}
		});
	});

	function searchAgrFun() {
		$('#admin_inq_table').datagrid('load', {
			agreementContractId : $('#admin_inq_layout input[name=agreementContractId]').val(),
			status:$('#admin_inq_inqstate').combobox('getValue'),
			agreementContractType : $('#admin_inq_layout input[name=agreementContractType]').val()
		});
	}
	function clearAgrFun() {
		//将条件的组件均置空
		$('#admin_inq_layout input[name=agreementContractId]').val('');
		$('#admin_inq_inqtype').combobox('setValue','');
		$('#admin_inq_inqstate').combobox('setValue','');
		//重新加载datagrid
		$('#admin_inq_table').datagrid('load', {});
	}
	function editInqFun(){
		var rows = $('#admin_inq_table').datagrid('getChecked');
		//判断是否选中一条记录
		if(rows.length == 1){
			$('<div/>').dialog({
				width:600,
				height:400,
				href:'${pageContext.request.contextPath}/admin/agreement/agreementedit.jsp',
				modal:true,
				iconCls:'icon-tip',
				title:'编辑合同',
				buttons:[{
					text:'编辑',
					iconCls:'icon-edit',
					handler:function(){
						//设置input可输入
						$('#admin_inq_edittable input').removeAttr('readonly');
						var state = $('#admin_inq_edittable input[name=status]').val();
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
				},{
					text:'保存',
					iconCls:'icon-save',
					handler:function(){
						$('#admin_inq_editdialog').form('submit',{
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
				}],
				onClose:function(){
					//删除dom中的添加的元素
					$(this).dialog('destroy');
				},
				onLoad:function(){
					//加载内容
					$('#admin_inq_editdialog').form('load',rows[0]);
					//设置input不能输入
					$('#admin_inq_edittable input').attr('readonly',true);
				}
			});
		} else{
			$.messager.alert('提示','请选择一条记录进行编辑');
		}
	}

	function showInqFun(){
		var rows = $('#admin_inq_table').datagrid('getChecked');
		if(rows.length == 1){
			$('<div/>').dialog({
				width:500,
				height:400,
				href:'${pageContext.request.contextPath}/admin/agreement/agreementshow.jsp',
				modal:true,
				iconCls:'icon-tip',
				title:'合同详情',
				onClose:function(){
					//删除dom中的添加的元素
					$(this).dialog('destroy');
				},
				onLoad:function(){
					//加载内容
					$('#admin_adr_showdialog').form('load',rows[0]);
					//设置所有input不能编辑
					$('#admin_inq_edittable input').attr('readonly',true);
				}
			});
		}else{
			$.messager.alert('提示','请选择一条记录进行查看');
		}
	}
</script>

<div id="admin_inq_layout" class="easyui-layout" data-options="fit:true" style="height:400px;">
	<div data-options="region:'north',border:false,title:'查询条件',split:true" style="height:119px;" >
		<table class="hantable">
			<tr class="datagrid-toolbar">
				<td>
					检索询价编号（可模糊查询）：<input type="text" style="border:solid 1px #eee" name="agreementContractId"/>
					名称<input id="admin_inq_inqtype" name="agreementContractType" class="easyui-combobox" ></input>
					状态<input id="admin_inq_inqstate" name="status" class="easyui-combobox"></input>
					<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" onclick="searchAgrFun()">查询</a>
					<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" onclick="clearAgrFun()">清空条件</a>
				</td>
			</tr>
			<tr class="datagrid-toolbar">
				<td>检索日期(从)：
				<input id="" name="startDate" class="easyui-datebox" style="border:solid 1px #eee" />
				(到)
				<input id="" name="endDate" class="easyui-datebox"/>
				<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" onclick="searchInqByDateFun()">查询</a>
				<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" onclick="clearFun()">清空条件</a>
				</td>
			</tr>	
		</table>
	</div>
	<div data-options="region:'center',border:false" >
		<table id="admin_inq_table">
		</table>
	</div>
</div>
<div id="admin_inq_toolbar" >
	<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" style="float:left;" onclick="showInqFun()">查看详情</a>
	<div class="datagrid-btn-separator"></div>
	<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" style="float:left;" onclick="editInqFun()">编辑</a>
	<div class="datagrid-btn-separator"></div>
	<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" onclick="">删除</a>
</div>