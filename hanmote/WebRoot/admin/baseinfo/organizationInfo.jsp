<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="css/hantable.css" />
<script type="text/javascript">
	$(function (){
		$('#admin_org_form').form({
			url:'${pageContext.request.contextPath}/baseinfo/organizationInfo_modify',
			success:function(){
				var data = jQuery.parseJSON(r);
				if(data.success){
					$.messager.alert('提示',data.message,'info');
				}
			}
		});
	});
	function editOrgFun() {
		//textbox设置可编辑
		$("input.easyui-textbox").textbox('readonly',false);
		//设置下拉框可编辑
		//$('select ');
	}
	function saveOrgFun() {
		$('#admin_org_form').form('submit',{
			url:'',
			onSubmit:function(){
				
			}
		});
	}
</script>


<div class="easyui-panel" data-options="border:false,fit:true">
	<div class="easy-layout">
		<div data-options="region:north,title:'操作',border:false,toolbar:'#admin_org_toolbar'" style="height:20px;margin-left:10px;">
			<div id="admin_org_toolbar" >
				<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" style="float:left;" onclick="editOrgFun()">编辑</a>
				<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" onclick="saveOrgFun()">保存</a>
			</div>
		</div>
		<div data-options="region:center">
			<div style="width:700px; margin:0 0 10px 10px;">
				<form id="admin_org_form" method="post">
				<table id="admin_org_table" class="hantable">
					<tr>
						<td class="oddcolumn">供应商中文名称</td>
						<td class="evencolumn"><input name="supplierChinessName" type="text" id="tb" class="easyui-textbox" data-options="readonly:true" style="width:150px;" value="${rm.obj.supplierChineseName}" /></td>
						<td class="oddcolumn">供应商英文名称</td>
						<td class="evencolumn"><input name="supplierEnglishName" type="text" class="easyui-textbox" data-options="readonly:true" style="width:150px;" value="${rm.obj.supplierEnglishName}"/></td>
					</tr>
					<tr>
						<td class="oddcolumn">企业性质</td>
						<td class="evencolumn"><input name="companyProperty" class="easyui-combobox" value="${rm.obj.companyProperty }" data-options="readonly:true" style="width:150px;"></input></td>
				        <td class="oddcolumn">公司曾用名</td>
				        <td class="evencolumn"><input name="companyUsedname" value="${rm.obj.companyUsedname}"  class="easyui-textbox" data-options="readonly:true" style="width:150px;"></input></td>
				    </tr>
				    <tr>
						<td class="oddcolumn">企业注册国家</td>
						<td class="evencolumn"><input id="companyRegisterCountry" value="${rm.obj.companyRegisterCountry}" name="companyRegisterCountry"  class="easyui-combobox" data-options="readonly:true" style="width:150px;"></input></td>
				        <td class="oddcolumn">公司网址</td>
				        <td class="evencolumn"><input name="companyWebsite" value="${rm.obj.companyWebsite}" class="easyui-textbox" data-options="readonly:true" style="width:150px;"></input></td>
				    </tr>
				    <tr>
						<td class="oddcolumn">公司代码</td>
						<td class="evencolumn"><input name="companyCode" value="${rm.obj.companyCode}" class="easyui-textbox" data-options="readonly:true" style="width:150px;"></input></td>
				        <td class="oddcolumn">注册时间</td>
				        <td class="evencolumn"><input name="companyRegisterDate" class="easyui-datebox" value="${rm.obj.companyRegisterDate }"></input></td>
				    </tr>
				    <tr>
						<td class="oddcolumn">法人代表</td>
						<td class="evencolumn"><input name="companyRepresent" value="${rm.obj.companyRepresent}" type="text" class="easyui-textbox" data-options="readonly:true" style="width:150px;"></input></td>
				        <td class="oddcolumn">是否为上市公司</td>
				        <td class="evencolumn"><input id="isListed" value="${rm.obj.isListed=='1'?'是':'否'}" name="isListed" class="easyui-combobox" data-options="readonly:true" style="width:150px;"></input></td>
				    </tr>
				    <tr>
						<td class="oddcolumn">股票代码</td>
						<td class="evencolumn"><input name="stockCode" value="${rm.obj.stockCode}" type="text" class="easyui-textbox" data-options="readonly:true" style="width:150px;"></input></td>
				        <td class="oddcolumn">是否有出口权</td>
				        <td class="evencolumn"><input id="isExport" value="${rm.obj.isExport=='1'?'是':'否'}" name="isExport" data-options="readonly:true" class="easyui-combobox" style="width:150px;"></input></td>
				    </tr>
				    
				    <tr>
						<td class="oddcolumn">国家</td>
						<td class="evencolumn"><input id="country" value="${rm.obj.country }" name="country" class="easyui-combobox" data-options="readonly:true" style="width:150px;"></input></td>
				        <td class="oddcolumn">城市</td>
				        <td class="evencolumn"><input id="city" value="${rm.obj.city }" name="city" class="easyui-combobox" data-options="readonly:true" style="width:150px;"></input></td>
				    </tr>
				    <tr>
						<td class="oddcolumn">街道/门牌号</td>
						<td class="evencolumn"><input name="doorNum" value="${rm.obj.doorNum}" class="easyui-textbox" data-options="readonly:true" style="width:150px;" ></input></td>
				        <td class="oddcolumn">邮编</td>
				        <td class="evencolumn"><input name="zipCode" value="${rm.obj.zipCode}"  class="easyui-textbox" data-options="readonly:true" style="width:150px;" ></input></td>
				    </tr>
					    <tr>
							<td class="oddcolumn">联系人</td>
							<td class="evencolumn"><input name="orgContacts.contactMan" value="${rm.obj.orgContacts.contactMan}" type="text" class="easyui-textbox" data-options="readonly:true" style="width:150px;"></input></td>
					        <td class="oddcolumn">电话1</td>
					        <td class="evencolumn"><input name="orgContacts.phonenum1" value="${rm.obj.orgContacts.phonenum1}" type="text" class="easyui-textbox" data-options="readonly:true" style="width:150px;"></input></td>
					    </tr>
					    <tr>
							<td class="oddcolumn">电话2</td>
							<td class="evencolumn"><input name="orgContacts.phonenum2" value="${rm.obj.orgContacts.phonenum2}"  type="text" class="easyui-textbox" data-options="readonly:true" style="width:150px;"></input></td>
					        <td class="oddcolumn">Email</td>
					        <td class="evencolumn"><input name="orgContacts.email" value="${rm.obj.orgContacts.email}"  type="text" class="easyui-textbox" data-options="readonly:true" style="width:150px;"></input></td>
					    </tr>
				</table>
				</form>
			</div>
		</div>
	</div>
</div>