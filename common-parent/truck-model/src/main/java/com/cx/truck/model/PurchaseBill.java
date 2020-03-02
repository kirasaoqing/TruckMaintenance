package com.cx.truck.model;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

public class PurchaseBill {
    private Integer id;

    @JsonFormat(pattern = "yyyy年MM月dd日", timezone = "GMT+8")
    private Date purchasedate;

    private String supplier;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getPurchasedate() {
        return purchasedate;
    }

    public void setPurchasedate(Date purchasedate) {
        this.purchasedate = purchasedate;
    }

    public String getSupplier() {
        return supplier;
    }

    public void setSupplier(String supplier) {
        this.supplier = supplier == null ? null : supplier.trim();
    }

    @Override
    public String toString() {
        return "PurchaseBill{" +
                "id=" + id +
                ", purchasedate=" + purchasedate +
                ", supplier='" + supplier + '\'' +
                '}';
    }
}