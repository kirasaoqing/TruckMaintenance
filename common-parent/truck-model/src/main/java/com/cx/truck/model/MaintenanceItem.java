package com.cx.truck.model;

public class MaintenanceItem {
    private Integer id;

    private Integer billId;

    private String item;

    private Double itemfees;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getBillId() {
        return billId;
    }

    public void setBillId(Integer billId) {
        this.billId = billId;
    }

    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item == null ? null : item.trim();
    }

    public Double getItemfees() {
        return itemfees;
    }

    public void setItemfees(Double itemfees) {
        this.itemfees = itemfees;
    }

    @Override
    public String toString() {
        return "MaintenanceItem{" +
                "id=" + id +
                ", billId=" + billId +
                ", item='" + item + '\'' +
                ", itemfees=" + itemfees +
                '}';
    }
}