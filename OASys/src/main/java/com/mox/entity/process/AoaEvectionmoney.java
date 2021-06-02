package com.mox.entity.process;

import javax.persistence.*;

@Table(name = "`aoa_evectionmoney`")
public class AoaEvectionmoney {
    @Id
    @Column(name = "`evectionmoney_id`")
    @GeneratedValue(generator = "JDBC")
    private Long evectionmoneyId;

    @Column(name = "`financial_advice`")
    private String financialAdvice;

    @Column(name = "`manager_advice`")
    private String managerAdvice;

    @Column(name = "`money`")
    private Double money;

    @Column(name = "`name`")
    private String name;

    @Column(name = "`pro_id`")
    private Long proId;

    @Column(name = "`pro`")
    private Integer pro;

    /**
     * @return evectionmoney_id
     */
    public Long getEvectionmoneyId() {
        return evectionmoneyId;
    }

    /**
     * @param evectionmoneyId
     */
    public void setEvectionmoneyId(Long evectionmoneyId) {
        this.evectionmoneyId = evectionmoneyId;
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
     * @return money
     */
    public Double getMoney() {
        return money;
    }

    /**
     * @param money
     */
    public void setMoney(Double money) {
        this.money = money;
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
     * @return pro
     */
    public Integer getPro() {
        return pro;
    }

    /**
     * @param pro
     */
    public void setPro(Integer pro) {
        this.pro = pro;
    }
}