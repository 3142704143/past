package com.mox.entity.system;

import javax.persistence.*;

@Table(name = "`aoa_type_list`")
public class AoaTypeList {
    @Id
    @Column(name = "`type_id`")
    @GeneratedValue(generator = "JDBC")
    private Long typeId;

    @Column(name = "`type_color`")
    private String typeColor;

    @Column(name = "`type_model`")
    private String typeModel;

    @Column(name = "`type_name`")
    private String typeName;

    @Column(name = "`sort_value`")
    private Integer sortValue;

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
     * @return type_color
     */
    public String getTypeColor() {
        return typeColor;
    }

    /**
     * @param typeColor
     */
    public void setTypeColor(String typeColor) {
        this.typeColor = typeColor;
    }

    /**
     * @return type_model
     */
    public String getTypeModel() {
        return typeModel;
    }

    /**
     * @param typeModel
     */
    public void setTypeModel(String typeModel) {
        this.typeModel = typeModel;
    }

    /**
     * @return type_name
     */
    public String getTypeName() {
        return typeName;
    }

    /**
     * @param typeName
     */
    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    /**
     * @return sort_value
     */
    public Integer getSortValue() {
        return sortValue;
    }

    /**
     * @param sortValue
     */
    public void setSortValue(Integer sortValue) {
        this.sortValue = sortValue;
    }

	@Override
	public String toString() {
		return "AoaTypeList [typeId=" + typeId + ", typeColor=" + typeColor + ", typeModel=" + typeModel + ", typeName="
				+ typeName + ", sortValue=" + sortValue + "]";
	}
    
    
}