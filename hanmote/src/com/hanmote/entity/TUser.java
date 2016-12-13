package com.hanmote.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "t_user", schema = "dbo")
public class TUser implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	// Fields

	private String id;
	private OrganizationInfo organizationInfo;
	private String userName;
	private String password;

	// Constructors

	/** default constructor */
	public TUser() {
	}

	/** minimal constructor */
	public TUser(String id) {
		this.id = id;
	}

	/** full constructor */
	public TUser(String id, OrganizationInfo organizationInfo,
			String userName, String password) {
		this.id = id;
		this.organizationInfo = organizationInfo;
		this.userName = userName;
		this.password = password;
	}

	// Property accessors
	@Id
	@Column(name = "id", unique = true, nullable = false)
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "baseinfoId")
	public OrganizationInfo getOrganizationInfo() {
		return this.organizationInfo;
	}

	public void setOrganizationInfo(OrganizationInfo organizationInfo) {
		this.organizationInfo = organizationInfo;
	}

	@Column(name = "userName")
	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Column(name = "password")
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}