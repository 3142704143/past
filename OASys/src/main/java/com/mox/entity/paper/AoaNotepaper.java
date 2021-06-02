package com.mox.entity.paper;

import java.util.Date;
import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;

@Table(name = "`aoa_notepaper`")
public class AoaNotepaper {
    @Id
    @Column(name = "`notepaper_id`")
    @GeneratedValue(generator = "JDBC")
    private Long notepaperId;

    @Column(name = "`create_time`")
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    @Column(name = "`title`")
    private String title;

    @Column(name = "`notepaper_user_id`")
    private Long notepaperUserId;

    @Column(name = "`concent`")
    private String concent;

    /**
     * @return notepaper_id
     */
    public Long getNotepaperId() {
        return notepaperId;
    }

    /**
     * @param notepaperId
     */
    public void setNotepaperId(Long notepaperId) {
        this.notepaperId = notepaperId;
    }

    /**
     * @return create_time
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * @param createTime
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
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
     * @return notepaper_user_id
     */
    public Long getNotepaperUserId() {
        return notepaperUserId;
    }

    /**
     * @param notepaperUserId
     */
    public void setNotepaperUserId(Long notepaperUserId) {
        this.notepaperUserId = notepaperUserId;
    }

    /**
     * @return concent
     */
    public String getConcent() {
        return concent;
    }

    /**
     * @param concent
     */
    public void setConcent(String concent) {
        this.concent = concent;
    }

	@Override
	public String toString() {
		return "AoaNotepaper [notepaperId=" + notepaperId + ", createTime=" + createTime + ", title=" + title
				+ ", notepaperUserId=" + notepaperUserId + ", concent=" + concent + "]";
	}

    
}