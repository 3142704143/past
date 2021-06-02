package com.mox.entity.process;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`aoa_detailsburse`")
public class AoaDetailsburse {
    @Id
    @Column(name = "`detailsburse_id`")
    @GeneratedValue(generator = "JDBC")
    private Long detailsburseId;

    @Column(name = "`descript`")
    private String descript;

    @Column(name = "`detailmoney`")
    private Double detailmoney;

    @Column(name = "`invoices`")
    private Integer invoices;

    @Column(name = "`produce_time`")
    private Date produceTime;

    @Column(name = "`subject`")
    private String subject;

    @Column(name = "`bursment_id`")
    private Long bursmentId;

    /**
     * @return detailsburse_id
     */
    public Long getDetailsburseId() {
        return detailsburseId;
    }

    /**
     * @param detailsburseId
     */
    public void setDetailsburseId(Long detailsburseId) {
        this.detailsburseId = detailsburseId;
    }

    /**
     * @return descript
     */
    public String getDescript() {
        return descript;
    }

    /**
     * @param descript
     */
    public void setDescript(String descript) {
        this.descript = descript;
    }

    /**
     * @return detailmoney
     */
    public Double getDetailmoney() {
        return detailmoney;
    }

    /**
     * @param detailmoney
     */
    public void setDetailmoney(Double detailmoney) {
        this.detailmoney = detailmoney;
    }

    /**
     * @return invoices
     */
    public Integer getInvoices() {
        return invoices;
    }

    /**
     * @param invoices
     */
    public void setInvoices(Integer invoices) {
        this.invoices = invoices;
    }

    /**
     * @return produce_time
     */
    public Date getProduceTime() {
        return produceTime;
    }

    /**
     * @param produceTime
     */
    public void setProduceTime(Date produceTime) {
        this.produceTime = produceTime;
    }

    /**
     * @return subject
     */
    public String getSubject() {
        return subject;
    }

    /**
     * @param subject
     */
    public void setSubject(String subject) {
        this.subject = subject;
    }

    /**
     * @return bursment_id
     */
    public Long getBursmentId() {
        return bursmentId;
    }

    /**
     * @param bursmentId
     */
    public void setBursmentId(Long bursmentId) {
        this.bursmentId = bursmentId;
    }
}