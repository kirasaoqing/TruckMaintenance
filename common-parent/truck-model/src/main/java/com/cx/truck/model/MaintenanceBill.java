package com.cx.truck.model;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;
import java.util.List;

public class MaintenanceBill {
    private Integer id;

    private Integer truckId;

    //车辆
    private Truck truck;

    @JsonFormat(pattern = "yyyy年MM月dd日", timezone = "GMT+8")
    private Date enterdate;

    @JsonFormat(pattern = "yyyy年MM月dd日", timezone = "GMT+8")
    private Date appointeddate;

    @JsonFormat(pattern = "yyyy年MM月dd日", timezone = "GMT+8")
    private Date settingdate;

    private Double entrymileage;

    private Integer statusId;

    //状态
    private MaintenanceBillStatus maintenanceBillStatus;

    //维修项目
    private List<MaintenanceItem> maintenanceItemList;

    //维修材料
    private List<MaintenanceMaterial> maintenanceMaterialList;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTruckId() {
        return truckId;
    }

    public void setTruckId(Integer truckId) {
        this.truckId = truckId;
    }

    public Date getEnterdate() {
        return enterdate;
    }

    public void setEnterdate(Date enterdate) {
        this.enterdate = enterdate;
    }

    public Date getAppointeddate() {
        return appointeddate;
    }

    public void setAppointeddate(Date appointeddate) {
        this.appointeddate = appointeddate;
    }

    public Date getSettingdate() {
        return settingdate;
    }

    public void setSettingdate(Date settingdate) {
        this.settingdate = settingdate;
    }

    public Double getEntrymileage() {
        return entrymileage;
    }

    public void setEntrymileage(Double entrymileage) {
        this.entrymileage = entrymileage;
    }

    public Integer getStatusId() {
        return statusId;
    }

    public void setStatusId(Integer statusId) {
        this.statusId = statusId;
    }

    public Truck getTruck() {
        return truck;
    }

    public void setTruck(Truck truck) {
        this.truck = truck;
    }

    public MaintenanceBillStatus getMaintenanceBillStatus() {
        return maintenanceBillStatus;
    }

    public void setMaintenanceBillStatus(MaintenanceBillStatus maintenanceBillStatus) {
        this.maintenanceBillStatus = maintenanceBillStatus;
    }

    public List<MaintenanceItem> getMaintenanceItemList() {
        return maintenanceItemList;
    }

    public void setMaintenanceItemList(List<MaintenanceItem> maintenanceItemList) {
        this.maintenanceItemList = maintenanceItemList;
    }

    public List<MaintenanceMaterial> getMaintenanceMaterialList() {
        return maintenanceMaterialList;
    }

    public void setMaintenanceMaterialList(List<MaintenanceMaterial> maintenanceMaterialList) {
        this.maintenanceMaterialList = maintenanceMaterialList;
    }

    public MaintenanceBill() {
    }

    public MaintenanceBill(Integer id, Integer truckId, Truck truck, Date enterdate, Date appointeddate, Date settingdate, Double entrymileage, Integer statusId, MaintenanceBillStatus maintenanceBillStatus) {
        this.id = id;
        this.truckId = truckId;
        this.truck = truck;
        this.enterdate = enterdate;
        this.appointeddate = appointeddate;
        this.settingdate = settingdate;
        this.entrymileage = entrymileage;
        this.statusId = statusId;
        this.maintenanceBillStatus = maintenanceBillStatus;
    }

    @Override
    public String toString() {
        return "MaintenanceBill{" +
                "id=" + id +
                ", truckId=" + truckId +
                ", enterdate=" + enterdate +
                ", appointeddate=" + appointeddate +
                ", settingdate=" + settingdate +
                ", entrymileage=" + entrymileage +
                ", statusId=" + statusId +
                '}';
    }
}