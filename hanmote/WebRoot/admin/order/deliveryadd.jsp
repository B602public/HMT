<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="admin_del_addpanel" class="easyui-panel" data-options="border:false,fit:true">
	
		<div id="admin_deladd_tabs" class="easyui-tabs" data-options="fit:true,border:false" style="overflow: hidden;">
			<div title="发运题头" data-options="closable:false" >
				<form id="admin_del_adddialog">
				<table class="hantable">
					<tr>
						<th>订单编号</th>
						<td><input  class="showinput"  name="demandId"></input></td>
						<th>发货日期</th>
						<td><input name="demandCount"></input></td>				
					</tr>
					<tr>
						<th>发货单号</th>
						<td><input name="materialId"></input></td>
						<th>预计接收日期</th>
						<td><input name="distributionType"></input></td>				
					</tr>
					<tr>
						<th>发货厂址</th>
						<td><input name="factoryId"></input></td>
						<th>联系方式</th>
						<td><input name="materialName"></input></td>				
					</tr>
					
				</table>
				</form>
			</div>
			<div title="发运行" data-options="closable:false" >
				<table class="hantable">
					<tr>
						<th>订单编号</th>
						<td><input  class="showinput"  name="demandId"></input></td>
						<th>批次</th>
						<td><input name="demandCount"></input></td>				
					</tr>
					<tr>
						<th>品名</th>
						<td><input  class="showinput"  name="demandId"></input></td>
						<th>规格</th>
						<td><input name="demandCount"></input></td>				
					</tr>
					
					<tr>
						<th>数量</th>
						<td><input  class="showinput"  name="demandId"></input></td>
						<th>单位</th>
						<td><input name="demandCount"></input></td>				
					</tr>
					<tr>
						<th>金额</th>
						<td><input  class="showinput"  name="demandId"></input></td>
						<th>备注</th>
						<td><input name="demandCount"></input></td>				
					</tr>
				</table>
			</div>
			<div title="运费信息" data-options="closable:false" >
				<table class="hantable">
					<tr>
						<th>运费条款</th>
						<td><input  class="showinput"  name="demandId"></input></td>
						<th>承运人</th>
						<td><input name="demandCount"></input></td>				
					</tr>
					<tr>
						<th>货箱数</th>
						<td><input  class="showinput"  name="demandId"></input></td>
						<th>运单号</th>
						<td><input name="demandCount"></input></td>				
					</tr>
					<tr>
						<th>特殊装卸代码</th>
						<td><input  class="showinput"  name="demandId"></input></td>
						<th></th>
						<td></td>				
					</tr>
					<tr>
						<th>皮重</th>
						<td><input  class="showinput"  name="demandId"></input></td>
						<th>净重</th>
						<td><input name="demandCount"></input></td>				
					</tr>
					<tr>
						<th>备注</th>
						<td><input  class="showinput"  name="demandId"></input></td>
						<th></th>
						<td></td>				
					</tr>
				</table>
			</div>
			<div title="发票信息" data-options="closable:false" >
				<table class="hantable">
					<tr>
						<th>发票编号</th>
						<td><input  class="showinput"  name="demandId"></input></td>
						<th>发票额</th>
						<td><input name="demandCount"></input></td>				
					</tr>
					<tr>
						<th>发票日期自</th>
						<td><input  class="showinput"  name="demandId"></input></td>
						<th>发票日期至</th>
						<td><input name="demandCount"></input></td>				
					</tr>
					<tr>
						<th>购货币单位名称</th>
						<td><input  class="showinput"  name="demandId"></input></td>
						<th>纳税人识别号</th>
						<td><input name="demandCount"></input></td>				
					</tr>
					<tr>
						<th>银行账号</th>
						<td><input  class="showinput"  name="demandId"></input></td>
						<th>货物名称</th>
						<td><input name="demandCount"></input></td>				
					</tr>
					<tr>
						<th>规格</th>
						<td><input  class="showinput"  name="demandId"></input></td>
						<th>单位</th>
						<td><input name="demandCount"></input></td>				
					</tr>
					<tr>
						<th>数量</th>
						<td><input  class="showinput"  name="demandId"></input></td>
						<th>金额</th>
						<td><input name="demandCount"></input></td>				
					</tr>
				</table>
			</div>
		</div>
</div>