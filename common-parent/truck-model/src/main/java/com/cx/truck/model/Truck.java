package com.cx.truck.model;

import javax.validation.constraints.Pattern;

public class Truck {
    private Integer id;

    @Pattern(regexp = "(^[京津沪渝冀豫云辽黑湘皖鲁新苏浙赣鄂桂甘晋蒙陕吉闽贵粤青藏川宁琼使领A-Z]{1}[A-Z]{1}[A-Z0-9]{4}[A-Z0-9挂学警港澳]{1}$)",
            message = "车牌号格式不正确")
    private String platenumber;

    private String brandId;

    private Integer vehicletypeId;

    private Integer customerId;

    //查询车辆时客户、车型和品牌信息也是查询好的
    private VehicleType vehicleType;
    private Customer customer;
    private Brand brand;

    public Truck() {
    }

    public Truck(Integer id, String platenumber, String brandId, Integer vehicletypeId, Integer customerId) {
        this.id = id;
        this.platenumber = platenumber;
        this.brandId = brandId;
        this.vehicletypeId = vehicletypeId;
        this.customerId = customerId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPlatenumber() {
        return platenumber;
    }

    public void setPlatenumber(String platenumber) {
        this.platenumber = platenumber == null ? null : platenumber.trim();
    }

    public String getBrandId() {
        return brandId;
    }

    public void setBrandId(String brandId) {
        this.brandId = brandId;
    }

    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
    }

    public Integer getVehicletypeId() {
        return vehicletypeId;
    }

    public void setVehicletypeId(Integer vehicletypeId) {
        this.vehicletypeId = vehicletypeId;
    }

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    public VehicleType getVehicleType() {
        return vehicleType;
    }

    public void setVehicleType(VehicleType vehicleType) {
        this.vehicleType = vehicleType;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    @Override
    public String toString() {
        return "Truck{" +
                "id=" + id +
                ", platenumber='" + platenumber + '\'' +
                ", brandId='" + brandId + '\'' +
                ", vehicletypeId=" + vehicletypeId +
                ", customerId=" + customerId +
                '}';
    }
}