package com.mox.entity.note;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`aoa_note_list`")
public class AoaNoteList {
    @Id
    @Column(name = "`note_id`")
    @GeneratedValue(generator = "JDBC")
    private Long noteId;

    @Column(name = "`content`")
    private String content;

    @Column(name = "`create_time`")
    private Date createTime;

    @Column(name = "`status_id`")
    private Long statusId;

    @Column(name = "`title`")
    private String title;

    @Column(name = "`type_id`")
    private Long typeId;

    @Column(name = "`catalog_id`")
    private Long catalogId;

    @Column(name = "`attach_id`")
    private Long attachId;

    @Column(name = "`is_collected`")
    private Long isCollected;

    @Column(name = "`createman_id`")
    private Long createmanId;

    @Column(name = "`receiver`")
    private String receiver;

    /**
     * @return note_id
     */
    public Long getNoteId() {
        return noteId;
    }

    /**
     * @param noteId
     */
    public void setNoteId(Long noteId) {
        this.noteId = noteId;
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
     * @return status_id
     */
    public Long getStatusId() {
        return statusId;
    }

    /**
     * @param statusId
     */
    public void setStatusId(Long statusId) {
        this.statusId = statusId;
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
     * @return type_id
     */
    public Long getTypeId() {
        return typeId;
    }

    /**
     * @param typeId
     */
    public void setTypeId(Long typeId) {
        this.typeId = typeId;
    }

    /**
     * @return catalog_id
     */
    public Long getCatalogId() {
        return catalogId;
    }

    /**
     * @param catalogId
     */
    public void setCatalogId(Long catalogId) {
        this.catalogId = catalogId;
    }

    /**
     * @return attach_id
     */
    public Long getAttachId() {
        return attachId;
    }

    /**
     * @param attachId
     */
    public void setAttachId(Long attachId) {
        this.attachId = attachId;
    }

    /**
     * @return is_collected
     */
    public Long getIsCollected() {
        return isCollected;
    }

    /**
     * @param isCollected
     */
    public void setIsCollected(Long isCollected) {
        this.isCollected = isCollected;
    }

    /**
     * @return createman_id
     */
    public Long getCreatemanId() {
        return createmanId;
    }

    /**
     * @param createmanId
     */
    public void setCreatemanId(Long createmanId) {
        this.createmanId = createmanId;
    }

    /**
     * @return receiver
     */
    public String getReceiver() {
        return receiver;
    }

    /**
     * @param receiver
     */
    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }
}