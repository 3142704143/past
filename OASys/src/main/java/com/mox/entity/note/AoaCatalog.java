package com.mox.entity.note;

import javax.persistence.*;

@Table(name = "`aoa_catalog`")
public class AoaCatalog {
    @Id
    @Column(name = "`catalog_id`")
    @GeneratedValue(generator = "JDBC")
    private Long catalogId;

    @Column(name = "`catalog_name`")
    private String catalogName;

    @Column(name = "`parent_id`")
    private Integer parentId;

    @Column(name = "`cata_user_id`")
    private Long cataUserId;

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
     * @return catalog_name
     */
    public String getCatalogName() {
        return catalogName;
    }

    /**
     * @param catalogName
     */
    public void setCatalogName(String catalogName) {
        this.catalogName = catalogName;
    }

    /**
     * @return parent_id
     */
    public Integer getParentId() {
        return parentId;
    }

    /**
     * @param parentId
     */
    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    /**
     * @return cata_user_id
     */
    public Long getCataUserId() {
        return cataUserId;
    }

    /**
     * @param cataUserId
     */
    public void setCataUserId(Long cataUserId) {
        this.cataUserId = cataUserId;
    }
}