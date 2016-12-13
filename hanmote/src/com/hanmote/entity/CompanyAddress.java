package com.hanmote.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 * 公司地址实体类  
 * @author Administrator
 *
 */
@Entity
@Table(name="org_company_address")
public class CompanyAddress {
	private int cID;
	private String country;
	private String city;
	private String doorNum;
	private String zipCode;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int getcID() {
		return cID;
	}
	public void setcID(int cID) {
		this.cID = cID;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDoorNum() {
		return doorNum;
	}
	public void setDoorNum(String doorNum) {
		this.doorNum = doorNum;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	
	
}
