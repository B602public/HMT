<%@ page language="java" contentType="text/html;charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="css/hantable.css" />


<div class="easyui-panel" data-options="border:false,fit:true">
	
	<form id="admin_agr_editdialog" method="post">
		<table id="admin_agr_edittable" class="hantable">
			<tr>
				<th>合同编号</th>
				<td><input name="agreementContractId"></input></td>
				<th>版本</th>
				<td><input name="agreementContractVersion"></input></td>				
			</tr>
			<tr>
				<th>合同类型</th>
				<td><input name="agreementContractType"></input></td>
				<th>采购组</th>
				<td><input name="purchaseGroup"></input></td>				
			</tr>
			<tr>
				<th>采购组织</th>
				<td><input name="purchaseOrganization"></input></td>
				<th>创建时间</th>
				<td><input name="createTime"></input></td>				
			</tr>
			<tr>
				<th>创建人编号</th>
				<td><input name="createrId"></input></td>
				<th>状态</th>
				<td><input id="statusCmb" name="status"></input></td>				
			</tr>
			<tr>
				<th>开始时间</th>
				<td><input name="beginTime"></input></td>
				<th>结束时间</th>
				<td><input name="endTime"></input></td>				
			</tr>
			<tr>
				<th>货币类型</th>
				<td><input name="currencyType"></input></td>
				<th>工厂</th>
				<td><input name="factory"></input></td>				
			</tr>
			<tr>
				<th>itTermCode</th>
				<td><input name="itTermCode"></input></td>
				<th>itTermText</th>
				<td><input name="itTermText"></input></td>				
			</tr>
			
		</table>
		<input name="supplierId" type="hidden" ></input>
	</form>
</div>