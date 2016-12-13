package com.hanmote.pagemodel;

import java.sql.Timestamp;
import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

public class AgreementContract{

	private String agreementContractId;
	private Integer agreementContractVersion;
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
	private Page page = new Page();
	public String getAgreementContractId() {
		return agreementContractId;
	}
	public void setAgreementContractId(String agreementContractId) {
		this.agreementContractId = agreementContractId;
	}
	public Integer getAgreementContractVersion() {
		return agreementContractVersion;
	}
	public void setAgreementContractVersion(Integer agreementContractVersion) {
		this.agreementContractVersion = agreementContractVersion;
	}
	public String getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(String supplierId) {
		this.supplierId = supplierId;
	}
	public String getAgreementContractType() {
		return agreementContractType;
	}
	public void setAgreementContractType(String agreementContractType) {
		this.agreementContractType = agreementContractType;
	}
	public String getPurchaseGroup() {
		return purchaseGroup;
	}
	public void setPurchaseGroup(String purchaseGroup) {
		this.purchaseGroup = purchaseGroup;
	}
	public String getPurchaseOrganization() {
		return purchaseOrganization;
	}
	public void setPurchaseOrganization(String purchaseOrganization) {
		this.purchaseOrganization = purchaseOrganization;
	}
	public Timestamp getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}
	public String getCreaterId() {
		return createrId;
	}
	public void setCreaterId(String createrId) {
		this.createrId = createrId;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getFactory() {
		return factory;
	}
	public void setFactory(String factory) {
		this.factory = factory;
	}
	public String getStorageLocation() {
		return storageLocation;
	}
	public void setStorageLocation(String storageLocation) {
		this.storageLocation = storageLocation;
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
	public String getItTermCode() {
		return itTermCode;
	}
	public void setItTermCode(String itTermCode) {
		this.itTermCode = itTermCode;
	}
	public String getItTermText() {
		return itTermText;
	}
	public void setItTermText(String itTermText) {
		this.itTermText = itTermText;
	}
	public String getPaymentType() {
		return paymentType;
	}
	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}
	public Integer getDays1() {
		return days1;
	}
	public void setDays1(Integer days1) {
		this.days1 = days1;
	}
	public Double getDiscountRate1() {
		return discountRate1;
	}
	public void setDiscountRate1(Double discountRate1) {
		this.discountRate1 = discountRate1;
	}
	public Integer getDays2() {
		return days2;
	}
	public void setDays2(Integer days2) {
		this.days2 = days2;
	}
	public Double getDiscountRate2() {
		return discountRate2;
	}
	public void setDiscountRate2(Double discountRate2) {
		this.discountRate2 = discountRate2;
	}
	public Integer getDays3() {
		return days3;
	}
	public void setDays3(Integer days3) {
		this.days3 = days3;
	}
	public Double getTargetValue() {
		return targetValue;
	}
	public void setTargetValue(Double targetValue) {
		this.targetValue = targetValue;
	}
	public String getCurrencyType() {
		return currencyType;
	}
	public void setCurrencyType(String currencyType) {
		this.currencyType = currencyType;
	}
	public Double getExchangeRate() {
		return exchangeRate;
	}
	public void setExchangeRate(Double exchangeRate) {
		this.exchangeRate = exchangeRate;
	}
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	
}