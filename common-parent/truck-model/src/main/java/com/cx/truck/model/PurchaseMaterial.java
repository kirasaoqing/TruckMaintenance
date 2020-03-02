package com.cx.truck.model;

public class PurchaseMaterial {
    private Integer id;

    private Integer billId;

    private Integer materialId;

    private Double quantity;

    private Double price;

    private Double amount;

    private PurchaseBill purchaseBill;

    private Material material;

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

    public Integer getMaterialId() {
        return materialId;
    }

    public void setMaterialId(Integer materialId) {
        this.materialId = materialId;
    }

    public Double getQuantity() {
        return quantity;
    }

    public void setQuantity(Double quantity) {
        this.quantity = quantity;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public PurchaseBill getPurchaseBill() {
        return purchaseBill;
    }

    public void setPurchaseBill(PurchaseBill purchaseBill) {
        this.purchaseBill = purchaseBill;
    }

    public Material getMaterial() {
        return material;
    }

    public void setMaterial(Material material) {
        this.material = material;
    }

    @Override
    public String toString() {
        return "PurchaseMaterial{" +
                "id=" + id +
                ", billId=" + billId +
                ", materialId=" + materialId +
                ", quantity=" + quantity +
                ", price=" + price +
                ", amount=" + amount +
                '}';
    }
}