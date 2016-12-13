<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="css/hantable.css" />

<div id="admin_ord_showpanel" class="easyui-panel" data-options="border:false,fit:true">
	
		<div id="admin_ordershow_tabs" class="easyui-tabs" data-options="fit:true,border:false" style="overflow: hidden;">
			<div title="基本评估" data-options="closable:false" >
				<form id="admin_order_showdialog">
				<input style="margin:20px 10px" type="checkbox" value="1"/>SEM评价
				<input style="margin:20px 10px" type="checkbox" value="2"  />Index评价
                <input style="margin:20px 10px" type="checkbox" value="3" />质量证书的审核
                <input style="margin:20px 10px" type="checkbox" value="4"  />环境证书的审核
                <input style="margin:20px 10px" type="checkbox" value="5"  />环境评价
                <input style="margin:20px 10px" type="checkbox" value="6"  />物流评价
                <input style="margin:20px 10px" type="checkbox" value="7"  />产能评价
                <input style="margin:20px 10px" type="checkbox" value="8"  />质量评价
				<table class="hantable">
					<tr>
						<th>SEM评价</th>
						<td><input  class="showinput"  name="demandId">Approved,67% Normal（江志强，2016-01-12）></input></td>
					</tr>
					<tr>
						<th>质量评价</th>
						<td><input class="showinput" name="materialId">ISO/TS 16949,Cert.Org.:SGS,Reg.:2016-02-21,Exp:2016-03-08<p style="color:red;">无计划证书</p></input></td>
					</tr>
					<tr>
						<th>环境证书评估</th>
						<td><input class="showinput" name="materialId">ISO 14001,Cert.Org.:CNAS,Reg.:2016-02-11,Exp:2016-03-24<p style="color:red;">无计划证书</p></input></td>
					</tr>
					<tr>
						<th>物流评价</th>
						<td><input class="showinput" name="materialId"><p style="color:red;">暂无</p></input></td>
					</tr>
					<tr>
						<th>环境评价</th>
						<td><input class="showinput" name="state" />100%,审计时间：2016-01-09</input></td>
					</tr>
					
				</table>
				<a id="btn" style="margin:10px;" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-ok'">确定</a>
				</form>
			</div>
			<div title="其他评估" data-options="closable:false" >
				<!-- 
				<table class="hantable">
					<tr>
						<th></th>
						<td><input  class="showinput"  name="demandId"></input></td>
						<th></th>
						<td><input name="demandCount"></input></td>				
					</tr>
				</table>
				 -->
			</div>
			
		</div>
</div>