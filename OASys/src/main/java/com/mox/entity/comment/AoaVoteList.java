package com.mox.entity.comment;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`aoa_vote_list`")
public class AoaVoteList {
    @Id
    @Column(name = "`vote_id`")
    @GeneratedValue(generator = "JDBC")
    private Long voteId;

    @Column(name = "`end_time`")
    private Date endTime;

    @Column(name = "`selectone`")
    private Integer selectone;

    @Column(name = "`start_time`")
    private Date startTime;

    /**
     * @return vote_id
     */
    public Long getVoteId() {
        return voteId;
    }

    /**
     * @param voteId
     */
    public void setVoteId(Long voteId) {
        this.voteId = voteId;
    }

    /**
     * @return end_time
     */
    public Date getEndTime() {
        return endTime;
    }

    /**
     * @param endTime
     */
    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    /**
     * @return selectone
     */
    public Integer getSelectone() {
        return selectone;
    }

    /**
     * @param selectone
     */
    public void setSelectone(Integer selectone) {
        this.selectone = selectone;
    }

    /**
     * @return start_time
     */
    public Date getStartTime() {
        return startTime;
    }

    /**
     * @param startTime
     */
    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }
}