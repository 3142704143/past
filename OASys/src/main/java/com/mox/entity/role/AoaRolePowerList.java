package com.mox.entity.role;

import javax.persistence.*;

import com.mox.entity.system.AoaSysMenu;

@Table(name = "`aoa_role_power_list`")
public class AoaRolePowerList {
    @Id
    @Column(name = "`pk_id`")
    @GeneratedValue(generator = "JDBC")
    private Long pkId;

    @Column(name = "`is_show`")
    private Integer isShow;

    @Column(name = "`menu_id`")
    private Long menuId;

    @Column(name = "`role_id`")
    private Long roleId;

    private AoaRole aoarole;
    public AoaRole getAoarole() {
		return aoarole;
	}
	public void setAoarole(AoaRole aoarole) {
		this.aoarole = aoarole;
	}

	private AoaSysMenu aoasysmenu;
	public AoaSysMenu getAoasysmenu() {
		return aoasysmenu;
	}
	public void setAoasysmenu(AoaSysMenu aoasysmenu) {
		this.aoasysmenu = aoasysmenu;
	}
	
	public AoaRolePowerList(Integer isShow, Long menuId, Long roleId) {
		super();
		this.isShow = isShow;
		this.menuId = menuId;
		this.roleId = roleId;
	}
	
	
	public AoaRolePowerList(Long roleId) {
		super();
		this.roleId = roleId;
	}
	public AoaRolePowerList() {
		super();
	}
	/**
     * @return pk_id
     */
    public Long getPkId() {
        return pkId;
    }

    /**
     * @param pkId
     */
    public void setPkId(Long pkId) {
        this.pkId = pkId;
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
     * @return role_id
     */
    public Long getRoleId() {
        return roleId;
    }

    /**
     * @param roleId
     */
    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }
	@Override
	public String toString() {
		return "AoaRolePowerList [pkId=" + pkId + ", isShow=" + isShow + ", menuId=" + menuId + ", roleId=" + roleId
				+ "]\n";
	}
    
    
}