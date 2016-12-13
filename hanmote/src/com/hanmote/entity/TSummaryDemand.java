package com.hanmote.entity;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 订单
 */
@Entity
@Table(name = "Summary_Demand", schema = "dbo")
public class TSummaryDemand implements java.io.Serializable {

	// Fields

	private static final long serialVersionUID = 1L;
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
	private Timestamp deliveryDate;

	// Constructors

	/** default constructor */
	public TSummaryDemand() {
	}

	/** minimal constructor */
	public TSummaryDemand(String demandId, String materialId) {
		this.demandId = demandId;
		this.materialId = materialId;
	}

	/** full constructor */
	public TSummaryDemand(String demandId, String materialId,
			String materialName, String purchaseType, String distributionType,
			String stockId, String factoryId, Integer miniPurchaseCount,
			Integer demandCount, Timestamp applyDate, String proposerId,
			String supplierId, String contractId, String remarks, String state,
			Timestamp passDate, String purchasePrice,
			String distributionPrinciple, Timestamp beginTime,
			Timestamp endTime, String followCertificate,
			Timestamp deliveryDate) {
		this.demandId = demandId;
		this.materialId = materialId;
		this.materialName = materialName;
		this.purchaseType = purchaseType;
		this.distributionType = distributionType;
		this.stockId = stockId;
		this.factoryId = factoryId;
		this.miniPurchaseCount = miniPurchaseCount;
		this.demandCount = demandCount;
		this.applyDate = applyDate;
		this.proposerId = proposerId;
		this.supplierId = supplierId;
		this.contractId = contractId;
		this.remarks = remarks;
		this.state = state;
		this.passDate = passDate;
		this.purchasePrice = purchasePrice;
		this.distributionPrinciple = distributionPrinciple;
		this.beginTime = beginTime;
		this.endTime = endTime;
		this.followCertificate = followCertificate;
		this.deliveryDate = deliveryDate;
	}

	// Property accessors
	@Id
	@Column(name = "Demand_ID", unique = true, nullable = false)
	public String getDemandId() {
		return this.demandId;
	}

	public void setDemandId(String demandId) {
		this.demandId = demandId;
	}

	@Column(name = "Material_ID", nullable = false)
	public String getMaterialId() {
		return this.materialId;
	}

	public void setMaterialId(String materialId) {
		this.materialId = materialId;
	}

	@Column(name = "Material_Name")
	public String getMaterialName() {
		return this.materialName;
	}

	public void setMaterialName(String materialName) {
		this.materialName = materialName;
	}

	@Column(name = "Purchase_Type")
	public String getPurchaseType() {
		return this.purchaseType;
	}

	public void setPurchaseType(String purchaseType) {
		this.purchaseType = purchaseType;
	}

	@Column(name = "Distribution_Type")
	public String getDistributionType() {
		return this.distributionType;
	}

	public void setDistributionType(String distributionType) {
		this.distributionType = distributionType;
	}

	@Column(name = "Stock_ID")
	public String getStockId() {
		return this.stockId;
	}

	public void setStockId(String stockId) {
		this.stockId = stockId;
	}

	@Column(name = "Factory_ID")
	public String getFactoryId() {
		return this.factoryId;
	}

	public void setFactoryId(String factoryId) {
		this.factoryId = factoryId;
	}

	@Column(name = "Mini_Purchase_Count")
	public Integer getMiniPurchaseCount() {
		return this.miniPurchaseCount;
	}

	public void setMiniPurchaseCount(Integer miniPurchaseCount) {
		this.miniPurchaseCount = miniPurchaseCount;
	}

	@Column(name = "Demand_Count")
	public Integer getDemandCount() {
		return this.demandCount;
	}

	public void setDemandCount(Integer demandCount) {
		this.demandCount = demandCount;
	}

	@Column(name = "Apply_Date", length = 23)
	public Timestamp getApplyDate() {
		return this.applyDate;
	}

	public void setApplyDate(Timestamp applyDate) {
		this.applyDate = applyDate;
	}
	
	@Column(name = "Delivery_Date", length = 23)
	public Timestamp getDeliveryDate() {
		return this.deliveryDate;
	}
	
	public void setDeliveryDate(Timestamp deliveryDate) {
		this.deliveryDate = deliveryDate;
	}

	@Column(name = "Proposer_ID")
	public String getProposerId() {
		return this.proposerId;
	}

	public void setProposerId(String proposerId) {
		this.proposerId = proposerId;
	}

	@Column(name = "Supplier_ID")
	public String getSupplierId() {
		return this.supplierId;
	}

	public void setSupplierId(String supplierId) {
		this.supplierId = supplierId;
	}

	@Column(name = "Contract_ID")
	public String getContractId() {
		return this.contractId;
	}

	public void setContractId(String contractId) {
		this.contractId = contractId;
	}

	@Column(name = "Remarks")
	public String getRemarks() {
		return this.remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	@Column(name = "State")
	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	@Column(name = "Pass_Date", length = 23)
	public Timestamp getPassDate() {
		return this.passDate;
	}

	public void setPassDate(Timestamp passDate) {
		this.passDate = passDate;
	}

	@Column(name = "Purchase_Price")
	public String getPurchasePrice() {
		return this.purchasePrice;
	}

	public void setPurchasePrice(String purchasePrice) {
		this.purchasePrice = purchasePrice;
	}

	@Column(name = "Distribution_Principle")
	public String getDistributionPrinciple() {
		return this.distributionPrinciple;
	}

	public void setDistributionPrinciple(String distributionPrinciple) {
		this.distributionPrinciple = distributionPrinciple;
	}

	@Column(name = "Begin_Time", length = 23)
	public Timestamp getBeginTime() {
		return this.beginTime;
	}

	public void setBeginTime(Timestamp beginTime) {
		this.beginTime = beginTime;
	}

	@Column(name = "End_Time", length = 23)
	public Timestamp getEndTime() {
		return this.endTime;
	}

	public void setEndTime(Timestamp endTime) {
		this.endTime = endTime;
	}

	@Column(name = "Follow_Certificate", length = 50)
	public String getFollowCertificate() {
		return this.followCertificate;
	}

	public void setFollowCertificate(String followCertificate) {
		this.followCertificate = followCertificate;
	}

}