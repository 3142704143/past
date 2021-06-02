package com.mox.entity.comment;

import javax.persistence.*;

@Table(name = "`aoa_love_discuss_user`")
public class AoaLoveDiscussUser {
    @Id
    @Column(name = "`discuss_id`")
    @GeneratedValue(generator = "JDBC")
    private Long discussId;

    @Id
    @Column(name = "`user_id`")
    private Long userId;

    /**
     * @return discuss_id
     */
    public Long getDiscussId() {
        return discussId;
    }

    /**
     * @param discussId
     */
    public void setDiscussId(Long discussId) {
        this.discussId = discussId;
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