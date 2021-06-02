package com.mox.entity.role;

import java.util.List;
import javax.persistence.*;
import com.mox.entity.user.AoaUser;

import tk.mybatis.mapper.annotation.KeySql;

@Table(name = "`aoa_role_`")
public class AoaRole {
    @Id
    @Column(name = "`role_id`")
    @GeneratedValue(generator = "JDBC")
    @KeySql(useGeneratedKeys = true)//针对添加操作时获取新插入数据的主键值
    private Long roleId;

    @Column(name = "`role_name`")
    private String roleName;

    @Column(name = "`role_value`")
    private Integer roleValue;

    
    private List<AoaUser> aoausers;
    public List<AoaUser> getAoausers() {
		return aoausers;
	}
	public void setAoausers(List<AoaUser> aoausers) {
		this.aoausers = aoausers;
	}

	public List<AoaRolePowerList> aoarolepowerlists;
	public List<AoaRolePowerList> getAoarolepowerlists() {
		return aoarolepowerlists;
	}
	public void setAoarolepowerlists(List<AoaRolePowerList> aoarolepowerlists) {
		this.aoarolepowerlists = aoarolepowerlists;
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

    /**
     * @return role_name
     */
    public String getRoleName() {
        return roleName;
    }

    /**
     * @param roleName
     */
    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    /**
     * @return role_value
     */
    public Integer getRoleValue() {
        return roleValue;
    }

    /**
     * @param roleValue
     */
    public void setRoleValue(Integer roleValue) {
        this.roleValue = roleValue;
    }

	@Override
	public String toString() {
		return "AoaRole [roleId=" + roleId + ", roleName=" + roleName + ", roleValue=" + roleValue + "]\n";
	}
    
}