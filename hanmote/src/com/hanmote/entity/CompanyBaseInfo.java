package com.hanmote.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * 公司概况信息实体类  
 * @author Administrator
 *
 */
@Entity
@Table(name="org_company_basicinfo")
public class CompanyBaseInfo {
	private int ID;
	//供应商中文名
	private String supplierChineseName;
	//供应商英文名
	private String supplierEnglishName;
	//企业性质  国有企业 私营企业  集体企业 股份合作制企业 联营企业  有限责任公司
	private String companyProperty;
	//公司曾用名
	private String companyUsedName;
	//注册国家
	private String companyRegisterCountry;
	
	private String companyWebsite;
	private String companyCode;
	private Date companyRegisterDate;
	private String companyRepresent;
	private int isListed;    
	private String stockCode;
	private int isExport;
	
	@Id
	@GeneratedValue
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getSupplierChineseName() {
		return supplierChineseName;
	}
	public void setSupplierChineseName(String supplierChineseName) {
		this.supplierChineseName = supplierChineseName;
	}
	public String getSupplierEnglishName() {
		return supplierEnglishName;
	}
	public void setSupplierEnglishName(String supplierEnglishName) {
		this.supplierEnglishName = supplierEnglishName;
	}
	public String getCompanyProperty() {
		return companyProperty;
	}
	public void setCompanyProperty(String companyProperty) {
		this.companyProperty = companyProperty;
	}
	public String getCompanyUsedName() {
		return companyUsedName;
	}
	public void setCompanyUsedName(String companyUsedName) {
		this.companyUsedName = companyUsedName;
	}
	public String getCompanyRegisterCountry() {
		return companyRegisterCountry;
	}
	public void setCompanyRegisterCountry(String companyRegisterCountry) {
		this.companyRegisterCountry = companyRegisterCountry;
	}
	public String getCompanyWebsite() {
		return companyWebsite;
	}
	public void setCompanyWebsite(String companyWebsite) {
		this.companyWebsite = companyWebsite;
	}
	public String getCompanyCode() {
		return companyCode;
	}
	public void setCompanyCode(String companyCode) {
		this.companyCode = companyCode;
	}
	//@Temporal(TemporalType.TIMESTAMP) 会得到形如'HH:MM:SS' 格式的日期
	//@Temporal(TemporalType.TIME) 会得到形如'HH:MM:SS' 
	//@Temporal(TemporalType.DATE) 会得到形如'yyyy-MM-dd' 格式的日期。
	@Temporal(TemporalType.DATE) 
	public Date getCompanyRegisterDate() {
		return companyRegisterDate;
	}
	public void setCompanyRegisterDate(Date companyRegisterDate) {
		this.companyRegisterDate = companyRegisterDate;
	}
	public String getCompanyRepresent() {
		return companyRepresent;
	}
	public void setCompanyRepresent(String companyRepresent) {
		this.companyRepresent = companyRepresent;
	}
	public int getIsListed() {
		return isListed;
	}
	public void setIsListed(int isListed) {
		this.isListed = isListed;
	}
	public String getStockCode() {
		return stockCode;
	}
	public void setStockCode(String stockCode) {
		this.stockCode = stockCode;
	}
	public int getIsExport() {
		return isExport;
	}
	public void setIsExport(int isExport) {
		this.isExport = isExport;
	}
	
	
}
