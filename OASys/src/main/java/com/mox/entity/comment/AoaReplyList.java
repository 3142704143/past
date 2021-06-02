package com.mox.entity.comment;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`aoa_reply_list`")
public class AoaReplyList {
    @Id
    @Column(name = "`reply_id`")
    @GeneratedValue(generator = "JDBC")
    private Long replyId;

    @Column(name = "`replay_time`")
    private Date replayTime;

    @Column(name = "`discuss_id`")
    private Long discussId;

    @Column(name = "`reply_user_id`")
    private Long replyUserId;

    @Column(name = "`content`")
    private String content;

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
     * @return replay_time
     */
    public Date getReplayTime() {
        return replayTime;
    }

    /**
     * @param replayTime
     */
    public void setReplayTime(Date replayTime) {
        this.replayTime = replayTime;
    }

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
     * @return reply_user_id
     */
    public Long getReplyUserId() {
        return replyUserId;
    }

    /**
     * @param replyUserId
     */
    public void setReplyUserId(Long replyUserId) {
        this.replyUserId = replyUserId;
    }

    /**
     * @return content
     */
    public String getContent() {
        return content;
    }

    /**
     * @param content
     */
    public void setContent(String content) {
        this.content = content;
    }
}