package com.cx.truck.model;

import java.math.BigDecimal;

public class Material {
    private Integer id;

    private String name;

    private Integer unitId;

    private Unit unit;

    private BigDecimal purprice;

    private BigDecimal saleprice;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getUnitId() {
        return unitId;
    }

    public void setUnitId(Integer unitId) {
        this.unitId = unitId;
    }

    public Unit getUnit() {
        return unit;
    }

    public void setUnit(Unit unit) {
        this.unit = unit;
    }

    public BigDecimal getPurprice() {
        return purprice;
    }

    public void setPurprice(BigDecimal purprice) {
        this.purprice = purprice;
    }

    public BigDecimal getSaleprice() {
        return saleprice;
    }

    public void setSaleprice(BigDecimal saleprice) {
        this.saleprice = saleprice;
    }

    @Override
    public String toString() {
        return "Material{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", unitId=" + unitId +
                ", purprice=" + purprice +
                ", saleprice=" + saleprice +
                '}';
    }
}