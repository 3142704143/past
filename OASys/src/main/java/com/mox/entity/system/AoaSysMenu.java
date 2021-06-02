package com.mox.entity.system;

import javax.persistence.*;

import com.mox.entity.role.AoaRolePowerList;

@Table(name = "`aoa_sys_menu`")
public class AoaSysMenu {
    @Id
    @Column(name = "`menu_id`")
    @GeneratedValue(generator = "JDBC")
    private Long menuId;

    @Column(name = "`is_show`")
    private Integer isShow;

    @Column(name = "`menu_grade`")
    private Integer menuGrade;

    @Column(name = "`menu_icon`")
    private String menuIcon;

    @Column(name = "`menu_name`")
    private String menuName;

    @Column(name = "`menu_url`")
    private String menuUrl;

    @Column(name = "`parent_id`")
    private Long parentId;

    @Column(name = "`sort_id`")
    private Integer sortId;

    public AoaSysMenu(Long id) {
		this.menuId = id;
	}
    
	public AoaSysMenu() {
		super();
		// TODO Auto-generated constructor stub
	}

	private AoaRolePowerList aoarolepowerlists;
	
	
	public AoaRolePowerList getAoarolepowerlists() {
		return aoarolepowerlists;
	}

	public void setAoarolepowerlists(AoaRolePowerList aoarolepowerlists) {
		this.aoarolepowerlists = aoarolepowerlists;
	}

	/**
     * @return menu_id
     */
    public Long getMenuId() {
        return menuId;
    }

    /**
     * @param menuId
     */
    public void setMenuId(Long menuId) {
        this.menuId = menuId;
    }

    /**
     * @return is_show
     */
    public Integer getIsShow() {
        return isShow;
    }

    /**
     * @param isShow
     */
    public void setIsShow(Integer isShow) {
        this.isShow = isShow;
    }

    /**
     * @return menu_grade
     */
    public Integer getMenuGrade() {
        return menuGrade;
    }

    /**
     * @param menuGrade
     */
    public void setMenuGrade(Integer menuGrade) {
        this.menuGrade = menuGrade;
    }

    /**
     * @return menu_icon
     */
    public String getMenuIcon() {
        return menuIcon;
    }

    /**
     * @param menuIcon
     */
    public void setMenuIcon(String menuIcon) {
        this.menuIcon = menuIcon;
    }

    /**
     * @return menu_name
     */
    public String getMenuName() {
        return menuName;
    }

    /**
     * @param menuName
     */
    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    /**
     * @return menu_url
     */
    public String getMenuUrl() {
        return menuUrl;
    }

    /**
     * @param menuUrl
     */
    public void setMenuUrl(String menuUrl) {
        this.menuUrl = menuUrl;
    }

    /**
     * @return parent_id
     */
    public Long getParentId() {
        return parentId;
    }

    /**
     * @param parentId
     */
    public void setParentId(Long parentId) {
        this.parentId = parentId;
    }

    /**
     * @return sort_id
     */
    public Integer getSortId() {
        return sortId;
    }

    @Override
	public String toString() {
		return "AoaSysMenu [menuId=" + menuId + ", isShow=" + isShow + ", menuGrade=" + menuGrade + ", menuIcon="
				+ menuIcon + ", menuName=" + menuName + ", menuUrl=" + menuUrl + ", parentId=" + parentId + ", sortId="
				+ sortId + "]";
	}

	/**
     * @param sortId
     */
    public void setSortId(Integer sortId) {
        this.sortId = sortId;
    }
}