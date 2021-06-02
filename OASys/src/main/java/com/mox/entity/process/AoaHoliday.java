package com.mox.entity.process;

import javax.persistence.*;

@Table(name = "`aoa_holiday`")
public class AoaHoliday {
    @Id
    @Column(name = "`holiday_id`")
    @GeneratedValue(generator = "JDBC")
    private Long holidayId;

    @Column(name = "`leave_days`")
    private Integer leaveDays;

    @Column(name = "`type_id`")
    private Long typeId;

    @Column(name = "`pro_id`")
    private Long proId;

    @Column(name = "`manager_advice`")
    private String managerAdvice;

    @Column(name = "`personnel_advice`")
    private String personnelAdvice;

    /**
     * @return holiday_id
     */
    public Long getHolidayId() {
        return holidayId;
    }

    /**
     * @param holidayId
     */
    public void setHolidayId(Long holidayId) {
        this.holidayId = holidayId;
    }

    /**
     * @return leave_days
     */
    public Integer getLeaveDays() {
        return leaveDays;
    }

    /**
     * @param leaveDays
     */
    public void setLeaveDays(Integer leaveDays) {
        this.leaveDays = leaveDays;
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
}