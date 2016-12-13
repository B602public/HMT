package com.hanmote.entity;

import java.sql.Timestamp;
import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 
 */
@Entity
@Table(name = "Agreement_Contract", schema = "dbo")
public class TAgreementContract implements java.io.Serializable {

	// Fields

	private static final long serialVersionUID = 1L;
	private AgreementContractId id;
	private String supplierId;
	private String agreementContractType;
	private String purchaseGroup;
	private String purchaseOrganization;
	private Timestamp createTime;
	private String createrId;
	private String status;
	private String factory;
	private String storageLocation;
	private Timestamp beginTime;
	private Timestamp endTime;
	private String itTermCode;
	private String itTermText;
	private String paymentType;
	private Integer days1;
	private Double discountRate1;
	private Integer days2;
	private Double discountRate2;
	private Integer days3;
	private Double targetValue;
	private String currencyType;
	private Double exchangeRate;

	// Constructors

	/** default constructor */
	public TAgreementContract() {
	}

	/** minimal constructor */
	public TAgreementContract(AgreementContractId id, String supplierId,
			String agreementContractType, String purchaseGroup,
			String purchaseOrganization, Timestamp createTime,
			String createrId, String status, String factory,
			Timestamp beginTime, Timestamp endTime) {
		this.id = id;
		this.supplierId = supplierId;
		this.agreementContractType = agreementContractType;
		this.purchaseGroup = purchaseGroup;
		this.purchaseOrganization = purchaseOrganization;
		this.createTime = createTime;
		this.createrId = createrId;
		this.status = status;
		this.factory = factory;
		this.beginTime = beginTime;
		this.endTime = endTime;
	}

	/** full constructor */
	public TAgreementContract(AgreementContractId id, String supplierId,
			String agreementContractType, String purchaseGroup,
			String purchaseOrganization, Timestamp createTime,
			String createrId, String status, String factory,
			String storageLocation, Timestamp beginTime, Timestamp endTime,
			String itTermCode, String itTermText, String paymentType,
			Integer days1, Double discountRate1, Integer days2,
			Double discountRate2, Integer days3, Double targetValue,
			String currencyType, Double exchangeRate) {
		this.id = id;
		this.supplierId = supplierId;
		this.agreementContractType = agreementContractType;
		this.purchaseGroup = purchaseGroup;
		this.purchaseOrganization = purchaseOrganization;
		this.createTime = createTime;
		this.createrId = createrId;
		this.status = status;
		this.factory = factory;
		this.storageLocation = storageLocation;
		this.beginTime = beginTime;
		this.endTime = endTime;
		this.itTermCode = itTermCode;
		this.itTermText = itTermText;
		this.paymentType = paymentType;
		this.days1 = days1;
		this.discountRate1 = discountRate1;
		this.days2 = days2;
		this.discountRate2 = discountRate2;
		this.days3 = days3;
		this.targetValue = targetValue;
		this.currencyType = currencyType;
		this.exchangeRate = exchangeRate;
	}

	// Property accessors
	@EmbeddedId
	@AttributeOverrides({
			@AttributeOverride(name = "agreementContractId", column = @Column(name = "Agreement_Contract_ID", nullable = false)),
			@AttributeOverride(name = "agreementContractVersion", column = @Column(name = "Agreement_Contract_Version", nullable = false)) })
	public AgreementContractId getId() {
		return this.id;
	}

	public void setId(AgreementContractId id) {
		this.id = id;
	}

	@Column(name = "Supplier_ID", nullable = false)
	public String getSupplierId() {
		return this.supplierId;
	}

	public void setSupplierId(String supplierId) {
		this.supplierId = supplierId;
	}

	@Column(name = "Agreement_Contract_Type", nullable = false)
	public String getAgreementContractType() {
		return this.agreementContractType;
	}

	public void setAgreementContractType(String agreementContractType) {
		this.agreementContractType = agreementContractType;
	}

	@Column(name = "Purchase_Group", nullable = false)
	public String getPurchaseGroup() {
		return this.purchaseGroup;
	}

	public void setPurchaseGroup(String purchaseGroup) {
		this.purchaseGroup = purchaseGroup;
	}

	@Column(name = "Purchase_Organization", nullable = false)
	public String getPurchaseOrganization() {
		return this.purchaseOrganization;
	}

	public void setPurchaseOrganization(String purchaseOrganization) {
		this.purchaseOrganization = purchaseOrganization;
	}

	@Column(name = "Create_Time", nullable = false, length = 23)
	public Timestamp getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}

	@Column(name = "Creater_ID", nullable = false)
	public String getCreaterId() {
		return this.createrId;
	}

	public void setCreaterId(String createrId) {
		this.createrId = createrId;
	}

	@Column(name = "Status", nullable = false)
	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Column(name = "Factory", nullable = false)
	public String getFactory() {
		return this.factory;
	}

	public void setFactory(String factory) {
		this.factory = factory;
	}

	@Column(name = "Storage_Location")
	public String getStorageLocation() {
		return this.storageLocation;
	}

	public void setStorageLocation(String storageLocation) {
		this.storageLocation = storageLocation;
	}

	@Column(name = "Begin_Time", nullable = false, length = 23)
	public Timestamp getBeginTime() {
		return this.beginTime;
	}

	public void setBeginTime(Timestamp beginTime) {
		this.beginTime = beginTime;
	}

	@Column(name = "End_Time", nullable = false, length = 23)
	public Timestamp getEndTime() {
		return this.endTime;
	}

	public void setEndTime(Timestamp endTime) {
		this.endTime = endTime;
	}

	@Column(name = "IT_Term_Code")
	public String getItTermCode() {
		return this.itTermCode;
	}

	public void setItTermCode(String itTermCode) {
		this.itTermCode = itTermCode;
	}

	@Column(name = "IT_Term_Text")
	public String getItTermText() {
		return this.itTermText;
	}

	public void setItTermText(String itTermText) {
		this.itTermText = itTermText;
	}

	@Column(name = "Payment_Type")
	public String getPaymentType() {
		return this.paymentType;
	}

	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}

	@Column(name = "Days1")
	public Integer getDays1() {
		return this.days1;
	}

	public void setDays1(Integer days1) {
		this.days1 = days1;
	}

	@Column(name = "Discount_Rate1", precision = 18, scale = 5)
	public Double getDiscountRate1() {
		return this.discountRate1;
	}

	public void setDiscountRate1(Double discountRate1) {
		this.discountRate1 = discountRate1;
	}

	@Column(name = "Days2")
	public Integer getDays2() {
		return this.days2;
	}

	public void setDays2(Integer days2) {
		this.days2 = days2;
	}

	@Column(name = "Discount_Rate2", precision = 18, scale = 5)
	public Double getDiscountRate2() {
		return this.discountRate2;
	}

	public void setDiscountRate2(Double discountRate2) {
		this.discountRate2 = discountRate2;
	}

	@Column(name = "Days3")
	public Integer getDays3() {
		return this.days3;
	}

	public void setDays3(Integer days3) {
		this.days3 = days3;
	}

	@Column(name = "Target_Value", precision = 18, scale = 5)
	public Double getTargetValue() {
		return this.targetValue;
	}

	public void setTargetValue(Double targetValue) {
		this.targetValue = targetValue;
	}

	@Column(name = "Currency_Type")
	public String getCurrencyType() {
		return this.currencyType;
	}

	public void setCurrencyType(String currencyType) {
		this.currencyType = currencyType;
	}

	@Column(name = "Exchange_Rate", precision = 18, scale = 5)
	public Double getExchangeRate() {
		return this.exchangeRate;
	}

	public void setExchangeRate(Double exchangeRate) {
		this.exchangeRate = exchangeRate;
	}

}