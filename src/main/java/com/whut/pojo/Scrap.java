package com.whut.pojo;

import java.math.BigDecimal;
import java.util.Date;

public class Scrap {
    private Integer id;

    private Date date;

    private String name;

    private BigDecimal price;

    private String responsible;

    private String status;

    private Integer equid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getResponsible() {
        return responsible;
    }

    public void setResponsible(String responsible) {
        this.responsible = responsible == null ? null : responsible.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public Integer getEquid() {
        return equid;
    }

    public void setEquid(Integer equid) {
        this.equid = equid;
    }
}