<%@ page language="java" pageEncoding="GBK"%>
<link rel="stylesheet" type="text/css" href="css/backindex.css">
<link rel="stylesheet" type="text/css" href="css/dialog.css"/>
<link rel="stylesheet" href="easyui/themes/default/easyui.css">
<link rel="stylesheet" href="easyui/themes/icon.css">
<script type="text/javascript" src="easyui/jquery.min.js"></script>   
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script> 

<div class="formtitle1"><span id="placeStr" >����</span></div>
 <form id="addCompanyInfo" name="addCompanyInfo" action="TechnologyInfoServlet" method="post">
	    <!-- ��֯��Ϣ -->
	    <div class="frmBox" >
	    <div  class="regLine hg150">
	    	<div class="rowTitle">��������</div>
	        <div class="row1 wd120"><span style="color:red;">*</span>���</div>
	        <div class="row2"><input class="must"  type="text" name="projectID" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
	        <div class="row1 wd120"><span style="color:red;">*</span>������Ŀ</div>
	        <div class="row2"><input class="must"  type="text" name="projectName" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>��˾������</div>			
			<div class="row2"><input class="must"  type="text" name="manageMan" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"><span style="color:red;">*</span>��ϵ�绰</div>
	        <div class="row2"><input class="must"  type="text" name="phone" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>�ֻ�</div>			
			<div class="row2"><input class="must"  type="text" name="mobilephone" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"><span style="color:red;">*</span>��Ŀ���</div>
	        <div class="row2"><input class="must"  type="text" name="isFinished" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
	    </div>
	    <div  class="regLine hg250">
	    	<div class="rowTitle">������Ա���</div>
	       <table style="border:solid #eee 1px; text-algin:center;">
	    		<tr style="border:solid #eee 1px; text-algin:center;">
	    			<td>ְ��</td>
	    			<td>��Ա</td>
	    			<td>ƽ��ѧ��</td>
	    			<td>����ҵ��������</td>
	    		</tr>
	    		<tr style="border:solid #eee 1px; text-algin:center;">
	    			<td><span style="color:red;">*</span>��������ʦ</td>
	    			<td><div class="row2"><input class="must"  type="text" name="juniorEngineerNum" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must"  type="text" name="juniorEngineerEducation" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must"  type="text" name="juniorEngineerYearNum" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    		</tr>
	    		<tr style="border:solid #eee 1px; text-algin:center;">
	    			<td><span style="color:red;">*</span>�м�����ʦ</td>
	    			<td><div class="row2"><input class="must"  type="text" name="intermediateEngineerNum" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must"  type="text" name="intermediateEngineerEducation" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must"  type="text" name="intermediateEngineerYearNum" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    		</tr>
	    		<tr>
	    			<td><span style="color:red;">*</span>�߼�����ʦ</td>
	    			<td><div class="row2"><input class="must"  type="text" name="seniorEngineerNum" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must"  type="text" name="seniorEngineerEducation" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    			<td><div class="row2"><input class="must"  type="text" name="seniorEngineerYearNum" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div></td>
	    		</tr>
	    	</table>
	    </div>
	    <div  class="regLine hg100">
	    	<div class="rowTitle">���ʹ�����</div>
	        <div class="row1 wd120"><span style="color:red;">*</span>���</div>
	        <div class="row2"><input class="must"  type="text" name="softID" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
	        <div class="row1 wd120"><span style="color:red;">*</span>ʹ�����</div>
	        <div class="row2"><input  class="must"  type="text" name="soft" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>�汾</div>			
			<div class="row2"><input class="must"  type="text" name="softVersion" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"><span style="color:red;">*</span>�����ն�����</div>
	        <div class="row2"><input class="must"  type="text" name="terminalNum" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
	    </div>
	     <div  class="regLine hg150">
	    	<div class="rowTitle">�豸���</div>
	        <div class="row1 wd120"><span style="color:red;">*</span>���</div>
	        <div class="row2"><input class="must"  type="text" name="instrumentID" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
	        <div class="row1 wd120"><span style="color:red;">*</span>�����豸</div>
	        <div class="row2"><input class="must"  type="text" name="instrument" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>����</div>			
			<div class="row2"><input class="must"  type="text" name="instrumentNum" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"></div>
	        <div class="row2"></div>
			<div class="cl"></div>
	    </div>
	    <div  class="regLine hg100">
	    	<div class="rowTitle">���������</div>
	        <div class="row1 wd120"><span style="color:red;">*</span>���</div>
	        <div class="row2"><input class="must"  type="text" name="labID" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
	        <div class="row1 wd120"><span style="color:red;">*</span>ʵ��������</div>
	        <div class="row2"><input class="must"  type="text" name="labName" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>������֤</div>			
			<div class="row2"><input class="must"  type="text" name="honor" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd120"><span style="color:red;">*</span>��֤���</div>
	        <div class="row2"><input  class="must"  type="text" name="honorYear" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
	    </div>
	    <div  class="regLine hg100">
	    	<div class="rowTitle">����������Ŀ</div>
	        <div class="row1 wd120"><span style="color:red;">*</span>���</div>
	        <div class="row2"><input class="must"  type="text" name="technologyID" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
	        <div class="row1 wd120"><span style="color:red;">*</span>����������Ŀ</div>
	        <div class="row2"><input class="must"  type="text" name="technologyProject" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="cl"></div>
			<div class="row1 wd120"><span style="color:red;">*</span>��Դ</div>			
			<div class="row2"><input class="must"  type="text" name="technologyResource" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
			<div class="row1 wd150"><span style="color:red;">*</span>��ί��д������Դ��</div>
	        <div class="row2"><input  class="must"  type="text" name="sourceSide" maxlength="20" onKeyDown="if(event.keyCode==13){$('#pwd').focus();}" /></div>
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