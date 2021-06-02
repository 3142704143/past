package com.mox.entity.schedule;

import javax.persistence.*;

@Table(name = "`aoa_schedule_user`")
public class AoaScheduleUser {
    @Column(name = "`rcid`")
    @GeneratedValue(generator = "JDBC")
    private Long rcid;

    @Column(name = "`user_id`")
    private Long userId;

    /**
     * @return rcid
     */
    public Long getRcid() {
        return rcid;
    }

    /**
     * @param rcid
     */
    public void setRcid(Long rcid) {
        this.rcid = rcid;
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
}