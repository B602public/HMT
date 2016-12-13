<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="admin_rec_showpanel" class="easyui-panel" data-options="border:false,fit:true">
	
		<div id="admin_recshow_tabs" class="easyui-tabs" data-options="fit:true,border:false" style="overflow: hidden;">
			<div title="收货信息" data-options="closable:false" >
				<form id="admin_rec_showdialog">
				<table id="admin_rec_table" class="hantable">
					<tr>
						<th>发货单号</th>
						<td><input  class="showinput"  name="demandId"></input></td>
						<th></th>
						<td></td>				
					</tr>
					<tr>
						<th>批次号码</th>
						<td><input name="materialId"></input></td>
						<th>发货数量</th>
						<td><input name="distributionType"></input></td>				
					</tr>
					<tr>
						<th>发货时间</th>
						<td><input name="factoryId"></input></td>
						<th>收货地点</th>
						<td><input name="materialName"></input></td>				
					</tr>
				</table>
				</form>
			</div>
			<div title="订货信息" data-options="closable:false" >
				<table class="hantable">
					<tr>
						<th>订单号</th>
						<td><input  class="showinput"  name="demandId"></input></td>
						<th>订单类型</th>
						<td><input name="demandCount"></input></td>				
					</tr>
					<tr>
						<th>物料编号</th>
						<td><input  class="showinput"  name="demandId"></input></td>
						<th>收货数量</th>
						<td><input name="demandCount"></input></td>				
					</tr>
					<tr>
						<th>交货日期</th>
						<td><input  class="showinput"  name="demandId"></input></td>
						<th>交货地点</th>
						<td><input name="demandCount"></input></td>				
					</tr>
				</table>
			</div>
			<div title="附加数据" data-options="closable:false" >
				<table class="hantable">
					<tr>
						<th>项目文本</th>
						<td><input  class="showinput"  name="demandId"></input></td>
						<th>卸货点</th>
						<td><input name="demandCount"></input></td>				
					</tr>
					<tr>
						<th>验货状态</th>
						<td><input  class="showinput"  name="demandId"></input></td>
						<th></th>
						<td></td>				
					</tr>
				</table>
			</div>
			
		</div>
</div>