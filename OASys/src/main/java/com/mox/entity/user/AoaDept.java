package com.mox.entity.user;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`aoa_dept`")
public class AoaDept {
    @Id
    @Column(name = "`dept_id`")
    @GeneratedValue(generator = "JDBC")
    private Long deptId;

    @Column(name = "`dept_addr`")
    private String deptAddr;

    @Column(name = "`dept_fax`")
    private String deptFax;

    @Column(name = "`dept_name`")
    private String deptName;

    @Column(name = "`dept_tel`")
    private String deptTel;

    @Column(name = "`email`")
    private String email;

    @Column(name = "`deptmanager`")
    private Long deptmanager;

    @Column(name = "`end_time`")
    private Date endTime;

    @Column(name = "`start_time`")
    private Date startTime;

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
     * @return dept_addr
     */
    public String getDeptAddr() {
        return deptAddr;
    }

    /**
     * @param deptAddr
     */
    public void setDeptAddr(String deptAddr) {
        this.deptAddr = deptAddr;
    }

    /**
     * @return dept_fax
     */
    public String getDeptFax() {
        return deptFax;
    }

    /**
     * @param deptFax
     */
    public void setDeptFax(String deptFax) {
        this.deptFax = deptFax;
    }

    /**
     * @return dept_name
     */
    public String getDeptName() {
        return deptName;
    }

    /**
     * @param deptName
     */
    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    /**
     * @return dept_tel
     */
    public String getDeptTel() {
        return deptTel;
    }

    /**
     * @param deptTel
     */
    public void setDeptTel(String deptTel) {
        this.deptTel = deptTel;
    }

    /**
     * @return email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return deptmanager
     */
    public Long getDeptmanager() {
        return deptmanager;
    }

    /**
     * @param deptmanager
     */
    public void setDeptmanager(Long deptmanager) {
        this.deptmanager = deptmanager;
    }

    /**
     * @return end_time
     */
    public Date getEndTime() {
        return endTime;
    }

    /**
     * @param endTime
     */
    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    /**
     * @return start_time
     */
    public Date getStartTime() {
        return startTime;
    }

    /**
     * @param startTime
     */
    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }
}