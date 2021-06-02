package com.mox.entity.process;

import javax.persistence.*;

@Table(name = "`aoa_resign`")
public class AoaResign {
    @Id
    @Column(name = "`resign_id`")
    @GeneratedValue(generator = "JDBC")
    private Long resignId;

    @Column(name = "`financial_advice`")
    private String financialAdvice;

    @Column(name = "`is_finish`")
    private Boolean isFinish;

    @Column(name = "`nofinish`")
    private String nofinish;

    @Column(name = "`personnel_advice`")
    private String personnelAdvice;

    @Column(name = "`suggest`")
    private String suggest;

    @Column(name = "`hand_user`")
    private Long handUser;

    @Column(name = "`pro_id`")
    private Long proId;

    @Column(name = "`manager_advice`")
    private String managerAdvice;

    /**
     * @return resign_id
     */
    public Long getResignId() {
        return resignId;
    }

    /**
     * @param resignId
     */
    public void setResignId(Long resignId) {
        this.resignId = resignId;
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
     * @return is_finish
     */
    public Boolean getIsFinish() {
        return isFinish;
    }

    /**
     * @param isFinish
     */
    public void setIsFinish(Boolean isFinish) {
        this.isFinish = isFinish;
    }

    /**
     * @return nofinish
     */
    public String getNofinish() {
        return nofinish;
    }

    /**
     * @param nofinish
     */
    public void setNofinish(String nofinish) {
        this.nofinish = nofinish;
    }

    /**
     * @return personnel_advice
     */
    public String getPersonnelAdvice() {
        return personnelAdvice;
    }

    /**
     * @param personnelAdvice
     */
    public void setPersonnelAdvice(String personnelAdvice) {
        this.personnelAdvice = personnelAdvice;
    }

    /**
     * @return suggest
     */
    public String getSuggest() {
        return suggest;
    }

    /**
     * @param suggest
     */
    public void setSuggest(String suggest) {
        this.suggest = suggest;
    }

    /**
     * @return hand_user
     */
    public Long getHandUser() {
        return handUser;
    }

    /**
     * @param handUser
     */
    public void setHandUser(Long handUser) {
        this.handUser = handUser;
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
}