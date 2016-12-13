package com.hanmote.action;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.hanmote.entity.OrgCapacity;
import com.hanmote.entity.OrgProduct;
import com.hanmote.entity.ReturnMsg;
import com.hanmote.service.ICapacityInfoService;
import com.opensymphony.xwork2.ModelDriven;

@Controller
@Scope("prototype")
public class CapacityInfoAction extends BaseAction implements
		ModelDriven<OrgCapacity> {

	private OrgCapacity obj;
	private ICapacityInfoService capacityInfoService;

	private String[] productName;
	private float[] annualSupply;
	private String[] equipmentType;
	private float[] loadRatio;

	public ICapacityInfoService getCapacityInfoService() {
		return capacityInfoService;
	}

	@Resource
	public void setCapacityInfoService(ICapacityInfoService capacityInfoService) {
		this.capacityInfoService = capacityInfoService;
	}

	public String add() {
		ReturnMsg rm = new ReturnMsg();
		try {
			List<OrgProduct> list = null;
			OrgProduct p = new OrgProduct();
			int len = productName.length;
			list = new ArrayList<OrgProduct>();
			for(int i = 0; i < len;i++){
				p.setProductName(productName[i]);
				p.setAnnualSupply(annualSupply[i]);
				p.setEquipmentType(equipmentType[i]);
				p.setLoadRatio(loadRatio[i]);
				p.setOrgCapacity(obj);
				list.add(p);
			}
			obj.setOrgProducts(new HashSet<OrgProduct>(list));
			capacityInfoService.saveInfo(obj);
			rm.setSuccess(true);
			rm.setMessage("保存成功");

		} catch (Exception e) {
			e.printStackTrace();
			rm.setMessage("保存失败");
		}
		super.writeMsg(rm);
		return "success";
	}

	public String addInput() {
		return "success";
	}

	@Override
	public OrgCapacity getModel() {
		if (obj == null) {
			obj = new OrgCapacity();
		}
		return obj;
	}

	public String[] getProductName() {
		return productName;
	}

	public void setProductName(String[] productName) {
		this.productName = productName;
	}

	public float[] getAnnualSupply() {
		return annualSupply;
	}

	public void setAnnualSupply(float[] annualSupply) {
		this.annualSupply = annualSupply;
	}

	public String[] getEquipmentType() {
		return equipmentType;
	}

	public void setEquipmentType(String[] equipmentType) {
		this.equipmentType = equipmentType;
	}

	public float[] getLoadRatio() {
		return loadRatio;
	}

	public void setLoadRatio(float[] loadRatio) {
		this.loadRatio = loadRatio;
	}
	

}
