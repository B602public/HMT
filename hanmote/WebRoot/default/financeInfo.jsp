<%@ page language="java" pageEncoding="GBK"%>
<link rel="stylesheet" type="text/css" href="css/backindex.css">
<link rel="stylesheet" type="text/css" href="css/dialog.css"/>
<link rel="stylesheet" href="easyui/themes/default/easyui.css">
<link rel="stylesheet" href="easyui/themes/icon.css">
<script type="text/javascript" src="easyui/jquery.min.js"></script>   
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script> 

   <div class="formtitle1"><span id="placeStr" >����</span></div>
   <form id="addCompanyInfo" name="addCompanyInfo" action="FinanceInfoServlet" method="post">
	    <!-- ��֯��Ϣ -->
	    <div class="frmBox" style="height:900px;">
	    <div  class="regLine hg300"  >
	    	<div class="rowTitle">����</div>
	        <div class="row1 wd120"><span style="color:red;">*</span>ע���ʽ���Ԫ��</div>
	        <div class="row2"><input class="must" type="text" name="registeredCapital" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
	        <div class="row1 wd120"><span style="color:red;">*</span>��˾��������</div>
	        <div class="row2"><input class="must"  type="text" name="companyEstablishedDate" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>��ҵ����</div>			
			<div class="row2"><input class="must"  type="text" name="employmentYears" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"><span style="color:red;">*</span>�ʲ�ծ����</div>
	        <div class="row2"><input class="must"  type="text" name="assetLiabilityRatio" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>�ٶ�����</div>			
			<div class="row2"><input class="must"  type="text" name="qucikRatio" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"><span style="color:red;">*</span>��������</div>
	        <div class="row2"><input class="must"  type="text" name="flowRatio" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>�˿���ת��</div>			
			<div class="row2"><input class="must"   type="text" name="turnoverRate" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120">�ɶ�Ȩ��</div>
	        <div class="row2"><input type="text" name="stockholderEquity" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>�����ռӪҵ��(%)</div>			
			<div class="row2"><input class="must"  type="text" name="profitAndBusinesVolumeRate" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"><span style="color:red;">*</span>������</div>
	        <div class="row2"><input class="must"  type="text" name="netProfitMargin" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>ʹ���ʱ��ر���</div>			
			<div class="row2"><input class="must"  type="text" name="capitalReturnRate" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"><span style="color:red;">*</span>���ʲ��ر���</div>
	        <div class="row2"><input class="must" type="text" name="allCapitalReturnRate" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
	    </div>
	    <div  class="regLine hg200">
	    	<div class="rowTitle">����ϸĿ</div>
	        <div class="row1 wd120"><span style="color:red;">*</span>����</div>
	        <div class="row2"><select name="bankCountry" class="sellen154 must"><option>�й�</option><option>����</option><option>�ձ�</option><option>Ӣ��</option><option>���� </option><option>�¹�</option></select></div>
	        <div class="row1 wd120"><span style="color:red;">*</span>���д���</div>
	        <div class="row2"><input class="must"  type="text" name="bankCode" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>��������</div>			
			<div class="row2"><input class="must"  type="text" name="bankName" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"></div>
	        <div class="row2"></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>�����˺�</div>			
			<div class="row2"><input class="must"  type="text" name="bankAccount" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"></div>
	        <div class="row2"></div>
	        <div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>���л���</div>			
			<div class="row2"><input class="must"  type="text" name="bankHost" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"></div>
	        <div class="row2"></div>
	    </div>
	    <div  class="regLine" style="height:240px;">
	    	<div class="rowTitle">ǰ���ɶ�</div>
	    	<table style="border:solid #eee 1px; text-algin:center;">
	    		<tr style="border:solid #eee 1px; text-algin:center;">
	    			<td>�ɶ�����</td>
	    			<td>�ɱ�</td>
	    			<td>�ع�����</td>
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
	    	<div class="rowTitle">����״��</div>
	        <div class="row1 wd120"><span style="color:red;">*</span>���</div>
	        <div class="row2"><input class="must"  type="text" name="financeYear1" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
	        <div class="row1 wd120"><span style="color:red;">*</span>���ʲ�</div>
	        <div class="row2"><input class="must"  type="text" name="allAsset1" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>��������</div>			
			<div class="row2"><input class="must"  type="text" name="saleProfit1" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"><span style="color:red;">*</span>������</div>
	        <div class="row2"><input  class="must"  type="text" name="financeProfit1" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>�з�����Ͷ��</div>			
			<div class="row2"><input class="must" type="text" name="RAndDfunding1" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
	    </div>
		</div>
	<div id="basic-dialog-warn">
	<!-- ��ͨ������-->  
	<div class="box-title show"><h2>��ʾ</h2></div>  
	<div class="box-main">
		<div class="tips">      
			<span class="tips-ico">
				<span id="ico" class="ico-ok"></span>
			</span>      
			<div class="tips-content">        
				<div id ="tipsContent" class="tips-title">����ɹ�</div>        
				<div class="tips-line"></div>     
			</div>    
		</div>
		<div class="box-buttons"><button type="button" class="simplemodal-close">�� ��</button></div>
	</div>
	</div>
	<input type="hidden" id="saveFinanceInfoSucc" value="${saveFinanceInfoSucc}"/>
    <input class="saveBtn" type="submit" value="����" style="margin-top:10px;margin-left:270px;"/>
    </form>
    <script type="text/javascript">

	$('.saveBtn').click(function(){
	if(!checkMustItems()){
		$('#ico').attr('class','ico-warn');
		$('#tipsContent').html('����ɫ*Ϊ������');
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