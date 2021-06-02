package entity;

import java.util.List;

/**
 * SysRole entity. @author MyEclipse Persistence Tools
 */

public class SysRole implements java.io.Serializable {

	// Fields

	private Integer roleId;
	private String roleName;
	private String roleDesc;
	private Integer roleFlag;

	private List<SysUser> users;
	private List<SysRight> rights;
	// Constructors

	
	/** default constructor */
	public SysRole() {
	}

	public List<SysUser> getUsers() {
		return users;
	}

	public void setUsers(List<SysUser> users) {
		this.users = users;
	}
	
	public List<SysRight> getRights() {
		return rights;
	}

	public void setRights(List<SysRight> rights) {
		this.rights = rights;
	}

	/** minimal constructor */
	public SysRole(String roleName) {
		this.roleName = roleName;
	}

	/** full constructor */
	public SysRole(String roleName, String roleDesc, Integer roleFlag) {
		this.roleName = roleName;
		this.roleDesc = roleDesc;
		this.roleFlag = roleFlag;
	}

	// Property accessors

	public Integer getRoleId() {
		return this.roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

	public String getRoleName() {
		return this.roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getRoleDesc() {
		return this.roleDesc;
	}

	public void setRoleDesc(String roleDesc) {
		this.roleDesc = roleDesc;
	}

	public Integer getRoleFlag() {
		return this.roleFlag;
	}

	public void setRoleFlag(Integer roleFlag) {
		this.roleFlag = roleFlag;
	}

	public SysRole(Integer roleId, String roleName, String roleDesc,
			Integer roleFlag, List<SysUser> users, List<SysRight> rights) {
		super();
		this.roleId = roleId;
		this.roleName = roleName;
		this.roleDesc = roleDesc;
		this.roleFlag = roleFlag;
		this.users = users;
		this.rights = rights;
	}

	@Override
	public String toString() {
		return "SysRole [rights=" + rights + ", roleDesc=" + roleDesc
				+ ", roleFlag=" + roleFlag + ", roleId=" + roleId
				+ ", roleName=" + roleName ;
	}
	
	
}