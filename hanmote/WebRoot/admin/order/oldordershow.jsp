<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="admin_ord_showpanel" class="easyui-panel" data-options="border:false,fit:true">
	<form id="admin_order_showdialog">
		<table class="hantable">
			<tr>
				<th>订单编号</th>
				<td><input  class="showinput"  name="demandId"></input></td>
				<th>数量</th>
				<td><input name="demandCount"></input></td>				
			</tr>
			<tr>
				<th>物料编号</th>
				<td><input name="materialId"></input></td>
				<th>分配类型</th>
				<td><input name="distributionType"></input></td>				
			</tr>
			<tr>
				<th>单位</th>
				<td><input name="factoryId"></input></td>
				<th>物料名称</th>
				<td><input name="materialName"></input></td>				
			</tr>
			<tr>
				<th>最小采购量</th>
				<td><input name="miniPurchaseCount"></input></td>
				<th>申请人编号</th>
				<td><input name="proposerId"></input></td>				
			</tr>
			<tr>
				<th>状态</th>
				<td><input name="state"></input></td>
				<th>申请日期</th>
				<td><input name="applyDate" class="easyui-datebox" ></input></td>				
			</tr>
			
		</table>
	</form>
</div>