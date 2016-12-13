package com.hanmote.entity;

import java.sql.Timestamp;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

/**
 * 组织信息实体类
 */
@Entity
@Table(name = "Org_company_baseinfo", schema = "dbo")
public class OrganizationInfo implements java.io.Serializable {

	// Fields

	private static final long serialVersionUID = 1L;
	private Integer id;
	private OrgContacts orgContacts;
	private String supplierChineseName;
	private String supplierEnglishName;
	private String companyProperty;
	private String companyUsedname;
	private String companyRegisterCountry;
	private String companyWebsite;
	private String companyCode;
	private Timestamp companyRegisterDate;
	private String companyRepresent;
	private Integer isListed;
	private String stockCode;
	private Integer isExport;
	private String country;
	private String city;
	private String doorNum;
	private String zipCode;

	// Constructors

	/** default constructor */
	public OrganizationInfo() {
	}

	/** minimal constructor */
	public OrganizationInfo(OrgContacts orgContacts,
			String supplierChineseName) {
		this.orgContacts = orgContacts;
		this.supplierChineseName = supplierChineseName;
	}

	/** full constructor */
	public OrganizationInfo(OrgContacts orgContacts,
			String supplierChineseName, String supplierEnglishName,
			String companyProperty, String companyUsedname,
			String companyRegisterCountry, String companyWebsite,
			String companyCode, Timestamp companyRegisterDate,
			String companyRepresent, Integer isListed, String stockCode,
			Integer isExport, String country, String city, String doorNum,
			String zipCode) {
		this.orgContacts = orgContacts;
		this.supplierChineseName = supplierChineseName;
		this.supplierEnglishName = supplierEnglishName;
		this.companyProperty = companyProperty;
		this.companyUsedname = companyUsedname;
		this.companyRegisterCountry = companyRegisterCountry;
		this.companyWebsite = companyWebsite;
		this.companyCode = companyCode;
		this.companyRegisterDate = companyRegisterDate;
		this.companyRepresent = companyRepresent;
		this.isListed = isListed;
		this.stockCode = stockCode;
		this.isExport = isExport;
		this.country = country;
		this.city = city;
		this.doorNum = doorNum;
		this.zipCode = zipCode;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@ManyToOne(cascade = CascadeType.ALL,fetch = FetchType.LAZY)
	@JoinColumn(name = "cid")
	public OrgContacts getOrgContacts() {
		return this.orgContacts;
	}

	public void setOrgContacts(OrgContacts orgContacts) {
		this.orgContacts = orgContacts;
	}

	@Column(name = "supplierChineseName", nullable = false)
	public String getSupplierChineseName() {
		return this.supplierChineseName;
	}

	public void setSupplierChineseName(String supplierChineseName) {
		this.supplierChineseName = supplierChineseName;
	}

	@Column(name = "supplierEnglishName")
	public String getSupplierEnglishName() {
		return this.supplierEnglishName;
	}

	public void setSupplierEnglishName(String supplierEnglishName) {
		this.supplierEnglishName = supplierEnglishName;
	}

	@Column(name = "companyProperty")
	public String getCompanyProperty() {
		return this.companyProperty;
	}

	public void setCompanyProperty(String companyProperty) {
		this.companyProperty = companyProperty;
	}

	@Column(name = "companyUsedname")
	public String getCompanyUsedname() {
		return this.companyUsedname;
	}

	public void setCompanyUsedname(String companyUsedname) {
		this.companyUsedname = companyUsedname;
	}

	@Column(name = "companyRegisterCountry")
	public String getCompanyRegisterCountry() {
		return this.companyRegisterCountry;
	}

	public void setCompanyRegisterCountry(String companyRegisterCountry) {
		this.companyRegisterCountry = companyRegisterCountry;
	}

	@Column(name = "companyWebsite")
	public String getCompanyWebsite() {
		return this.companyWebsite;
	}

	public void setCompanyWebsite(String companyWebsite) {
		this.companyWebsite = companyWebsite;
	}

	@Column(name = "companyCode")
	public String getCompanyCode() {
		return this.companyCode;
	}

	public void setCompanyCode(String companyCode) {
		this.companyCode = companyCode;
	}

	@Column(name = "companyRegisterDate", length = 23)
	public Timestamp getCompanyRegisterDate() {
		return this.companyRegisterDate;
	}

	public void setCompanyRegisterDate(Timestamp companyRegisterDate) {
		this.companyRegisterDate = companyRegisterDate;
	}

	@Column(name = "companyRepresent")
	public String getCompanyRepresent() {
		return this.companyRepresent;
	}

	public void setCompanyRepresent(String companyRepresent) {
		this.companyRepresent = companyRepresent;
	}

	@Column(name = "isListed")
	public Integer getIsListed() {
		return this.isListed;
	}

	public void setIsListed(Integer isListed) {
		this.isListed = isListed;
	}

	@Column(name = "stockCode")
	public String getStockCode() {
		return this.stockCode;
	}

	public void setStockCode(String stockCode) {
		this.stockCode = stockCode;
	}

	@Column(name = "isExport")
	public Integer getIsExport() {
		return this.isExport;
	}

	public void setIsExport(Integer isExport) {
		this.isExport = isExport;
	}

	@Column(name = "country")
	public String getCountry() {
		return this.country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	@Column(name = "city")
	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@Column(name = "doorNum")
	public String getDoorNum() {
		return this.doorNum;
	}

	public void setDoorNum(String doorNum) {
		this.doorNum = doorNum;
	}

	@Column(name = "zipCode")
	public String getZipCode() {
		return this.zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

}