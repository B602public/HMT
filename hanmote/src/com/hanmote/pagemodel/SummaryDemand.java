package com.hanmote.pagemodel;

import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

public class SummaryDemand{
	private String demandId;
	private String materialId;
	private String materialName;
	private String purchaseType;
	private String distributionType;
	private String stockId;
	private String factoryId;
	private Integer miniPurchaseCount;
	private Integer demandCount;
	private Timestamp applyDate;
	private String proposerId;
	private String supplierId;
	private String contractId;
	private String remarks;
	private String state;
	private Timestamp passDate;
	private String purchasePrice;
	private String distributionPrinciple;
	private Timestamp beginTime;
	private Timestamp endTime;
	private String followCertificate;
	private Page page  = new Page();
	private Timestamp startDate;
    private Timestamp endDate;
    private Timestamp deliveryDate;
    
	
	
	
	public Timestamp getDeliveryDate() {
		return deliveryDate;
	}
	public void setDeliveryDate(Timestamp deliveryDate) {
		this.deliveryDate = deliveryDate;
	}
	public String getDemandId() {
		return demandId;
	}
	public void setDemandId(String demandId) {
		this.demandId = demandId;
	}
	public String getMaterialId() {
		return materialId;
	}
	public void setMaterialId(String materialId) {
		this.materialId = materialId;
	}
	public String getMaterialName() {
		return materialName;
	}
	public void setMaterialName(String materialName) {
		this.materialName = materialName;
	}
	public String getPurchaseType() {
		return purchaseType;
	}
	public void setPurchaseType(String purchaseType) {
		this.purchaseType = purchaseType;
	}
	public String getDistributionType() {
		return distributionType;
	}
	public void setDistributionType(String distributionType) {
		this.distributionType = distributionType;
	}
	public String getStockId() {
		return stockId;
	}
	public void setStockId(String stockId) {
		this.stockId = stockId;
	}
	public String getFactoryId() {
		return factoryId;
	}
	public void setFactoryId(String factoryId) {
		this.factoryId = factoryId;
	}
	public Integer getMiniPurchaseCount() {
		return miniPurchaseCount;
	}
	public void setMiniPurchaseCount(Integer miniPurchaseCount) {
		this.miniPurchaseCount = miniPurchaseCount;
	}
	public Integer getDemandCount() {
		return demandCount;
	}
	public void setDemandCount(Integer demandCount) {
		this.demandCount = demandCount;
	}
	public Timestamp getApplyDate() {
		return applyDate;
	}
	public void setApplyDate(Timestamp applyDate) {
		this.applyDate = applyDate;
	}
	public String getProposerId() {
		return proposerId;
	}
	public void setProposerId(String proposerId) {
		this.proposerId = proposerId;
	}
	public String getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(String supplierId) {
		this.supplierId = supplierId;
	}
	public String getContractId() {
		return contractId;
	}
	public void setContractId(String contractId) {
		this.contractId = contractId;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Timestamp getPassDate() {
		return passDate;
	}
	public void setPassDate(Timestamp passDate) {
		this.passDate = passDate;
	}
	public String getPurchasePrice() {
		return purchasePrice;
	}
	public void setPurchasePrice(String purchasePrice) {
		this.purchasePrice = purchasePrice;
	}
	public String getDistributionPrinciple() {
		return distributionPrinciple;
	}
	public void setDistributionPrinciple(String distributionPrinciple) {
		this.distributionPrinciple = distributionPrinciple;
	}
	public Timestamp getBeginTime() {
		return beginTime;
	}
	public void setBeginTime(Timestamp beginTime) {
		this.beginTime = beginTime;
	}
	public Timestamp getEndTime() {
		return endTime;
	}
	public void setEndTime(Timestamp endTime) {
		this.endTime = endTime;
	}
	public String getFollowCertificate() {
		return followCertificate;
	}
	public void setFollowCertificate(String followCertificate) {
		this.followCertificate = followCertificate;
	}
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	public Timestamp getStartDate() {
		return startDate;
	}
	public void setStartDate(Timestamp startDate) {
		this.startDate = startDate;
	}
	public Timestamp getEndDate() {
		return endDate;
	}
	public void setEndDate(Timestamp endDate) {
		this.endDate = endDate;
	}
	
	

}