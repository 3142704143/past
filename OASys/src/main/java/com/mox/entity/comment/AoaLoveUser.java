package com.mox.entity.comment;

import javax.persistence.*;

@Table(name = "`aoa_love_user`")
public class AoaLoveUser {
    @Column(name = "`reply_id`")
    @GeneratedValue(generator = "JDBC")
    private Long replyId;

    @Column(name = "`user_id`")
    private Long userId;

    /**
     * @return reply_id
     */
    public Long getReplyId() {
        return replyId;
    }

    /**
     * @param replyId
     */
    public void setReplyId(Long replyId) {
        this.replyId = replyId;
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