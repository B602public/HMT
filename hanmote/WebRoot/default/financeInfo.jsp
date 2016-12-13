<%@ page language="java" pageEncoding="GBK"%>
<link rel="stylesheet" type="text/css" href="css/backindex.css">
<link rel="stylesheet" type="text/css" href="css/dialog.css"/>
<link rel="stylesheet" href="easyui/themes/default/easyui.css">
<link rel="stylesheet" href="easyui/themes/icon.css">
<script type="text/javascript" src="easyui/jquery.min.js"></script>   
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script> 

   <div class="formtitle1"><span id="placeStr" >财务</span></div>
   <form id="addCompanyInfo" name="addCompanyInfo" action="FinanceInfoServlet" method="post">
	    <!-- 组织信息 -->
	    <div class="frmBox" style="height:900px;">
	    <div  class="regLine hg300"  >
	    	<div class="rowTitle">财务</div>
	        <div class="row1 wd120"><span style="color:red;">*</span>注册资金（万元）</div>
	        <div class="row2"><input class="must" type="text" name="registeredCapital" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
	        <div class="row1 wd120"><span style="color:red;">*</span>公司成立日期</div>
	        <div class="row2"><input class="must"  type="text" name="companyEstablishedDate" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>从业年数</div>			
			<div class="row2"><input class="must"  type="text" name="employmentYears" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"><span style="color:red;">*</span>资产债务率</div>
	        <div class="row2"><input class="must"  type="text" name="assetLiabilityRatio" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>速动比率</div>			
			<div class="row2"><input class="must"  type="text" name="qucikRatio" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"><span style="color:red;">*</span>流动比率</div>
	        <div class="row2"><input class="must"  type="text" name="flowRatio" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>账款周转率</div>			
			<div class="row2"><input class="must"   type="text" name="turnoverRate" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120">股东权益</div>
	        <div class="row2"><input type="text" name="stockholderEquity" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>利润额占营业额(%)</div>			
			<div class="row2"><input class="must"  type="text" name="profitAndBusinesVolumeRate" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"><span style="color:red;">*</span>净利率</div>
	        <div class="row2"><input class="must"  type="text" name="netProfitMargin" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>使用资本回报率</div>			
			<div class="row2"><input class="must"  type="text" name="capitalReturnRate" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"><span style="color:red;">*</span>总资产回报率</div>
	        <div class="row2"><input class="must" type="text" name="allCapitalReturnRate" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
	    </div>
	    <div  class="regLine hg200">
	    	<div class="rowTitle">银行细目</div>
	        <div class="row1 wd120"><span style="color:red;">*</span>国家</div>
	        <div class="row2"><select name="bankCountry" class="sellen154 must"><option>中国</option><option>美国</option><option>日本</option><option>英国</option><option>法国 </option><option>德国</option></select></div>
	        <div class="row1 wd120"><span style="color:red;">*</span>银行代码</div>
	        <div class="row2"><input class="must"  type="text" name="bankCode" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>银行名称</div>			
			<div class="row2"><input class="must"  type="text" name="bankName" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"></div>
	        <div class="row2"></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>银行账号</div>			
			<div class="row2"><input class="must"  type="text" name="bankAccount" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"></div>
	        <div class="row2"></div>
	        <div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>银行户主</div>			
			<div class="row2"><input class="must"  type="text" name="bankHost" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"></div>
	        <div class="row2"></div>
	    </div>
	    <div  class="regLine" style="height:240px;">
	    	<div class="rowTitle">前五大股东</div>
	    	<table style="border:solid #eee 1px; text-algin:center;">
	    		<tr style="border:solid #eee 1px; text-algin:center;">
	    			<td>股东名称</td>
	    			<td>股比</td>
	    			<td>控股类型</td>
	    		</tr>
	    		<tr style="border:solid #eee 1px; text-algin:center;">
	    			<td><div class="row2"><input type="text" name="stockholder1" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input type="text" name="shareRatio1" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input type="text" name="shareControllingType1" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    		</tr>
	    		<tr style="border:solid #eee 1px; text-algin:center;">
	    			<td><div class="row2"><input type="text" name="stockholder2" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input type="text" name="shareRatio2" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input type="text" name="shareControllingType2" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    		</tr>
	    		<tr>
	    			<td><div class="row2"><input type="text" name="stockholder3" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input type="text" name="shareRatio3" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input type="text" name="shareControllingType3" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    		</tr>
	    		<tr>
	    			<td><div class="row2"><input type="text" name="stockholder4" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input type="text" name="shareRatio4" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input type="text" name="shareControllingType4" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    		</tr>
	    		<tr>
	    			<td><div class="row2"><input type="text" name="stockholder5" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input type="text" name="shareRatio5" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input type="text" name="shareControllingType5" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    		</tr>
	    	</table>
	    </div>
	     <div  class="regLine hg150">
	    	<div class="rowTitle">财政状况</div>
	        <div class="row1 wd120"><span style="color:red;">*</span>年度</div>
	        <div class="row2"><input class="must"  type="text" name="financeYear1" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
	        <div class="row1 wd120"><span style="color:red;">*</span>总资产</div>
	        <div class="row2"><input class="must"  type="text" name="allAsset1" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>销售收入</div>			
			<div class="row2"><input class="must"  type="text" name="saleProfit1" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"><span style="color:red;">*</span>利润率</div>
	        <div class="row2"><input  class="must"  type="text" name="financeProfit1" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>研发经费投入</div>			
			<div class="row2"><input class="must" type="text" name="RAndDfunding1" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
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