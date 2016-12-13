<%@ page language="java" pageEncoding="GBK"%>
<link rel="stylesheet" type="text/css" href="css/backindex.css">
<link rel="stylesheet" type="text/css" href="css/dialog.css"/>
<link rel="stylesheet" href="easyui/themes/default/easyui.css">
<link rel="stylesheet" href="easyui/themes/icon.css">

<div class="formtitle1"><span id="placeStr" >销售</span></div>
 <form id="addCompanyInfo" name="addCompanyInfo" action="SaleInfoServlet" method="post">
	    <!-- 组织信息 -->
	    <div class="frmBox" >
	    <div  class="regLine hg250">
	    	<div class="rowTitle"><span style="color:red;">*</span>近五年营业额</div>
	        <table style="width:650px;border:solid #eee 1px; text-algin:center;">
	    		<tr style="width:650px;border:solid #eee 1px; text-algin:center;">
	    			<td>年度</td>
	    			<td>全球总营业额</td>
	    			<td>中国地区总营业额</td>
	    			<td>全球销售总利润</td>
	    			<td>中国地区总利润</td>
	    		</tr>
	    		<tr style="border:solid #eee 1px; text-algin:center;">
	    			<td><div class="row2"><input class="must" style="width:120px;"   type="text" name="saleYear" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" style="width:120px;"  type="text" name="globalTotalTurnover" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" style="width:120px;"   type="text" name="chinaTotalTurnover" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" style="width:120px;"  type="text" name="globalSalesTotalProfit" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" style="width:120px;"  type="text" name="chinaSalesTotalProfit" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			
	    		</tr>
	    		<tr style="border:solid #eee 1px; text-algin:center;">
	    			<td><div class="row2"><input class="must" style="width:120px;"   type="text" name="saleYear" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" style="width:120px;"  type="text" name="globalTotalTurnover" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" style="width:120px;"   type="text" name="chinaTotalTurnover" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" style="width:120px;"  type="text" name="globalSalesTotalProfit" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" style="width:120px;"  type="text" name="chinaSalesTotalProfit" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			
	    		</tr>
	    		<tr style="border:solid #eee 1px; text-algin:center;">
	    			<td><div class="row2"><input class="must" style="width:120px;"   type="text" name="saleYear" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" style="width:120px;"  type="text" name="globalTotalTurnover" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" style="width:120px;"   type="text" name="chinaTotalTurnover" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" style="width:120px;"  type="text" name="globalSalesTotalProfit" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" style="width:120px;"  type="text" name="chinaSalesTotalProfit" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			
	    		</tr>
	    		<tr style="border:solid #eee 1px; text-algin:center;">
	    			<td><div class="row2"><input class="must" style="width:120px;"   type="text" name="saleYear" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" style="width:120px;"  type="text" name="globalTotalTurnover" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" style="width:120px;"   type="text" name="chinaTotalTurnover" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" style="width:120px;"  type="text" name="globalSalesTotalProfit" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" style="width:120px;"  type="text" name="chinaSalesTotalProfit" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			
	    		</tr>
	    		<tr style="border:solid #eee 1px; text-algin:center;">
	    			<td><div class="row2"><input class="must" style="width:120px;"   type="text" name="saleYear" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" style="width:120px;"  type="text" name="globalTotalTurnover" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" style="width:120px;"   type="text" name="chinaTotalTurnover" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" style="width:120px;"  type="text" name="globalSalesTotalProfit" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" style="width:120px;"  type="text" name="chinaSalesTotalProfit" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			
	    		</tr>
	    	</table>
	    </div>
	    <div  class="regLine hg250">
	    	<div class="rowTitle"><span style="color:red;">*</span>前五大竞争对手</div>
	        <table style="border:solid #eee 1px; text-algin:center;">
	    		<tr style="border:solid #eee 1px; text-algin:center;">
	    			<td>竞争对手</td>
	    			<td>所属行业</td>
	    		</tr>
	    		<tr style="border:solid #eee 1px; text-algin:center;">
	    			<td><div class="row2"><input class="must" type="text" name="competitor" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" type="text" name="competitorField" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			
	    		</tr>
	    		<tr style="border:solid #eee 1px; text-algin:center;">
	    			<td><div class="row2"><input class="must" type="text" name="competitor" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" type="text" name="competitorField" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			
	    		</tr>
	    		<tr style="border:solid #eee 1px; text-algin:center;">
	    			<td><div class="row2"><input class="must" type="text" name="competitor" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input  class="must" type="text" name="competitorField" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			
	    		</tr>
	    		<tr style="border:solid #eee 1px; text-algin:center;">
	    			<td><div class="row2"><input class="must" class="must" type="text" name="competitor" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" type="text" name="competitorField" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			
	    		</tr>
	    		<tr style="border:solid #eee 1px; text-algin:center;">
	    			<td><div class="row2"><input class="must" type="text" name="competitor" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" type="text" name="competitorField" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			
	    		</tr>
	    	</table>
	    </div>
	    <div  class="regLine hg250">
	    	<div class="rowTitle"><span style="color:red;">*</span>前五大客户</div>
	        <table style="border:solid #eee 1px; text-algin:center;">
	    		<tr style="border:solid #eee 1px; text-algin:center;">
	    			<td >客户</td>
	    			<td>所属行业</td>
	    			<td>占公司业务(%)</td>
	    		</tr>
	    		<tr style="border:solid #eee 1px; text-algin:center;">
	    			<td><div class="row2"><input class="must" type="text" name="customer" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" type="text" name="customerField" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" type="text" name="percentage" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			
	    		</tr>
	    			<tr style="border:solid #eee 1px; text-algin:center;">
	    			<td><div class="row2"><input class="must" type="text" name="customer" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" class="must" type="text" name="customerField" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" type="text" name="percentage" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			
	    		</tr>
	    			<tr style="border:solid #eee 1px; text-algin:center;">
	    			<td><div class="row2"><input class="must" type="text" name="customer" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" type="text" name="customerField" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" type="text" name="percentage" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			
	    		</tr>
	    			<tr style="border:solid #eee 1px; text-algin:center;">
	    			<td><div class="row2"><input class="must" type="text" name="customer" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" type="text" name="customerField" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" type="text" name="percentage" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			
	    		</tr>
	    			<tr style="border:solid #eee 1px; text-algin:center;">
	    			<td><div class="row2"><input class="must" type="text" name="customer" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" class="must" type="text" name="customerField" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must" type="text" name="percentage" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			
	    		</tr>
	    	</table>
	    </div>
		</div>
	<div id="basic-dialog-warn">
	<!-- 普通弹出层-->  
	<div class="box-title show"><h2>提示</h2></div>  
	<div class="box-main">
		<div class="tips">      
			<span class="tips-ico">
				<span id="ico" class="ico-ok"></span>
			</span>      
			<div class="tips-content">        
				<div id ="tipsContent" class="tips-title">保存成功</div>        
				<div class="tips-line"></div>     
			</div>    
		</div>
		<div class="box-buttons"><button type="button" class="simplemodal-close">关 闭</button></div>
	</div>
	</div>
	<input type="hidden" id="saveFinanceInfoSucc" value="${saveFinanceInfoSucc}"/>
    <input class="saveBtn" type="submit" value="保存" style="margin-top:10px;margin-left:270px;"/>
    </form>
    <script type="text/javascript">

	$('.saveBtn').click(function(){
	if(!checkMustItems()){
		$('#ico').attr('class','ico-warn');
		$('#tipsContent').html('带红色*为必填项');
		$('#basic-dialog-warn').modal();
		return false;
	}else{
		$('#addCompanyInfo').submit();
	}
	});
function showSucc()
{
	var r = $("#saveCompanyInfoSucc").val();
	var r1 = $("#saveFinanceInfoSucc").val();
	if(r == "success"||r1 == "success"){
		$('#ico').attr('class','ico-ok');
		$('#tipsContent').html('您的信息保存成功！');
		$('#basic-dialog-warn').modal();
	} else if(r == "fail"||r1 == "fail"){
		$('#ico').attr('class','ico-warn');
		$('#tipsContent').html('对不起，您的信息保存失败！');
		$('#basic-dialog-warn').modal();
	}
}
function checkMustItems(){
	var items = [];
	$('.must').each(function(){
		items.push($(this).val());
	});
	for(var i = 0;i < items.length;i++){
		if(items[i]==""){
			return false;
		}
	}
	return true;
}

  </script>