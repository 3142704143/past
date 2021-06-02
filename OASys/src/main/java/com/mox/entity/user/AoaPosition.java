package com.mox.entity.user;

import javax.persistence.*;

@Table(name = "`aoa_position`")
public class AoaPosition {
    @Id
    @Column(name = "`position_id`")
    @GeneratedValue(generator = "JDBC")
    private Long positionId;

    @Column(name = "`level`")
    private Integer level;

    @Column(name = "`name`")
    private String name;

    @Column(name = "`describtion`")
    private String describtion;

    @Column(name = "`deptid`")
    private Long deptid;

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
     * @return level
     */
    public Integer getLevel() {
        return level;
    }

    /**
     * @param level
     */
    public void setLevel(Integer level) {
        this.level = level;
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
     * @return describtion
     */
    public String getDescribtion() {
        return describtion;
    }

    /**
     * @param describtion
     */
    public void setDescribtion(String describtion) {
        this.describtion = describtion;
    }

    /**
     * @return deptid
     */
    public Long getDeptid() {
        return deptid;
    }

    /**
     * @param deptid
     */
    public void setDeptid(Long deptid) {
        this.deptid = deptid;
    }
}