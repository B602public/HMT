package com.hanmote.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * 联系人实体类
 */
@Entity
@Table(name = "Org_contacts", schema = "dbo")
public class OrgContacts implements java.io.Serializable {

	// Fields

	private static final long serialVersionUID = 1L;
	private Integer conid;
	private String contactMan;
	private String phonenum1;
	private String phonenum2;
	private String email;
	private Set<OrganizationInfo> organizationInfos = new HashSet<OrganizationInfo>(
			0);

	// Constructors

	/** default constructor */
	public OrgContacts() {
	}

	/** full constructor */
	public OrgContacts(String contactMan, String phonenum1, String phonenum2,
			String email, Set<OrganizationInfo> organizationInfos) {
		this.contactMan = contactMan;
		this.phonenum1 = phonenum1;
		this.phonenum2 = phonenum2;
		this.email = email;
		this.organizationInfos = organizationInfos;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "conid", unique = true, nullable = false)
	public Integer getConid() {
		return this.conid;
	}

	public void setConid(Integer conid) {
		this.conid = conid;
	}

	@Column(name = "contactMan")
	public String getContactMan() {
		return this.contactMan;
	}

	public void setContactMan(String contactMan) {
		this.contactMan = contactMan;
	}

	@Column(name = "phonenum1")
	public String getPhonenum1() {
		return this.phonenum1;
	}

	public void setPhonenum1(String phonenum1) {
		this.phonenum1 = phonenum1;
	}

	@Column(name = "phonenum2")
	public String getPhonenum2() {
		return this.phonenum2;
	}

	public void setPhonenum2(String phonenum2) {
		this.phonenum2 = phonenum2;
	}

	@Column(name = "email")
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "orgContacts")
	public Set<OrganizationInfo> getOrgCompanyBaseinfos() {
		return this.organizationInfos;
	}

	public void setOrgCompanyBaseinfos(
			Set<OrganizationInfo> organizationInfos) {
		this.organizationInfos = organizationInfos;
	}

}