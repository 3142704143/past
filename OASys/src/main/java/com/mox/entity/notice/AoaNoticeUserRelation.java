package com.mox.entity.notice;

import javax.persistence.*;

@Table(name = "`aoa_notice_user_relation`")
public class AoaNoticeUserRelation {
    @Id
    @Column(name = "`relatin_id`")
    @GeneratedValue(generator = "JDBC")
    private Long relatinId;

    @Column(name = "`is_read`")
    private Integer isRead;

    @Column(name = "`relatin_notice_id`")
    private Long relatinNoticeId;

    @Column(name = "`relatin_user_id`")
    private Long relatinUserId;

    /**
     * @return relatin_id
     */
    public Long getRelatinId() {
        return relatinId;
    }

    /**
     * @param relatinId
     */
    public void setRelatinId(Long relatinId) {
        this.relatinId = relatinId;
    }

    /**
     * @return is_read
     */
    public Integer getIsRead() {
        return isRead;
    }

    /**
     * @param isRead
     */
    public void setIsRead(Integer isRead) {
        this.isRead = isRead;
    }

    /**
     * @return relatin_notice_id
     */
    public Long getRelatinNoticeId() {
        return relatinNoticeId;
    }

    /**
     * @param relatinNoticeId
     */
    public void setRelatinNoticeId(Long relatinNoticeId) {
        this.relatinNoticeId = relatinNoticeId;
    }

    /**
     * @return relatin_user_id
     */
    public Long getRelatinUserId() {
        return relatinUserId;
    }

    /**
     * @param relatinUserId
     */
    public void setRelatinUserId(Long relatinUserId) {
        this.relatinUserId = relatinUserId;
    }
}