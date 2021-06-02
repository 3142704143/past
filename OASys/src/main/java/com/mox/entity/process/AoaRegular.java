package com.mox.entity.process;

import javax.persistence.*;

@Table(name = "`aoa_regular`")
public class AoaRegular {
    @Id
    @Column(name = "`regular_id`")
    @GeneratedValue(generator = "JDBC")
    private Long regularId;

    @Column(name = "`advice`")
    private String advice;

    @Column(name = "`deficiency`")
    private String deficiency;

    @Column(name = "`dobetter`")
    private String dobetter;

    @Column(name = "`experience`")
    private String experience;

    @Column(name = "`personnel_advice`")
    private String personnelAdvice;

    @Column(name = "`pullulate`")
    private String pullulate;

    @Column(name = "`understand`")
    private String understand;

    @Column(name = "`pro_id`")
    private Long proId;

    @Column(name = "`manager_advice`")
    private String managerAdvice;

    @Column(name = "`days`")
    private Integer days;

    /**
     * @return regular_id
     */
    public Long getRegularId() {
        return regularId;
    }

    /**
     * @param regularId
     */
    public void setRegularId(Long regularId) {
        this.regularId = regularId;
    }

    /**
     * @return advice
     */
    public String getAdvice() {
        return advice;
    }

    /**
     * @param advice
     */
    public void setAdvice(String advice) {
        this.advice = advice;
    }

    /**
     * @return deficiency
     */
    public String getDeficiency() {
        return deficiency;
    }

    /**
     * @param deficiency
     */
    public void setDeficiency(String deficiency) {
        this.deficiency = deficiency;
    }

    /**
     * @return dobetter
     */
    public String getDobetter() {
        return dobetter;
    }

    /**
     * @param dobetter
     */
    public void setDobetter(String dobetter) {
        this.dobetter = dobetter;
    }

    /**
     * @return experience
     */
    public String getExperience() {
        return experience;
    }

    /**
     * @param experience
     */
    public void setExperience(String experience) {
        this.experience = experience;
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
     * @return pullulate
     */
    public String getPullulate() {
        return pullulate;
    }

    /**
     * @param pullulate
     */
    public void setPullulate(String pullulate) {
        this.pullulate = pullulate;
    }

    /**
     * @return understand
     */
    public String getUnderstand() {
        return understand;
    }

    /**
     * @param understand
     */
    public void setUnderstand(String understand) {
        this.understand = understand;
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

    /**
     * @return days
     */
    public Integer getDays() {
        return days;
    }

    /**
     * @param days
     */
    public void setDays(Integer days) {
        this.days = days;
    }
}