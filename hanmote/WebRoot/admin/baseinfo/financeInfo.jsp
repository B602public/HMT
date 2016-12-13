g <%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="css/hantable.css" />
<script type="text/javascript">
	$(function (){
		$('#admin_fin_form').form({
			url:'${pageContext.request.contextPath}/baseinfo/financeInfo_modify',
			success:function(){
				var data = jQuery.parseJSON(r);
				if(data.success){
					$.messager.alert('提示',data.message,'info');
				}
			}
		});
	});
	function editFinSFun() {
		//textbox设置可编辑
		$("input.easyui-textbox").textbox('readonly',false);
		//设置下拉框可编辑
		//$('select ');
	}
	function saveFinFun() {
		$('#admin_fin_form').submit();
	}
	
	function 	

</script>


<div class="easyui-panel" data-options="border:false,fit:true">
	<div class="easy-layout">
		<div data-options="region:north,title:'操作',border:false,toolbar:'#admin_fin_toolbar'" style="height:20px;margin-left:10px;">
			<div id="admin_fin_toolbar" >
				<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" style="float:left;" onclick="editFinSFun()">编辑</a>
				<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" onclick="saveFinFun()">保存</a>
			</div>
		</div>
		<div data-options="region:center">
			<div style="width:700px; margin:0 0 10px 10px;">
				<form id="admin_fin_form" method="post">
				<table id="admin_fin_table" class="hantable">
					<tr>
						<td class="oddcolumn">注册资金</td>
						<td class="evencolumn"><input name="supplierChinessName" type="text" id="tb" class="easyui-textbox" data-options="readonly:true" style="width:150px;" value="${rm.obj.supplierChineseName}" /></td>
						<td class="oddcolumn">公司成立日期</td>
						<td class="evencolumn"><input name="supplierEnglishName" type="text" class="easyui-datebox" data-options="readonly:true" style="width:150px;" value="${rm.obj.supplierEnglishName}"/></td>
					</tr>
					<tr>
						<td class="oddcolumn">从业年数</td>
						<td class="evencolumn"><input name="companyProperty" class="easyui-combobox" data-options="readonly:true" style="width:150px;"></input></td>
				        <td class="oddcolumn">资产负债率</td>
				        <td class="evencolumn"><input name="companyUsedname" value="${rm.obj.companyUsedname}"  class="easyui-textbox" data-options="readonly:true" style="width:150px;"></input></td>
				    </tr>
				    <tr>
						<td class="oddcolumn">速动比率</td>
						<td class="evencolumn"><select name="companyRegisterCountry"   class="easyui-combobox" data-options="readonly:true" style="width:150px;"></select></td>
				        <td class="oddcolumn">流动比率</td>
				        <td class="evencolumn"><input name="companyWebsite" value="${rm.obj.companyWebsite}" class="easyui-textbox" data-options="readonly:true" style="width:150px;"></input></td>
				    </tr>
				    <tr>
						<td class="oddcolumn">账款周转率</td>
						<td class="evencolumn"><input name="companyCode" value="${rm.obj.companyCode}" class="easyui-textbox" data-options="readonly:true" style="width:150px;"></input></td>
				        <td class="oddcolumn">股东权益</td>
				        <td class="evencolumn"><input name="companyRegisterDate" class="easyui-datebox"></input></td>
				    </tr>
				    <tr>
						<td class="oddcolumn">利润占营业额（%）</td>
						<td class="evencolumn"><input name="companyRepresent" value="${rm.obj.companyRepresent}" type="text" class="easyui-textbox" data-options="readonly:true" style="width:150px;"></input></td>
				        <td class="oddcolumn">净利率</td>
				        <td class="evencolumn"><select name="isListed" class="easyui-combobox" style="width:150px;"></select></td>
				    </tr>
				    <tr>
						<td class="oddcolumn">使用资本回报率</td>
						<td class="evencolumn"><input name="stockCode" value="${rm.obj.stockCode}" type="text" class="easyui-textbox" data-options="readonly:true" style="width:150px;"></input></td>
				        <td class="oddcolumn">总资产汇报率</td>
				        <td class="evencolumn"><select name="isExport" class="easyui-combobox" style="width:150px;"></select></td>
				    </tr>
				    
				    <tr>
						<td class="oddcolumn">国家</td>
						<td class="evencolumn"><select name="country" class="easyui-combobox" style="width:150px;"></select></td>
				        <td class="oddcolumn">银行代码</td>
				        <td class="evencolumn"><select name="city" class="easyui-combobox" style="width:150px;"></select></td>
				    </tr>
				    <tr>
						<td class="oddcolumn">银行名称</td>
						<td class="evencolumn"><input name="doorNum" value="${rm.obj.doorNum}" class="easyui-textbox" data-options="readonly:true" style="width:150px;" ></input></td>
				        <td class="oddcolumn">银行账户</td>
				        <td class="evencolumn"><input name="zipCode" value="${rm.obj.zipCode}"  class="easyui-textbox" data-options="readonly:true" style="width:150px;" ></input></td>
				    </tr>
				    <tr>
						<td class="oddcolumn">银行户主</td>
						<td class="evencolumn"><input name="orgContacts.contactMan" value="${rm.obj.orgContacts.contactMan}" type="text" class="easyui-textbox" data-options="readonly:true" style="width:150px;"></input></td>
				    </tr>
				</table>
				<table class="hantable">
					<tr>
						<td class="oddcolumn">股东名称</td>
				        <td class="oddcolumn">股比</td>
				        <td class="oddcolumn">控股类型</td>
				    </tr>
				    <tr>
						<td class="evencolumn"><input></input></td>
				        <td class="evencolumn"><input></input></td>
				        <td class="evencolumn"><input></input></td>
				    </tr>
				    <tr>
						<td class="evencolumn"><input></input></td>
				        <td class="evencolumn"><input></input></td>
				        <td class="evencolumn"><input></input></td>
				    </tr>
				    <tr>
						<td class="evencolumn"><input></input></td>
				        <td class="evencolumn"><input></input></td>
				        <td class="evencolumn"><input></input></td>
				    </tr>
				    
				</table>
				</form>
			</div>
		</div>
	</div>
</div>