package com.mox.entity.process;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`aoa_bursement`")
public class AoaBursement {
    @Id
    @Column(name = "`bursement_id`")
    @GeneratedValue(generator = "JDBC")
    private Long bursementId;

    @Column(name = "`all_money`")
    private Double allMoney;

    @Column(name = "`allinvoices`")
    private Integer allinvoices;

    @Column(name = "`burse_time`")
    private Date burseTime;

    @Column(name = "`financial_advice`")
    private String financialAdvice;

    @Column(name = "`manager_advice`")
    private String managerAdvice;

    @Column(name = "`name`")
    private String name;

    @Column(name = "`type_id`")
    private Long typeId;

    @Column(name = "`operation_name`")
    private Long operationName;

    @Column(name = "`pro_id`")
    private Long proId;

    @Column(name = "`user_name`")
    private Long userName;

    /**
     * @return bursement_id
     */
    public Long getBursementId() {
        return bursementId;
    }

    /**
     * @param bursementId
     */
    public void setBursementId(Long bursementId) {
        this.bursementId = bursementId;
    }

    /**
     * @return all_money
     */
    public Double getAllMoney() {
        return allMoney;
    }

    /**
     * @param allMoney
     */
    public void setAllMoney(Double allMoney) {
        this.allMoney = allMoney;
    }

    /**
     * @return allinvoices
     */
    public Integer getAllinvoices() {
        return allinvoices;
    }

    /**
     * @param allinvoices
     */
    public void setAllinvoices(Integer allinvoices) {
        this.allinvoices = allinvoices;
    }

    /**
     * @return burse_time
     */
    public Date getBurseTime() {
        return burseTime;
    }

    /**
     * @param burseTime
     */
    public void setBurseTime(Date burseTime) {
        this.burseTime = burseTime;
    }

    /**
     * @return financial_advice
     */
    public String getFinancialAdvice() {
        return financialAdvice;
    }

    /**
     * @param financialAdvice
     */
    public void setFinancialAdvice(String financialAdvice) {
        this.financialAdvice = financialAdvice;
    }

    /**
     * @return manager_advice
     */
    public String getManagerAdvice() {
        return managerAdvice;
    }

    /**
     * @param managerAdvice
     */
    public void setManagerAdvice(String managerAdvice) {
        this.managerAdvice = managerAdvice;
    }

    /**
     * @return name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return type_id
     */
    public Long getTypeId() {
        return typeId;
    }

    /**
     * @param typeId
     */
    public void setTypeId(Long typeId) {
        this.typeId = typeId;
    }

    /**
     * @return operation_name
     */
    public Long getOperationName() {
        return operationName;
    }

    /**
     * @param operationName
     */
    public void setOperationName(Long operationName) {
        this.operationName = operationName;
    }

    /**
     * @return pro_id
     */
    public Long getProId() {
        return proId;
    }

    /**
     * @param proId
     */
    public void setProId(Long proId) {
        this.proId = proId;
    }

    /**
     * @return user_name
     */
    public Long getUserName() {
        return userName;
    }

    /**
     * @param userName
     */
    public void setUserName(Long userName) {
        this.userName = userName;
    }
}