package com.hanmote.entity;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Menu entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "Menu", schema = "dbo")
public class TMenu implements java.io.Serializable {

	// Fields

	private String mid;
	private TMenu menu;
	private String menutext;
	private String iconcls;
	private String url;
	private Set<TMenu> menus = new HashSet<TMenu>(0);

	// Constructors

	/** default constructor */
	public TMenu() {
	}

	/** minimal constructor */
	public TMenu(String mid) {
		this.mid = mid;
	}

	/** full constructor */
	public TMenu(String mid, TMenu menu, String menutext, String iconcls,
			String url, Set<TMenu> menus) {
		this.mid = mid;
		this.menu = menu;
		this.menutext = menutext;
		this.iconcls = iconcls;
		this.url = url;
		this.menus = menus;
	}

	// Property accessors
	@Id
	@Column(name = "mid", unique = true, nullable = false)
	public String getMid() {
		return this.mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "pid")
	public TMenu getMenu() {
		return this.menu;
	}

	public void setMenu(TMenu menu) {
		this.menu = menu;
	}

	@Column(name = "menutext")
	public String getMenutext() {
		return this.menutext;
	}

	public void setMenutext(String menutext) {
		this.menutext = menutext;
	}

	@Column(name = "iconcls")
	public String getIconcls() {
		return this.iconcls;
	}

	public void setIconcls(String iconcls) {
		this.iconcls = iconcls;
	}

	@Column(name = "url")
	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "menu")
	public Set<TMenu> getMenus() {
		return this.menus;
	}

	public void setMenus(Set<TMenu> menus) {
		this.menus = menus;
	}

}