package com.mox.entity.comment;

import javax.persistence.*;

@Table(name = "`aoa_vote_titles`")
public class AoaVoteTitles {
    @Id
    @Column(name = "`title_id`")
    @GeneratedValue(generator = "JDBC")
    private Long titleId;

    @Column(name = "`color`")
    private String color;

    @Column(name = "`title`")
    private String title;

    @Column(name = "`vote_id`")
    private Long voteId;

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

    /**
     * @return color
     */
    public String getColor() {
        return color;
    }

    /**
     * @param color
     */
    public void setColor(String color) {
        this.color = color;
    }

    /**
     * @return title
     */
    public String getTitle() {
        return title;
    }

    /**
     * @param title
     */
    public void setTitle(String title) {
        this.title = title;
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
}