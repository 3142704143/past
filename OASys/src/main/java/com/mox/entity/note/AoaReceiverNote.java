package com.mox.entity.note;

import javax.persistence.*;

@Table(name = "`aoa_receiver_note`")
public class AoaReceiverNote {
    @Id
    @Column(name = "`id`")
    private Integer id;

    @Column(name = "`note_id`")
    @GeneratedValue(generator = "JDBC")
    private Long noteId;

    @Column(name = "`user_id`")
    private Long userId;

    /**
     * @return id
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

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