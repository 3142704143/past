package com.mox.entity.process;

import javax.persistence.*;

@Table(name = "`aoa_evection`")
public class AoaEvection {
    @Id
    @Column(name = "`evection_id`")
    @GeneratedValue(generator = "JDBC")
    private Long evectionId;

    @Column(name = "`type_id`")
    private Long typeId;

    @Column(name = "`pro_id`")
    private Long proId;

    @Column(name = "`personnel_advice`")
    private String personnelAdvice;

    @Column(name = "`manager_advice`")
    private String managerAdvice;

    /**
     * @return evection_id
     */
    public Long getEvectionId() {
        return evectionId;
    }

    /**
     * @param evectionId
     */
    public void setEvectionId(Long evectionId) {
        this.evectionId = evectionId;
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