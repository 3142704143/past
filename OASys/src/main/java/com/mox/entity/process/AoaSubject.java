package com.mox.entity.process;

import javax.persistence.*;

@Table(name = "`aoa_subject`")
public class AoaSubject {
    @Id
    @Column(name = "`subject_id`")
    @GeneratedValue(generator = "JDBC")
    private Long subjectId;

    @Column(name = "`name`")
    private String name;

    @Column(name = "`parent_id`")
    private Long parentId;

    /**
     * @return subject_id
     */
    public Long getSubjectId() {
        return subjectId;
    }

    /**
     * @param subjectId
     */
    public void setSubjectId(Long subjectId) {
        this.subjectId = subjectId;
    }

    /**
     * @return name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return parent_id
     */
    public Long getParentId() {
        return parentId;
    }

    /**
     * @param parentId
     */
    public void setParentId(Long parentId) {
        this.parentId = parentId;
    }
}