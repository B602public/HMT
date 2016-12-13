<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="css/hantable.css" />
<script type="text/javascript">
	var $agr_table = null;
	$(function() {
		$agr_table = $('#admin_agr_table').datagrid({
			url : '${pageContext.request.contextPath}/agreement/agreementManage_datagrid',
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
				field : 'agreementContractId',
				title : '合同编号',
				sortable:true
			}, {
				field : 'agreementContractVersion',
				title : '版本'
			},{
				field : 'agreementContractType',
				title : '合同类型',
				width : 50
			}, {
				field : 'purchaseGroup',
				title : '采购组',
				width : 50
			}, {
				field : 'purchaseOrganization',
				title : '采购组织'
			},{
				field : 'createTime',
				title : '创建时间',
				sortbale:true
			},{
				field : 'createrId',
				title : '创建人编号',
				width : 50
			},{
				field : 'status',
				title : '状态',
				width : 50
			},{
				field : 'beginTime',
				title : '开始时间',
				sortable : true
			},{
				field : 'endTime',
				title : '结束时间',
				sortable : true
			}
			] ],
			toolbar : '#admin_agr_toolbar'
		});
		
		$('#admin_agr_agrtype').combobox({
			valueField: 'label',
			textField: 'value',
			data: [{
				label: '数量合同',
				value: '数量合同'
			},{
				label: '价值合同',
				value: '价值合同'
			}],
			onSelect:function(){
				$('#admin_agr_table').datagrid('load', {
					agreementContractType : $('#admin_agr_layout input[name=agreementContractType]').val()
				});
			}
		});
		
		$('#admin_agr_agrstate').combobox({
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
				$('#admin_agr_table').datagrid('load',{
					status:$(this).combobox('getValue')
				});
			}
		});
	});

	function searchAgrFun() {
		$('#admin_agr_table').datagrid('load', {
			agreementContractId : $('#admin_agr_layout input[name=agreementContractId]').val(),
			status:$('#admin_agr_agrstate').combobox('getValue'),
			agreementContractType : $('#admin_agr_layout input[name=agreementContractType]').val()
		});
	}
	function clearAgrFun() {
		//将条件的组件均置空
		$('#admin_agr_layout input[name=agreementContractId]').val('');
		$('#admin_agr_agrtype').combobox('setValue','');
		$('#admin_agr_agrstate').combobox('setValue','');
		//重新加载datagrid
		$('#admin_agr_table').datagrid('load', {});
	}
	function editAgrFun(){
		var rows = $('#admin_agr_table').datagrid('getChecked');
		//判断是否选中一条记录
		if(rows.length == 1){
			//$('<div id=\"sss\"></div>'.appendTo('body'));
			//$('#sss').dialog();
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
				},{
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
				}],
				onClose:function(){
					//删除dom中的添加的元素
					$(this).dialog('destroy');
				},
				onLoad:function(){
					//加载内容
					$('#admin_agr_editdialog').form('load',rows[0]);
					//设置input不能输入
					$('#admin_agr_edittable input').attr('readonly',true);
				}
			});
		} else{
			$.messager.alert('提示','请选择一条记录进行编辑');
		}
	}

	function showAgrFun(){
		var rows = $('#admin_agr_table').datagrid('getChecked');
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
					$('#admin_agr_edittable input').attr('readonly',true);
				}
			});
		}else{
			$.messager.alert('提示','请选择一条记录进行查看');
		}
	}
	
	function undoAgrFun(){
		$('#admin_agr_table').datagrid('load',{
			sort:null,
			order:null
		});
	}
	
</script>

<div id="admin_agr_layout" class="easyui-layout" data-options="fit:true" style="height:400px;">
	<div data-options="region:'north',border:false,title:'查询条件',split:true" style="height:76px;" >
		<table class="hantable">
			<tr class="datagrid-toolbar">
				<td>
					检索合同编号（可模糊查询）：<input type="text" style="border:solid 1px #eee" name="agreementContractId"/>
					合同类型<input id="admin_agr_agrtype" name="agreementContractType" class="easyui-combobox" ></input>
					合同状态<input id="admin_agr_agrstate" name="status" class="easyui-combobox"></input>
					<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" onclick="searchAgrFun()">查询</a>
					<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" onclick="clearAgrFun()">清空条件</a>
				</td>
			</tr>
		</table>
	</div>
	<div data-options="region:'center',border:false" >
		<table id="admin_agr_table">
		</table>
	</div>
</div>
<div id="admin_agr_toolbar" >
	<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" style="float:left;" onclick="showAgrFun()">查看详情</a>
	<div class="datagrid-btn-separator"></div>
	<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-ok',plain:true" style="float:left;" onclick="addAgrFun()">确认</a>
	<div class="datagrid-btn-separator"></div>
	<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" style="float:left;" onclick="editAgrFun()">编辑</a>
	<div class="datagrid-btn-separator"></div>
	<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" style="float:left;">拒绝</a>
	<div class="datagrid-btn-separator"></div>
	<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-undo',plain:true" onclick="undoAgrFun()">取消排序</a>
</div>