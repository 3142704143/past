package com.mox.entity.comment;

import javax.persistence.*;

@Table(name = "`aoa_vote_title_user`")
public class AoaVoteTitleUser {
    @Id
    @Column(name = "`vote_title_user_id`")
    @GeneratedValue(generator = "JDBC")
    private Long voteTitleUserId;

    @Column(name = "`vote_id`")
    private Long voteId;

    @Column(name = "`user_id`")
    private Long userId;

    @Column(name = "`title_id`")
    private Long titleId;

    /**
     * @return vote_title_user_id
     */
    public Long getVoteTitleUserId() {
        return voteTitleUserId;
    }

    /**
     * @param voteTitleUserId
     */
    public void setVoteTitleUserId(Long voteTitleUserId) {
        this.voteTitleUserId = voteTitleUserId;
    }

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

    /**
     * @return title_id
     */
    public Long getTitleId() {
        return titleId;
    }

    /**
     * @param titleId
     */
    public void setTitleId(Long titleId) {
        this.titleId = titleId;
    }
}