package com.mox.entity.user;

import java.util.Date;
import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;

import com.mox.entity.role.AoaRole;

@Table(name = "`aoa_user`")
public class AoaUser {
    @Id
    @Column(name = "`user_id`")
    @GeneratedValue(generator = "JDBC")
    private Long userId;

    @Column(name = "`address`")
    private String address;

    @Column(name = "`bank`")
    private String bank;

    @Column(name = "`birth`")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birth;

    @Column(name = "`eamil`")
    private String eamil;

    @Column(name = "`father_id`")
    private Long fatherId;

    @Column(name = "`hire_time`")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date hireTime;

    @Column(name = "`user_idcard`")
    private String userIdcard;

    @Column(name = "`img_path`")
    private String imgPath;

    @Column(name = "`is_lock`")
    private Integer isLock;

    @Column(name = "`last_login_ip`")
    private String lastLoginIp;

    @Column(name = "`last_login_time`")
    private Date lastLoginTime;

    @Column(name = "`modify_time`")
    private Date modifyTime;

    @Column(name = "`modify_user_id`")
    private Long modifyUserId;

    @Column(name = "`password`")
    private String password;

    @Column(name = "`real_name`")
    private String realName;

    @Column(name = "`salary`")
    private Float salary;

    @Column(name = "`user_school`")
    private String userSchool;

    @Column(name = "`sex`")
    private String sex;

    @Column(name = "`theme_skin`")
    private String themeSkin;

    @Column(name = "`user_edu`")
    private String userEdu;

    @Column(name = "`user_name`")
    private String userName;

    @Column(name = "`user_sign`")
    private String userSign;

    @Column(name = "`user_tel`")
    private String userTel;

    @Column(name = "`dept_id`")
    private Long deptId;

    @Column(name = "`position_id`")
    private Long positionId;

    @Column(name = "`role_id`")
    private Long roleId;

    @Column(name = "`superman`")
    private Integer superman;

    @Column(name = "`holiday`")
    private Integer holiday;

    @Column(name = "`pinyin`")
    private String pinyin;
    
    //添加自定义属性
    @Transient
    private String deptName;
    public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	
	//添加自定义属性
    @Transient
    private String name;
    
    public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	//添加自定义属性
	@Transient
	private String positionName;
	
	public String getPositionName() {
		return positionName;
	}
	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}

	//配置用户跟部门的多对一关系
    private AoaDept dept;
    public AoaDept getDept() {
		return dept;
	}
	public void setDept(AoaDept dept) {
		this.dept = dept;
	}

	//配置用户跟职位的多对一关系
	private AoaPosition position;
	public AoaPosition getPosition() {
		return position;
	}
	public void setPosition(AoaPosition position) {
		this.position = position;
	}

	private AoaRole aoarole;
    
    public AoaRole getAoarole() {
		return aoarole;
	}

	public void setAoarole(AoaRole aoarole) {
		this.aoarole = aoarole;
	}

	/**
     * @return user_id
     */
    public Long getUserId() {
        return userId;
    }

    /**
     * @param userId
     */
    public void setUserId(Long userId) {
        this.userId = userId;
    }

    /**
     * @return address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return bank
     */
    public String getBank() {
        return bank;
    }

    /**
     * @param bank
     */
    public void setBank(String bank) {
        this.bank = bank;
    }

    /**
     * @return birth
     */
    public Date getBirth() {
        return birth;
    }

    /**
     * @param birth
     */
    public void setBirth(Date birth) {
        this.birth = birth;
    }

    /**
     * @return eamil
     */
    public String getEamil() {
        return eamil;
    }

    /**
     * @param eamil
     */
    public void setEamil(String eamil) {
        this.eamil = eamil;
    }

    /**
     * @return father_id
     */
    public Long getFatherId() {
        return fatherId;
    }

    /**
     * @param fatherId
     */
    public void setFatherId(Long fatherId) {
        this.fatherId = fatherId;
    }

    /**
     * @return hire_time
     */
    public Date getHireTime() {
        return hireTime;
    }

    /**
     * @param hireTime
     */
    public void setHireTime(Date hireTime) {
        this.hireTime = hireTime;
    }

    /**
     * @return user_idcard
     */
    public String getUserIdcard() {
        return userIdcard;
    }

    /**
     * @param userIdcard
     */
    public void setUserIdcard(String userIdcard) {
        this.userIdcard = userIdcard;
    }

    /**
     * @return img_path
     */
    public String getImgPath() {
        return imgPath;
    }

    /**
     * @param imgPath
     */
    public void setImgPath(String imgPath) {
        this.imgPath = imgPath;
    }

    /**
     * @return is_lock
     */
    public Integer getIsLock() {
        return isLock;
    }

    /**
     * @param isLock
     */
    public void setIsLock(Integer isLock) {
        this.isLock = isLock;
    }

    /**
     * @return last_login_ip
     */
    public String getLastLoginIp() {
        return lastLoginIp;
    }

    /**
     * @param lastLoginIp
     */
    public void setLastLoginIp(String lastLoginIp) {
        this.lastLoginIp = lastLoginIp;
    }

    /**
     * @return last_login_time
     */
    public Date getLastLoginTime() {
        return lastLoginTime;
    }

    /**
     * @param lastLoginTime
     */
    public void setLastLoginTime(Date lastLoginTime) {
        this.lastLoginTime = lastLoginTime;
    }

    /**
     * @return modify_time
     */
    public Date getModifyTime() {
        return modifyTime;
    }

    /**
     * @param modifyTime
     */
    public void setModifyTime(Date modifyTime) {
        this.modifyTime = modifyTime;
    }

    /**
     * @return modify_user_id
     */
    public Long getModifyUserId() {
        return modifyUserId;
    }

    /**
     * @param modifyUserId
     */
    public void setModifyUserId(Long modifyUserId) {
        this.modifyUserId = modifyUserId;
    }

    /**
     * @return password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return real_name
     */
    public String getRealName() {
        return realName;
    }

    /**
     * @param realName
     */
    public void setRealName(String realName) {
        this.realName = realName;
    }

    /**
     * @return salary
     */
    public Float getSalary() {
        return salary;
    }

    /**
     * @param salary
     */
    public void setSalary(Float salary) {
        this.salary = salary;
    }

    /**
     * @return user_school
     */
    public String getUserSchool() {
        return userSchool;
    }

    /**
     * @param userSchool
     */
    public void setUserSchool(String userSchool) {
        this.userSchool = userSchool;
    }

    /**
     * @return sex
     */
    public String getSex() {
        return sex;
    }

    /**
     * @param sex
     */
    public void setSex(String sex) {
        this.sex = sex;
    }

    /**
     * @return theme_skin
     */
    public String getThemeSkin() {
        return themeSkin;
    }

    /**
     * @param themeSkin
     */
    public void setThemeSkin(String themeSkin) {
        this.themeSkin = themeSkin;
    }

    /**
     * @return user_edu
     */
    public String getUserEdu() {
        return userEdu;
    }

    /**
     * @param userEdu
     */
    public void setUserEdu(String userEdu) {
        this.userEdu = userEdu;
    }

    /**
     * @return user_name
     */
    public String getUserName() {
        return userName;
    }

    /**
     * @param userName
     */
    public void setUserName(String userName) {
        this.userName = userName;
    }

    /**
     * @return user_sign
     */
    public String getUserSign() {
        return userSign;
    }

    /**
     * @param userSign
     */
    public void setUserSign(String userSign) {
        this.userSign = userSign;
    }

    /**
     * @return user_tel
     */
    public String getUserTel() {
        return userTel;
    }

    /**
     * @param userTel
     */
    public void setUserTel(String userTel) {
        this.userTel = userTel;
    }

    /**
     * @return dept_id
     */
    public Long getDeptId() {
        return deptId;
    }

    /**
     * @param deptId
     */
    public void setDeptId(Long deptId) {
        this.deptId = deptId;
    }

    /**
     * @return position_id
     */
    public Long getPositionId() {
        return positionId;
    }

    /**
     * @param positionId
     */
    public void setPositionId(Long positionId) {
        this.positionId = positionId;
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
     * @return superman
     */
    public Integer getSuperman() {
        return superman;
    }

    /**
     * @param superman
     */
    public void setSuperman(Integer superman) {
        this.superman = superman;
    }

    /**
     * @return holiday
     */
    public Integer getHoliday() {
        return holiday;
    }

    /**
     * @param holiday
     */
    public void setHoliday(Integer holiday) {
        this.holiday = holiday;
    }

    /**
     * @return pinyin
     */
    public String getPinyin() {
        return pinyin;
    }

    /**
     * @param pinyin
     */
    public void setPinyin(String pinyin) {
        this.pinyin = pinyin;
    }

	@Override
	public String toString() {
		return "AoaUser [userId=" + userId + ", address=" + address + ", bank=" + bank + ", birth=" + birth + ", eamil="
				+ eamil + ", fatherId=" + fatherId + ", hireTime=" + hireTime + ", userIdcard=" + userIdcard
				+ ", imgPath=" + imgPath + ", isLock=" + isLock + ", lastLoginIp=" + lastLoginIp + ", lastLoginTime="
				+ lastLoginTime + ", modifyTime=" + modifyTime + ", modifyUserId=" + modifyUserId + ", password="
				+ password + ", realName=" + realName + ", salary=" + salary + ", userSchool=" + userSchool + ", sex="
				+ sex + ", themeSkin=" + themeSkin + ", userEdu=" + userEdu + ", userName=" + userName + ", userSign="
				+ userSign + ", userTel=" + userTel + ", deptId=" + deptId + ", positionId=" + positionId + ", roleId="
				+ roleId + ", superman=" + superman + ", holiday=" + holiday + ", pinyin=" + pinyin + ", deptName="
				+ deptName + ", name=" + name + ", positionName=" + positionName + ", dept=" + dept + ", position="
				+ position + ", aoarole=" + aoarole + "]";
	}
    
}