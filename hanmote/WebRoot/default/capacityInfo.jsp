<%@ page language="java" pageEncoding="GBK"%>
<link rel="stylesheet" type="text/css" href="css/backindex.css">
<link rel="stylesheet" type="text/css" href="css/dialog.css"/>
<link rel="stylesheet" href="easyui/themes/default/easyui.css">
<link rel="stylesheet" href="easyui/themes/icon.css">
<script type="text/javascript" src="easyui/jquery.min.js"></script>   
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script> 

<div class="formtitle1"><span id="placeStr" >����</span></div>
 <form id="addCompanyInfo" name="addCompanyInfo" action="CapacityInfoServlet" method="post">

	    <div class="frmBox" >
	    <div  class="regLine hg300">
	    	<div class="rowTitle">���������豸</div>
	        <div class="row1 wd120"><span style="color:red;">*</span>ֱ��������Ա����</div>
	        <div class="row2"><input class="must"  type="text" name="productManNum" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
	        <div class="row1 wd120">ռ�����</div>
	        <div class="row2"><input type="text" name="areaSquare" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120">�������</div>			
			<div class="row2"><input type="text" name="workshopSquare" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120">����ʹ����(%)</div>
	        <div class="row2"><input type="text" name="workshopUseRate" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120">�ڲ��ֿ����</div>			
			<div class="row2"><input type="text" name="internalWarehouse" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120">�ڲ��ֿ����</div>
	        <div class="row2"><input type="text" name="warehouseSquare" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120">���䷽ʽ</div>			
			<div class="row2"><input type="text" name="transpotWay" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120">�������(km)</div>
	        <div class="row2"><input type="text" name="transpotDistance" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120">����ʱ��</div>			
			<div class="row2"><input type="text" name="transpotTime" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120">��ת������</div>
	        <div class="row2"><input  type="text" name="transferName" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120">��Ȼ������</div>			
			<div class="row2"><input  type="text" name="gasVolume" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120">�õ縺��</div>
	        <div class="row2"><input type="text" name="electryVolume" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120">�Ƿ����÷����</div>			
			<div class="row2"><input type="text" name="isRent" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120">��������(kv)</div>
	        <div class="row2"><input type="text" name="electricPower" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
	    </div>
	    <div  class="regLine hg100">
	    	<div class="rowTitle">��Ʒ/����</div>
	        <div class="row1 wd120"><span style="color:red;">*</span>��Ҫ��Ʒ����</div>
	        <div class="row2"><select name="productName" class="sellen154 must"><option>����1</option><option>����2</option><option>����3</option><option>����4</option></select></div>
	        <div class="row1 wd120"><span style="color:red;">*</span>�깩Ӧ��</div>
	        <div class="row2"><input class="must"  type="text" name="annualSupply" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>�豸�ͺ�</div>			
			<div class="row2"><input class="must"  type="text" name="productID" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"><span style="color:red;">*</span>��ռ�豸����</div>
	        <div class="row2"><input class="must"  type="text" name="load" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
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