<%@ page language="java" pageEncoding="GBK"%>
<link rel="stylesheet" type="text/css" href="css/backindex.css">
<link rel="stylesheet" type="text/css" href="css/dialog.css"/>
<link rel="stylesheet" href="easyui/themes/default/easyui.css">
<link rel="stylesheet" href="easyui/themes/icon.css">

<div class="formtitle1"><span id="placeStr" >����</span></div>
 <form id="addCompanyInfo" name="addCompanyInfo" action="SaleInfoServlet" method="post">
	    <!-- ��֯��Ϣ -->
	    <div class="frmBox" >
	    <div  class="regLine hg250">
	    	<div class="rowTitle"><span style="color:red;">*</span>������Ӫҵ��</div>
	        <table style="width:650px;border:solid #eee 1px; text-algin:center;">
	    		<tr style="width:650px;border:solid #eee 1px; text-algin:center;">
	    			<td>���</td>
	    			<td>ȫ����Ӫҵ��</td>
	    			<td>�й�������Ӫҵ��</td>
	    			<td>ȫ������������</td>
	    			<td>�й�����������</td>
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
	    	<div class="rowTitle"><span style="color:red;">*</span>ǰ���������</div>
	        <table style="border:solid #eee 1px; text-algin:center;">
	    		<tr style="border:solid #eee 1px; text-algin:center;">
	    			<td>��������</td>
	    			<td>������ҵ</td>
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
	    	<div class="rowTitle"><span style="color:red;">*</span>ǰ���ͻ�</div>
	        <table style="border:solid #eee 1px; text-algin:center;">
	    		<tr style="border:solid #eee 1px; text-algin:center;">
	    			<td >�ͻ�</td>
	    			<td>������ҵ</td>
	    			<td>ռ��˾ҵ��(%)</td>
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
function showSucc()
{
	var r = $("#saveCompanyInfoSucc").val();
	var r1 = $("#saveFinanceInfoSucc").val();
	if(r == "success"||r1 == "success"){
		$('#ico').attr('class','ico-ok');
		$('#tipsContent').html('������Ϣ����ɹ���');
		$('#basic-dialog-warn').modal();
	} else if(r == "fail"||r1 == "fail"){
		$('#ico').attr('class','ico-warn');
		$('#tipsContent').html('�Բ���������Ϣ����ʧ�ܣ�');
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